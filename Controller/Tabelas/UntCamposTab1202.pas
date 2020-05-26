unit UntCamposTab1202 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1202 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1202 }

constructor TCamposTab1202.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1202.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1202.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'indApuracao', 'Indicativo de período de apuração');
   AddCampo(ACampos, retornoErros, 'perApur', 'mês/ano (formato AAAA-MM) de referência das informações');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'CNPJ apenas com a Raiz/Base de oito posições');
   AddCampo(ACampos, retornoErros, 'ideTrabalhador', 'Registro que apresenta a identificação básica do trabalhador ao qual se refere o evento de remuneração');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'qtdDepFP', 'quantidade de dependentes do trabalhador para fins do Regime Próprio de Previdência Social');
   AddCampo(ACampos, retornoErros, 'procJudTrab', 'existência de processos judiciais do trabalhador');
   AddCampo(ACampos, retornoErros, 'tpTrib', 'Abrangência da decisão');
   AddCampo(ACampos, retornoErros, 'nrProcJud', 'número de processo judicial cadastrado através do evento S1070');
   AddCampo(ACampos, retornoErros, 'codSusp', 'Código do Indicativo da Suspensão, atribuído pelo empregador em S-1070');
   AddCampo(ACampos, retornoErros, 'dmDev', 'demonstrativos de valores devidos ao trabalhador antes das retenções de pensão alimentícia e IRRF');
   AddCampo(ACampos, retornoErros, 'ideDmDev', 'atribuído pelo órgão público para o demonstrativo de pagamento');
   AddCampo(ACampos, retornoErros, 'infoPerApur', 'Informações relativas ao período de apuração');
   AddCampo(ACampos, retornoErros, 'remunPerApur', 'remuneração do trabalhador no período de apuração');
   AddCampo(ACampos, retornoErros, 'infoSaudeColet', 'Informações de plano privado coletivo empresarial de assistência à saúde');
   AddCampo(ACampos, retornoErros, 'detOper', 'Detalhamento dos valores pagos a Operadoras de Planos de Saúde');
   AddCampo(ACampos, retornoErros, 'cnpjOper', 'CNPJ de Operadora do Plano de Saúde');
   AddCampo(ACampos, retornoErros, 'regANS', 'Registro da operadora na Agência Nacional de Saúde');
   AddCampo(ACampos, retornoErros, 'vrPgTit', 'Valor pago pelo Titular');
   AddCampo(ACampos, retornoErros, 'detPlano', 'Informações do dependente do plano privado de saúde');
   AddCampo(ACampos, retornoErros, 'tpDep', 'Tipo de dependente');
   AddCampo(ACampos, retornoErros, 'cpfDep', 'Número de Inscrição no CPF');
   AddCampo(ACampos, retornoErros, 'nmDep', 'Nome do dependente');
   AddCampo(ACampos, retornoErros, 'dtNascto', 'data de nascimento');
   AddCampo(ACampos, retornoErros, 'vlrPgDep', 'Valor pago relativo ao plano de saúde do dependente');
   AddCampo(ACampos, retornoErros, 'infoPerAnt', 'Remuneração relativa a Períodos Anteriores');
   AddCampo(ACampos, retornoErros, 'ideADC', 'Identificação da lei que determinou reajuste retroativo');
   AddCampo(ACampos, retornoErros, 'dtLei', 'Data da Lei');
   AddCampo(ACampos, retornoErros, 'nrLei', 'Número da Lei');
   AddCampo(ACampos, retornoErros, 'dtEf', 'Data a partir da qual a lei passa a produzir seus efeitos');
   AddCampo(ACampos, retornoErros, 'idePeriodo', 'Identificação do período de referência da remuneração');
   AddCampo(ACampos, retornoErros, 'perRef', 'Informar o período ao qual se refere o complemento de remuneração no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'ideEstab', 'Registro que identifica a unidade do órgão público');
   AddCampo(ACampos, retornoErros, 'remunPerAnt', 'Remuneração do Trabalhador');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'itensRemun', 'Itens da Remuneração do Trabalhador');
   AddCampo(ACampos, retornoErros, 'codRubr', 'código atribuído pelo empregador e que identifica a rubrica em sua folha de pagamento');
   AddCampo(ACampos, retornoErros, 'ideTabRubr', 'identificador da tabela de rubricas, conforme informado em S-1010 para a rubrica definida em {codRubr}');
   AddCampo(ACampos, retornoErros, 'qtdRubr', 'quantidade de referência para apuração (em horas, cotas, meses, percentual, etc.)');
   AddCampo(ACampos, retornoErros, 'fatorRubr', 'fator, percentual, etc, da rubrica, quando necessário');
   AddCampo(ACampos, retornoErros, 'vrRubr', 'Valor total da rubrica');
   AddCampo(ACampos, retornoErros, 'vrUnit', 'valor unitário da rubrica');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.