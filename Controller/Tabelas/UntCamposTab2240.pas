unit UntCamposTab2240 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2240 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2240 }

constructor TCamposTab2240.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2240.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2240.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtExpRisco', 'Evento Condições Ambientais do Trabalho - Fatores de Risco');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideVinculo', 'Informações de Identificação do Trabalhador e do Vínculo');
   AddCampo(ACampos, retornoErros, 'infoExpRisco', 'Ambiente de trabalho, atividades desempenhadas e exposição a fatores de risco');
   AddCampo(ACampos, retornoErros, 'infoAmb', 'Informações relativas ao ambiente de trabalho');
   AddCampo(ACampos, retornoErros, 'infoAtiv', 'Descrição das atividades desempenhadas');
   AddCampo(ACampos, retornoErros, 'ativPericInsal', 'Informação da(s) atividade(s) perigosa(s), insalubre(s) ou especial(is) desempenhada(s)');
   AddCampo(ACampos, retornoErros, 'fatRisco', 'Fator(es) de risco ao(s) qual(is) o trabalhador está exposto');
   AddCampo(ACampos, retornoErros, 'epcEpi', 'EPC e EPI');
   AddCampo(ACampos, retornoErros, 'epi', 'EPI');
   AddCampo(ACampos, retornoErros, 'respReg', 'Responsável pelos registros ambientais');
   AddCampo(ACampos, retornoErros, 'obs', 'Observações relativas a registros ambientais');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'dtIniCondicao', 'data em que o trabalhador iniciou as atividades nas condições descritas ou a data de início da obrigatoriedade deste evento para o empregador no eSocial, a que for mais recente');
   AddCampo(ACampos, retornoErros, 'codAmb', 'código do ambiente de trabalho constante da Tabela S-1060 no qual o trabalhador está desempenhando as atividades');
   AddCampo(ACampos, retornoErros, 'dscAtivDes', 'Descrição das atividades, físicas ou mentais, realizadas pelo trabalhador, por força do poder de comando a que se submete.');
   AddCampo(ACampos, retornoErros, 'codAtiv', 'Identificar a atividade desempenhada dentre as descritas na Tabela 28');
   AddCampo(ACampos, retornoErros, 'codFatRis', 'Informar o código do fator de risco ao qual o trabalhador está exposto');
   AddCampo(ACampos, retornoErros, 'dscFatRisc', 'Descrição do fator de risco');
   AddCampo(ACampos, retornoErros, 'tpAval', 'Tipo de avaliação do fator de risco');
   AddCampo(ACampos, retornoErros, 'intConc', 'Intensidade, concentração ou dose da exposição do trabalhador ao fator de risco cujo critério de avaliação seja quantitativo');
   AddCampo(ACampos, retornoErros, 'limTol', 'Limite de tolerância calculado para agentes específicos, conforme técnica de medição exigida na legislação');
   AddCampo(ACampos, retornoErros, 'unMed', 'Dose ou unidade de medida da intensidade ou concentração do agente');
   AddCampo(ACampos, retornoErros, 'tecMedicao', 'Técnica utilizada para medição da intensidade ou concentração');
   AddCampo(ACampos, retornoErros, 'insalubridade', 'A exposição ao fator de risco/execução da atividade configura trabalho insalubre?');
   AddCampo(ACampos, retornoErros, 'periculosidade', 'A exposição ao fator de risco/execução da atividade configura trabalho perigoso?');
   AddCampo(ACampos, retornoErros, 'aposentEsp', 'A exposição ao fator de risco/execução da atividade enseja recolhimento do adicional para o financiamento da aposentadoria especial?');
   AddCampo(ACampos, retornoErros, 'utilizEPC', 'O empregador implementa medidas de proteção coletiva (EPC) para eliminar ou reduzir a exposição dos trabalhadores ao fator de risco?');
   AddCampo(ACampos, retornoErros, 'eficEpc', 'Os EPCs são eficazes na neutralização dos riscos ao trabalhador?');
   AddCampo(ACampos, retornoErros, 'utilizEPI', 'Utilização de EPI');
   AddCampo(ACampos, retornoErros, 'caEPI', 'Certificado de Aprovação do EPI');
   AddCampo(ACampos, retornoErros, 'dscEPI', 'Descrição do EPI');
   AddCampo(ACampos, retornoErros, 'eficEpi', 'O EPI é eficaz na neutralização do risco ao trabalhador?');
   AddCampo(ACampos, retornoErros, 'medProtecao', 'implementação de medidas de proteção coletiva');
   AddCampo(ACampos, retornoErros, 'condFuncto', 'condições de funcionamento do EPI ao longo do tempo');
   AddCampo(ACampos, retornoErros, 'usoInint', 'Foi observado o uso ininterrupto do EPI ao longo do tempo, conforme especificação técnica do fabricante nacional ou importador, ajustadas às condições de campo?');
   AddCampo(ACampos, retornoErros, 'przValid', 'Foi observado o prazo de validade do Certificado de Aprovação - CA do MTb no momento da compra do EPI?');
   AddCampo(ACampos, retornoErros, 'periodicTroca', 'É observada a periodicidade de troca definida pelo fabricante nacional ou importador e/ou programas ambientais?');
   AddCampo(ACampos, retornoErros, 'higienizacao', 'É observada a higienização conforme orientação do fabricante nacional ou importador?');
   AddCampo(ACampos, retornoErros, 'cpfResp', 'CPF do responsável pelos registros ambientais');
   AddCampo(ACampos, retornoErros, 'nisResp', 'Número de Identificação Social - NIS do responsável pelos registros ambientais, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'nmResp', 'nome do responsável pelos registros ambientais');
   AddCampo(ACampos, retornoErros, 'ideOC', 'Órgão de classe ao qual o responsável pelos registros ambientais está vinculado');
   AddCampo(ACampos, retornoErros, 'dscOC', 'Descrição (sigla) do órgão de classe ao qual o responsável pelos registros ambientais está vinculado');
   AddCampo(ACampos, retornoErros, 'nrOC', 'Número de Inscrição no órgão de classe');
   AddCampo(ACampos, retornoErros, 'ufOC', 'Sigla da UF do órgão de classe');
   AddCampo(ACampos, retornoErros, 'metErg', 'Descrição da metodologia utilizada para o levantamento dos riscos ergonômicos');
   AddCampo(ACampos, retornoErros, 'obsCompl', 'Observação(ões) complementar(es) referente(s) a registros ambientais');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.