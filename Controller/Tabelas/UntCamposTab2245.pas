unit UntCamposTab2245 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2245 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2245 }

constructor TCamposTab2245.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2245.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2245.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtTreiCap', 'Evento Treinamentos, Capacitações, Exercícios Simulados e Outras Anotações');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideVinculo', 'Informações de Identificação do Trabalhador e do Vínculo');
   AddCampo(ACampos, retornoErros, 'treiCap', 'Treinamentos, capacitações e exercícios simulados');
   AddCampo(ACampos, retornoErros, 'infoComplem', 'Informações complementares');
   AddCampo(ACampos, retornoErros, 'ideProfResp', 'Informações relativas ao profissional responsável');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'codTreiCap', 'código do treinamento/capacitação/exercício simulado');
   AddCampo(ACampos, retornoErros, 'obsTreiCap', 'Observação referente ao treinamento/capacitação/exercício simulado');
   AddCampo(ACampos, retornoErros, 'dtTreiCap', 'data de início do treinamento/capacitação/autorização/exercício simulado ou a data de início da obrigatoriedade deste evento para o empregador no eSocial, a que for mais recente');
   AddCampo(ACampos, retornoErros, 'durTreiCap', 'duração do treinamento/capacitação/exercício simulado, em horas');
   AddCampo(ACampos, retornoErros, 'modTreiCap', 'Modalidade do treinamento/capacitação/exercício simulado');
   AddCampo(ACampos, retornoErros, 'tpTreiCap', 'Tipo de treinamento/capacitação/exercício simulado');
   AddCampo(ACampos, retornoErros, 'indTreinAnt', 'Indicar se o treinamento ocorreu em data anterior à admissão');
   AddCampo(ACampos, retornoErros, 'cpfProf', 'CPF do profissional responsável pelo treinamento/capacitação/exercício simulado');
   AddCampo(ACampos, retornoErros, 'nmProf', 'Nome do profissional responsável pelo treinamento/capacitação/exercício simulado');
   AddCampo(ACampos, retornoErros, 'tpProf', 'O treinamento/capacitação/exercício simulado foi ministrado');
   AddCampo(ACampos, retornoErros, 'formProf', 'Formação do profissional responsável pelo treinamento/capacitação/exercício simulado (seja acadêmica, prática ou outra forma)');
   AddCampo(ACampos, retornoErros, 'codCBO', 'Classificação Brasileira de Ocupação - CBO referente à formação do profissional responsável pelo treinamento/capacitação/exercício simulado');
   AddCampo(ACampos, retornoErros, 'nacProf', 'nacionalidade do profissional responsável pelo treinamento/capacitação/exercício simulado');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.