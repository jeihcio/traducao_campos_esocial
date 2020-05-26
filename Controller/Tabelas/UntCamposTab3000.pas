unit UntCamposTab3000 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab3000 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab3000 }

constructor TCamposTab3000.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab3000.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab3000.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtExclusao', 'Evento de exclusão');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'infoExclusao', 'Informação do evento que será excluído');
   AddCampo(ACampos, retornoErros, 'ideTrabalhador', 'Registro que identifica a qual trabalhador refere-se o evento a ser excluído');
   AddCampo(ACampos, retornoErros, 'ideFolhaPagto', 'Registro que identifica a qual folha de pagamento pertence o evento que será excluído');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'tpEvento', 'tipo de evento');
   AddCampo(ACampos, retornoErros, 'nrRecEvt', 'número do recibo do evento que será excluído');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'indApuracao', 'Indicativo de período de apuração');
   AddCampo(ACampos, retornoErros, 'perApur', 'Informar o mês/ano (formato AAAA-MM) de referência das informações');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.