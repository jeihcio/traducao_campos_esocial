unit UntCamposTab1299 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1299 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1299 }

constructor TCamposTab1299.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1299.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1299.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtFechaEvPer', 'Evento de Fechamento');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideRespInf', 'Responsável pelas informações');
   AddCampo(ACampos, retornoErros, 'infoFech', 'Informações do Fechamento');
   AddCampo(ACampos, retornoErros, 'indApuracao', 'Indicativo de período de apuração');
   AddCampo(ACampos, retornoErros, 'perApur', 'Informar o mês/ano (formato AAAA-MM) de referência das informações');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'nmResp', 'Nome do responsável pelas informações');
   AddCampo(ACampos, retornoErros, 'cpfResp', 'Preencher com o CPF do responsável');
   AddCampo(ACampos, retornoErros, 'telefone', 'número do telefone, com DDD');
   AddCampo(ACampos, retornoErros, 'email', 'Endereço eletrônico');
   AddCampo(ACampos, retornoErros, 'evtRemun', 'informações relativas remuneração de trabalhadores no período de apuração');
   AddCampo(ACampos, retornoErros, 'evtPgtos', 'informações de pagamento de rendimentos do trabalho no período de apuração');
   AddCampo(ACampos, retornoErros, 'evtAqProd', 'informações sobre a aquisição de produto rural de pessoas físicas');
   AddCampo(ACampos, retornoErros, 'evtComProd', 'informações de comercialização de produção');
   AddCampo(ACampos, retornoErros, 'evtContratAvNP', 'Contratou, por intermédio de sindicato, serviços de trabalhadores avulsos não portuários?');
   AddCampo(ACampos, retornoErros, 'evtInfoComplPer', 'informações de desoneração de folha de pagamento ou, sendo empresa enquadrada no Simples');
   AddCampo(ACampos, retornoErros, 'compSemMovto', 'primeira competência a partir da qual não houve movimento, cuja situação perdura até a competência atual');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.