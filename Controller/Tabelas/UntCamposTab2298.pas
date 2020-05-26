unit UntCamposTab2298 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2298 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2298 }

constructor TCamposTab2298.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2298.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2298.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtReintegr', 'Evento Reintegração');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de Identificação do Evento');
   AddCampo(ACampos, retornoErros, 'ideVinculo', 'Informações de Identificação do Trabalhador e do Vínculo');
   AddCampo(ACampos, retornoErros, 'infoReintegr', 'Reintegração');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'tpReint', 'Tipo de Reintegração');
   AddCampo(ACampos, retornoErros, 'nrProcJud', 'Em caso de reintegração por determinação judicial, preencher com o número do processo');
   AddCampo(ACampos, retornoErros, 'nrLeiAnistia', 'Informar a Lei de Anistia, descrevendo seu número e ano de publicação');
   AddCampo(ACampos, retornoErros, 'dtEfetRetorno', 'Informar a data do efetivo retorno ao trabalho');
   AddCampo(ACampos, retornoErros, 'dtEfeito', 'Data de início dos efeitos financeiros da reintegração');
   AddCampo(ACampos, retornoErros, 'indPagtoJuizo', 'Indicar se as remunerações e correspondentes contribuições do período compreendido entre o desligamento e a reintegração foram pagas em juízo');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.