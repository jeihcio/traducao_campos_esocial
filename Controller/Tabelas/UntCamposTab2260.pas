unit UntCamposTab2260 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2260 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2260 }

constructor TCamposTab2260.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2260.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2260.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtConvInterm', 'Evento Convocação para Trabalho Intermitente');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideVinculo', 'Informações de Identificação do Trabalhador e do Vínculo');
   AddCampo(ACampos, retornoErros, 'infoConvInterm', 'Informações da convocação para trabalho intermitente');
   AddCampo(ACampos, retornoErros, 'jornada', 'Informações da(s) jornada(s) diária(s) da prestação de trabalho intermitente');
   AddCampo(ACampos, retornoErros, 'localTrab', 'Informações do local da prestação de trabalho intermitente');
   AddCampo(ACampos, retornoErros, 'localTrabInterm', 'Informações do local de trabalho intermitente');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'codConv', 'código atribuído pela empresa que identifica a convocação para trabalho intermitente');
   AddCampo(ACampos, retornoErros, 'dtInicio', 'data de início da prestação de trabalho intermitente');
   AddCampo(ACampos, retornoErros, 'dtFim', 'data de término da prestação de trabalho intermitente');
   AddCampo(ACampos, retornoErros, 'dtPrevPgto', 'data prevista para o pagamento da remuneração');
   AddCampo(ACampos, retornoErros, 'codHorContrat', 'código atribuído pela empresa para o horário da prestação de trabalho intermitente');
   AddCampo(ACampos, retornoErros, 'dscJornada', 'Descrição das jornadas e dos dias da prestação de trabalho intermitente, caso a jornada diária seja variável durante o período da convocação ou haja prestação de serviços em dias alternados');
   AddCampo(ACampos, retornoErros, 'indLocal', 'Indicativo do local da prestação de trabalho intermitente');
   AddCampo(ACampos, retornoErros, 'tpLograd', 'Tipo de Logradouro');
   AddCampo(ACampos, retornoErros, 'dscLograd', 'Descrição do logradouro');
   AddCampo(ACampos, retornoErros, 'nrLograd', 'Número do logradouro');
   AddCampo(ACampos, retornoErros, 'complem', 'Complemento do logradouro');
   AddCampo(ACampos, retornoErros, 'bairro', 'Nome do bairro/distrito');
   AddCampo(ACampos, retornoErros, 'cep', 'Código de Endereçamento Postal - CEP');
   AddCampo(ACampos, retornoErros, 'codMunic', 'código do município');
   AddCampo(ACampos, retornoErros, 'uf', 'sigla da Unidade da Federação');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.