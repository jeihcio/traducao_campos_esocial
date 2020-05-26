unit UntCamposTab2220 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2220 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2220 }

constructor TCamposTab2220.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2220.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2220.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtMonit', 'Evento Monitoramento da Saúde do Trabalhador');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideVinculo', 'Informações de Identificação do Trabalhador e do Vínculo');
   AddCampo(ACampos, retornoErros, 'exMedOcup', 'Informações do exame médico ocupacional');
   AddCampo(ACampos, retornoErros, 'aso', 'Atestado de Saúde Ocupacional (ASO)');
   AddCampo(ACampos, retornoErros, 'exame', 'Avaliações clínicas e exames complementares realizados');
   AddCampo(ACampos, retornoErros, 'medico', 'Informações sobre o médico emitente do ASO');
   AddCampo(ACampos, retornoErros, 'respMonit', 'Informações sobre o médico');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'tpExameOcup', 'Tipo do exame médico ocupacional');
   AddCampo(ACampos, retornoErros, 'dtAso', 'Data de emissão do ASO');
   AddCampo(ACampos, retornoErros, 'resAso', 'Resultado do ASO');
   AddCampo(ACampos, retornoErros, 'dtExm', 'Data do exame realizado');
   AddCampo(ACampos, retornoErros, 'procRealizado', 'Código do procedimento diagnóstico');
   AddCampo(ACampos, retornoErros, 'obsProc', 'Observação sobre o procedimento diagnóstico realizado');
   AddCampo(ACampos, retornoErros, 'ordExame', 'Ordem do Exame');
   AddCampo(ACampos, retornoErros, 'indResult', 'Indicação dos Resultados');
   AddCampo(ACampos, retornoErros, 'cpfMed', 'CPF do médico emitente do ASO');
   AddCampo(ACampos, retornoErros, 'nisMed', 'Número de Identificação Social - NIS do médico emitente do ASO, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'nmMed', 'nome do médico emitente do ASO');
   AddCampo(ACampos, retornoErros, 'nrCRM', 'Número de inscrição do médico emitente do ASO no Conselho Regional de Medicina (CRM)');
   AddCampo(ACampos, retornoErros, 'ufCRM', 'sigla da UF de expedição do CRM');
   AddCampo(ACampos, retornoErros, 'cpfResp', 'CPF do médico responsável/coordenador do PCMSO');
   AddCampo(ACampos, retornoErros, 'nmResp', 'nome do médico responsável/coordenador do PCMSO');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.