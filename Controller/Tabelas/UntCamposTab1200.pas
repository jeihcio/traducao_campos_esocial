unit UntCamposTab1200 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1200 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1200 }

constructor TCamposTab1200.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1200.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1200.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'indApuracao', 'período de apuração');
   AddCampo(ACampos, retornoErros, 'perApur', 'mês/ano (formato AAAA-MM) de referência das informações');
   AddCampo(ACampos, retornoErros, 'tpAmb', 'Identificação do ambiente');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'identificação do empregador');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'ideTrabalhador', 'Registro que apresenta a identificação básica do trabalhador ao qual se refere o evento de remuneração');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS');
   AddCampo(ACampos, retornoErros, 'infoMV', 'Registro preenchido exclusivamente em caso de trabalhador que possua outros vínculos/atividades nos quais já tenha ocorrido desconto de contribuição previdenciária');
   AddCampo(ACampos, retornoErros, 'indMV', 'Indicador de desconto da contribuição previdenciária do trabalhador');
   AddCampo(ACampos, retornoErros, 'remunOutrEmpr', 'Informações relativas ao trabalhador que possui vínculo empregatício com outra(s) empresa(s) e/ou que exerce outras atividades como contribuinte individual');
   AddCampo(ACampos, retornoErros, 'vlrRemunOE', 'valor da remuneração recebida pelo trabalhador na outra empresa/atividade');
   AddCampo(ACampos, retornoErros, 'infoComplem', 'Registro preenchido exclusivamente quando o evento de remuneração referirse a trabalhador cuja categoria não está sujeita ao evento de admissão ou ao evento de início de "trabalhador sem vínculo"');
   AddCampo(ACampos, retornoErros, 'nmTrab', 'Nome do Trabalhador');
   AddCampo(ACampos, retornoErros, 'sucessaoVinc', 'Grupo de informações da sucessão de vínculo trabalhista/estatutário');
   AddCampo(ACampos, retornoErros, 'tpInscAnt', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'cnpjEmpregAnt', 'número de inscrição do empregador anterior, de acordo com o tipo de inscrição indicado no campo {tpInscAnt}');
   AddCampo(ACampos, retornoErros, 'matricAnt', 'Matrícula do trabalhador no empregador anterior');
   AddCampo(ACampos, retornoErros, 'dtAdm', 'Preencher com a data de admissão do trabalhador');
   AddCampo(ACampos, retornoErros, 'observacao', 'Observação');
   AddCampo(ACampos, retornoErros, 'procJudTrab', 'Informações sobre a existência de processos judiciais do trabalhador');
   AddCampo(ACampos, retornoErros, 'tpTrib', 'Abrangência da decisão');
   AddCampo(ACampos, retornoErros, 'nrProcJud', 'número de processo judicial cadastrado através do evento S1070');
   AddCampo(ACampos, retornoErros, 'codSusp', 'Indicativo da Suspensão, atribuído pelo empregador em S-1070');
   AddCampo(ACampos, retornoErros, 'infoInterm', 'Informações relativas ao trabalho intermitente');
   AddCampo(ACampos, retornoErros, 'qtdDiasInterm', 'Quantidade de dias trabalhados no mês pelo empregado com contrato de trabalho intermitente');
   AddCampo(ACampos, retornoErros, 'dmDev', 'Identificação de cada um dos demonstrativos de valores devidos ao trabalhador antes das retenções de pensão alimentícia e IRRF');
   AddCampo(ACampos, retornoErros, 'ideDmDev', 'Identificador atribuído pela empresa para o demonstrativo de pagamento');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'infoPerApur', 'Remuneração no período de apuração');
   AddCampo(ACampos, retornoErros, 'qtdDiasAv', 'Quantidade de dias trabalhados no mês pelo trabalhador avulso no tomador de serviços identificado em {codLotacao}');
   AddCampo(ACampos, retornoErros, 'remunPerApur', 'Informações relativas a remuneração do trabalhador no período de apuração');
   AddCampo(ACampos, retornoErros, 'infoSaudeColet', 'plano privado coletivo empresarial de assistência à saúde');
   AddCampo(ACampos, retornoErros, 'detOper', 'Detalhamento dos valores pagos a Operadoras de Planos de Saúde');
   AddCampo(ACampos, retornoErros, 'cnpjOper', 'CNPJ de Operadora do Plano de Saúde');
   AddCampo(ACampos, retornoErros, 'regANS', 'Registro da operadora na Agência Nacional de Saúde');
   AddCampo(ACampos, retornoErros, 'vrPgTit', 'Valor pago pelo Titular');
   AddCampo(ACampos, retornoErros, 'detPlano', 'Informações do dependente do plano privado de saúde');
   AddCampo(ACampos, retornoErros, 'tpDep', 'Tipo de dependente');
   AddCampo(ACampos, retornoErros, 'cpfDep', 'Número de Inscrição no CPF');
   AddCampo(ACampos, retornoErros, 'nmDep', 'Nome do dependente');
   AddCampo(ACampos, retornoErros, 'dtNascto', 'data de nascimento.');
   AddCampo(ACampos, retornoErros, 'vlrPgDep', 'Valor pago relativo ao plano de saúde do dependente');
   AddCampo(ACampos, retornoErros, 'infoPerAnt', 'informações sobre o período de apuração definido em {perApur} ou a períodos anteriores a {perApur}');
   AddCampo(ACampos, retornoErros, 'ideADC', 'Identificação do Instrumento ou situação ensejadora da remuneração relativa a Períodos de Apuração Anteriores');
   AddCampo(ACampos, retornoErros, 'dtAcConv', 'Data da assinatura do acordo, convenção coletiva, sentença normativa ou da conversão da licença saúde em acidente de trabalho');
   AddCampo(ACampos, retornoErros, 'tpAcConv', 'Tipo do instrumento ou situação ensejadora da remuneração relativa a Períodos de Apuração Anteriores');
   AddCampo(ACampos, retornoErros, 'compAcConv', 'Competência (formato AAAA-MM) em que é devida a obrigação de pagar os efeitos remuneratórios de lei, acordo coletivo, convenção coletiva ou sentença normativa');
   AddCampo(ACampos, retornoErros, 'dtEfAcConv', 'Data a partir da qual o instrumento ou legislação mencionada em {tpAcConv} passa a produzir seus efeitos');
   AddCampo(ACampos, retornoErros, 'dsc', 'Descrição do instrumento ou situação que originou o pagamento das verbas relativas a períodos anteriores');
   AddCampo(ACampos, retornoErros, 'remunSuc', 'Indicar se a remuneração é relativa a verbas de natureza salarial ou não salarial devidas pela empresa sucessora a empregados desligados ainda na sucedida');
   AddCampo(ACampos, retornoErros, 'idePeriodo', 'Identificação do período ao qual se referem as diferenças de remuneração');
   AddCampo(ACampos, retornoErros, 'perRef', 'Informar o período ao qual se refere o complemento de remuneração no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'ideEstabLot', 'O registro identifica o estabelecimento e lotação ao qual se referem as diferenças de remuneração do mês identificado no registro superior');
   AddCampo(ACampos, retornoErros, 'codLotacao', 'Informar o código atribuído pela empresa para a lotação tributária');
   AddCampo(ACampos, retornoErros, 'remunPerAnt', 'Informações relativas a remuneração do trabalhador em períodos anteriores ao período de apuração');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de agente público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'indSimples', 'Indicador de Contribuição Substituída');
   AddCampo(ACampos, retornoErros, 'itensRemun', 'Registro que relaciona as rubricas que compõem a remuneração do trabalhador');
   AddCampo(ACampos, retornoErros, 'codRubr', 'Informar o código atribuído pelo empregador e que identifica a rubrica em sua folha de pagamento');
   AddCampo(ACampos, retornoErros, 'ideTabRubr', 'identificador da tabela de rubricas, conforme informado em S-1010 para a rubrica definida em {codRubr}');
   AddCampo(ACampos, retornoErros, 'qtdRubr', 'quantidade de referência para apuração (em horas, cotas, meses, percentual, etc.)');
   AddCampo(ACampos, retornoErros, 'fatorRubr', 'fator, percentual, etc, da rubrica, quando necessário');
   AddCampo(ACampos, retornoErros, 'vrUnit', 'valor unitário da rubrica');
   AddCampo(ACampos, retornoErros, 'vrRubr', 'Valor total da rubrica');
   AddCampo(ACampos, retornoErros, 'infoAgNocivo', 'Informações sobre agentes nocivos');
   AddCampo(ACampos, retornoErros, 'grauExp', 'código que representa o grau de exposição a agentes nocivos');
   AddCampo(ACampos, retornoErros, 'infoTrabInterm', 'Informações da(s) convocação(ões) de trabalho intermitente');
   AddCampo(ACampos, retornoErros, 'codConv', 'código atribuído pela empresa que identifica a convocação para trabalho intermitente');
   AddCampo(ACampos, retornoErros, 'infoComplCont', 'Informações complementares contratuais do trabalhador');
   AddCampo(ACampos, retornoErros, 'codCBO', 'Classificação Brasileira de Ocupação - CBO');
   AddCampo(ACampos, retornoErros, 'natAtividade', 'Natureza da atividade');
   AddCampo(ACampos, retornoErros, 'qtdDiasTrab', 'quantidade de dias trabalhados');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.