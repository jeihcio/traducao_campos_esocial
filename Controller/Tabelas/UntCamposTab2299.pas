unit UntCamposTab2299 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2299 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2299 }

constructor TCamposTab2299.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2299.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2299.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtDeslig', 'Evento Desligamento');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideVinculo', 'Informações de Identificação do Trabalhador e do Vínculo');
   AddCampo(ACampos, retornoErros, 'infoDeslig', 'Desligamento');
   AddCampo(ACampos, retornoErros, 'observacoes', 'Observações sobre o desligamento');
   AddCampo(ACampos, retornoErros, 'sucessaoVinc', 'Sucessão do Vínculo Trabalhista/Estatutário');
   AddCampo(ACampos, retornoErros, 'transfTit', 'Transferência de titularidade do empregado doméstico');
   AddCampo(ACampos, retornoErros, 'mudancaCPF', 'Informação do novo CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'verbasResc', 'Verbas Rescisórias');
   AddCampo(ACampos, retornoErros, 'dmDev', 'Demonstrativos de valores devidos ao trabalhador');
   AddCampo(ACampos, retornoErros, 'infoPerApur', 'Verbas rescisórias relativas ao mês da data do desligamento');
   AddCampo(ACampos, retornoErros, 'infoSaudeColet', 'Informações de plano privado coletivo empresarial de assistência à saúde');
   AddCampo(ACampos, retornoErros, 'detOper', 'Detalhamento dos valores pagos a Operadoras de Planos de Saúde');
   AddCampo(ACampos, retornoErros, 'detPlano', 'Informações do dependente do plano privado de saúde');
   AddCampo(ACampos, retornoErros, 'infoPerAnt', 'Remuneração em Períodos Anteriores (Acordo/Convenção/CCP/Dissídio)');
   AddCampo(ACampos, retornoErros, 'ideADC', 'Identificação do Acordo/Legislação/Convenção/CCP/Dissídio/Conversão');
   AddCampo(ACampos, retornoErros, 'idePeriodo', 'Identificação do período de referência da remuneração');
   AddCampo(ACampos, retornoErros, 'ideEstabLot', 'Identificação do estabelecimento e lotação');
   AddCampo(ACampos, retornoErros, 'detVerbas', 'Itens da Remuneração do Trabalhador');
   AddCampo(ACampos, retornoErros, 'infoAgNocivo', 'Grau de Exposição a Agentes Nocivos');
   AddCampo(ACampos, retornoErros, 'infoSimples', 'Informação relativa a empresas do Simples');
   AddCampo(ACampos, retornoErros, 'infoTrabInterm', 'Informações da(s) convocação(ões) de trabalho intermitente');
   AddCampo(ACampos, retornoErros, 'procJudTrab', 'Informações sobre a existência de processos judiciais do trabalhador');
   AddCampo(ACampos, retornoErros, 'infoMV', 'Informação de Múltiplos Vínculos');
   AddCampo(ACampos, retornoErros, 'remunOutrEmpr', 'Remuneração recebida pelo trabalhador em outras empresas ou atividades');
   AddCampo(ACampos, retornoErros, 'procCS', 'Informação sobre processo judicial que suspende a exigibilidade da Contribuição Social Rescisória');
   AddCampo(ACampos, retornoErros, 'quarentena', 'Informações sobre a quarentena remunerada de trabalhador desligado');
   AddCampo(ACampos, retornoErros, 'consigFGTS', 'Informações sobre operação de crédito consignado com garantia de FGTS');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'mtvDeslig', 'Motivo do Desligamento');
   AddCampo(ACampos, retornoErros, 'dtDeslig', 'data do último dia trabalhado para o respectivo vínculo');
   AddCampo(ACampos, retornoErros, 'indPagtoAPI', 'Indicativo de pagamento de Aviso Prévio Indenizado pelo empregador');
   AddCampo(ACampos, retornoErros, 'dtProjFimAPI', 'Data projetada para o término do aviso prévio indenizado');
   AddCampo(ACampos, retornoErros, 'pensAlim', 'Indicativo de pensão alimentícia para fins de retenção de FGTS');
   AddCampo(ACampos, retornoErros, 'percAliment', 'Percentual a ser destinado a pensão alimentícia');
   AddCampo(ACampos, retornoErros, 'vrAlim', 'Valor da pensão alimentícia');
   AddCampo(ACampos, retornoErros, 'nrCertObito', 'Número da certidão de óbito');
   AddCampo(ACampos, retornoErros, 'nrProcTrab', 'Número que identifica o processo trabalhista, quando o desligamento se der por decisão judicial');
   AddCampo(ACampos, retornoErros, 'indCumprParc', 'Indicador de cumprimento de aviso prévio');
   AddCampo(ACampos, retornoErros, 'qtdDiasInterm', 'Quantidade de dias trabalhados no mês pelo empregado com contrato de trabalho intermitente. Cada dia, total ou parcial, em que o trabalhador tenha prestado serviços deve ser considerado');
   AddCampo(ACampos, retornoErros, 'observacao', 'Observação');
   AddCampo(ACampos, retornoErros, 'tpInscSuc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'cnpjSucessora', 'número de inscrição do empregador sucessor, de acordo com o tipo de inscrição indicado no campo {tpInscSuc}');
   AddCampo(ACampos, retornoErros, 'cpfSubstituto', 'CPF do novo titular');
   AddCampo(ACampos, retornoErros, 'novoCPF', 'novo CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'ideDmDev', 'Identificador atribuído pela empresa para o demonstrativo de valores devidos ao trabalhador relativo a verbas rescisórias');
   AddCampo(ACampos, retornoErros, 'codLotacao', 'código atribuído pela empresa para a lotação tributária');
   AddCampo(ACampos, retornoErros, 'vrUnit', 'valor unitário da rubrica');
   AddCampo(ACampos, retornoErros, 'vrRubr', 'Valor total da rubrica');
   AddCampo(ACampos, retornoErros, 'cnpjOper', 'CNPJ de Operadora do Plano de Saúde');
   AddCampo(ACampos, retornoErros, 'regANS', 'Registro da operadora na Agência Nacional de Saúde');
   AddCampo(ACampos, retornoErros, 'vrPgTit', 'Valor pago pelo Titular');
   AddCampo(ACampos, retornoErros, 'tpDep', 'Tipo de dependente');
   AddCampo(ACampos, retornoErros, 'cpfDep', 'Número de Inscrição no CPF');
   AddCampo(ACampos, retornoErros, 'nmDep', 'Nome do dependente');
   AddCampo(ACampos, retornoErros, 'dtNascto', 'data de nascimento');
   AddCampo(ACampos, retornoErros, 'vlrPgDep', 'Valor pago relativo ao plano de saúde do dependente');
   AddCampo(ACampos, retornoErros, 'dtAcConv', 'Data da assinatura do acordo, convenção coletiva, sentença normativa ou da conversão da licença saúde em acidente de trabalho');
   AddCampo(ACampos, retornoErros, 'tpAcConv', 'Tipo do instrumento ou situação ensejadora da remuneração relativa a Períodos de Apuração Anteriores');
   AddCampo(ACampos, retornoErros, 'compAcConv', 'Competência (formato AAAA-MM) em que é devida a obrigação de pagar os efeitos remuneratórios de lei, acordo coletivo, convenção coletiva ou sentença normativa');
   AddCampo(ACampos, retornoErros, 'dtEfAcConv', 'Data a partir da qual o instrumento ou legislação mencionada em {tpAcConv} passa a produzir seus efeitos');
   AddCampo(ACampos, retornoErros, 'dsc', 'Detalhamento do instrumento ou situação que originou o pagamento das verbas relativas a períodos anteriores');
   AddCampo(ACampos, retornoErros, 'perRef', 'Informar o período ao qual se refere o complemento de remuneração no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'codRubr', 'Informar o código atribuído pelo empregador e que identifica a rubrica em sua folha de pagamento');
   AddCampo(ACampos, retornoErros, 'ideTabRubr', 'identificador da tabela de rubricas, conforme informado em S-1010 para a rubrica definida em {codRubr}');
   AddCampo(ACampos, retornoErros, 'qtdRubr', 'Informar a quantidade de referência para apuração (em horas, cotas, meses, percentual, etc.)');
   AddCampo(ACampos, retornoErros, 'fatorRubr', 'Informar o fator, percentual, etc, da rubrica, quando necessário');
   AddCampo(ACampos, retornoErros, 'grauExp', 'código que representa o grau de exposição a agentes nocivos');
   AddCampo(ACampos, retornoErros, 'indSimples', 'Indicador de Contribuição Substituída');
   AddCampo(ACampos, retornoErros, 'codConv', 'código atribuído pela empresa que identifica a convocação para trabalho intermitente');
   AddCampo(ACampos, retornoErros, 'tpTrib', 'Abrangência da decisão');
   AddCampo(ACampos, retornoErros, 'codSusp', 'Código do Indicativo da Suspensão, atribuído pelo empregador em S-1070');
   AddCampo(ACampos, retornoErros, 'indMV', 'Indicador de desconto da contribuição previdenciária do trabalhador');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador na qual houve a remuneração');
   AddCampo(ACampos, retornoErros, 'vlrRemunOE', 'valor da remuneração recebida pelo trabalhador na outra empresa/atividade, sobre a qual houve desconto/recolhimento da contribuição do segurado');
   AddCampo(ACampos, retornoErros, 'nrProcJud', 'número de processo judicial cadastrado através do evento S1070');
   AddCampo(ACampos, retornoErros, 'dtFimQuar', 'data final da quarentena a que está sujeito o trabalhador');
   AddCampo(ACampos, retornoErros, 'insConsig', 'Matrícula da Instituição Consignatária, cadastrada na Caixa Econômica Federal');
   AddCampo(ACampos, retornoErros, 'nrContr', 'Número do contrato de empréstimo consignado existente na Instituição Consignatária');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.