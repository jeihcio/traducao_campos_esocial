unit UntCamposTab2250 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2250 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2250 }

constructor TCamposTab2250.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2250.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2250.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtAvPrevio', 'Evento Aviso Prévio');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideVinculo', 'Informações de Identificação do Trabalhador e do Vínculo');
   AddCampo(ACampos, retornoErros, 'infoAvPrevio', 'Informações do Aviso Prévio');
   AddCampo(ACampos, retornoErros, 'detAvPrevio', 'Aviso Prévio');
   AddCampo(ACampos, retornoErros, 'cancAvPrevio', 'Cancelamento do Aviso Prévio');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'dtAvPrv', 'Data em que o trabalhador ou o empregador recebeu o aviso de desligamento');
   AddCampo(ACampos, retornoErros, 'dtPrevDeslig', 'Data prevista para o desligamento do trabalhador');
   AddCampo(ACampos, retornoErros, 'tpAvPrevio', 'Tipo de Aviso Prévio');
   AddCampo(ACampos, retornoErros, 'dtCancAvPrv', 'data do cancelamento do aviso prévio');
   AddCampo(ACampos, retornoErros, 'observacao', 'Observações');
   AddCampo(ACampos, retornoErros, 'mtvCancAvPrevio', 'Motivo do Cancelamento do Aviso Prévio');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.