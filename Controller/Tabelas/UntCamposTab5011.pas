unit UntCamposTab5011 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab5011 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab5011 }

constructor TCamposTab5011.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab5011.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab5011.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtCS', 'Evento Contribuições Sociais');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'infoCS', 'Informações relativas às Contribuições Sociais');
   AddCampo(ACampos, retornoErros, 'infoCPSeg', 'Informações de contribuição previdenciária do Segurado');
   AddCampo(ACampos, retornoErros, 'infoContrib', 'Informações gerais do contribuinte');
   AddCampo(ACampos, retornoErros, 'infoPJ', 'Informações exclusivas da PJ');
   AddCampo(ACampos, retornoErros, 'infoAtConc', 'Informações de Atividades Concomitantes');
   AddCampo(ACampos, retornoErros, 'ideEstab', 'Identificação do estabelecimento/obra');
   AddCampo(ACampos, retornoErros, 'infoEstab', 'Informações do estabelecimento');
   AddCampo(ACampos, retornoErros, 'infoComplObra', 'Informações complementares relativas a obras');
   AddCampo(ACampos, retornoErros, 'ideLotacao', 'Identificação da lotação tributária');
   AddCampo(ACampos, retornoErros, 'infoTercSusp', 'Informações de suspensão de contribuição a Terceiros');
   AddCampo(ACampos, retornoErros, 'infoEmprParcial', 'Informação complementar de obra de construção civil');
   AddCampo(ACampos, retornoErros, 'dadosOpPort', 'Informações relativas ao operador portuário');
   AddCampo(ACampos, retornoErros, 'basesRemun', 'Bases de cálculo por categoria');
   AddCampo(ACampos, retornoErros, 'basesCp', 'Bases, contribuições do segurado e deduções da CP');
   AddCampo(ACampos, retornoErros, 'basesAvNPort', 'Contratação de avulsos não portuários');
   AddCampo(ACampos, retornoErros, 'infoSubstPatrOpPort', 'Inf. de substituição prevista na Lei 12546/2011');
   AddCampo(ACampos, retornoErros, 'basesAquis', 'Informações sobre aquisição rural');
   AddCampo(ACampos, retornoErros, 'basesComerc', 'Informações da Comercialização da produção');
   AddCampo(ACampos, retornoErros, 'infoCREstab', 'Códigos de Receita por Estabelecimento');
   AddCampo(ACampos, retornoErros, 'infoCRContrib', 'Totalizador dos CT do contribuinte');
   AddCampo(ACampos, retornoErros, 'indApuracao', 'Indicativo de período de apuração');
   AddCampo(ACampos, retornoErros, 'perApur', 'mês/ano (formato AAAA-MM) de referência das informações');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'nrRecArqBase', 'número do recibo do arquivo que deu origem ao presente arquivo de retorno ao empregador');
   AddCampo(ACampos, retornoErros, 'indExistInfo', 'Indicativo de existência de valores de bases e de contribuições sociais');
   AddCampo(ACampos, retornoErros, 'vrCpSeg', 'Valor total calculado relativo à contribuição dos segurados');
   AddCampo(ACampos, retornoErros, 'classTrib', 'código correspondente à classificação tributária do contribuinte');
   AddCampo(ACampos, retornoErros, 'indCoop', 'Indicativo de Cooperativa');
   AddCampo(ACampos, retornoErros, 'indConstr', 'Indicativo de Construtora');
   AddCampo(ACampos, retornoErros, 'indSubstPatr', 'Indicativo de substituição da contribuição previdenciária patronal');
   AddCampo(ACampos, retornoErros, 'percRedContrib', 'Percentual de redução da contribuição prevista na lei 12.546/2011');
   AddCampo(ACampos, retornoErros, 'fatorMes', 'fator a ser utilizado para cálculo da contribuição patronal do mês dos trabalhadores');
   AddCampo(ACampos, retornoErros, 'fator13', 'fator a ser utilizado para cálculo da contribuição patronal do décimo terceiro dos trabalhadores');
   AddCampo(ACampos, retornoErros, 'cnaePrep', 'código CNAE conforme informado em S-1005');
   AddCampo(ACampos, retornoErros, 'indSubstPatrObra', 'Substituição da Contribuição Patronal de Obra de Construção Civil');
   AddCampo(ACampos, retornoErros, 'codLotacao', 'código atribuído pela empresa para a lotação tributária');
   AddCampo(ACampos, retornoErros, 'fpas', 'código relativo ao FPAS');
   AddCampo(ACampos, retornoErros, 'codTercs', 'código de terceiros');
   AddCampo(ACampos, retornoErros, 'codTercsSusp', 'código combinado dos Terceiros para os quais o recolhimento está suspenso em virtude de processos Judiciais');
   AddCampo(ACampos, retornoErros, 'codTerc', 'Código de Terceiro');
   AddCampo(ACampos, retornoErros, 'tpInscContrat', 'Inscrição do contratante');
   AddCampo(ACampos, retornoErros, 'nrInscContrat', 'Número de Inscrição (CNPJ/CPF) do contratante');
   AddCampo(ACampos, retornoErros, 'tpInscProp', 'Tipo de Inscrição do proprietário do CNO');
   AddCampo(ACampos, retornoErros, 'nrInscProp', 'número de inscrição (CNPJ/CPF) do proprietário do CNO');
   AddCampo(ACampos, retornoErros, 'cnoObra', 'Número do CNO da obra');
   AddCampo(ACampos, retornoErros, 'aliqRat', 'alíquota definida na legislação vigente para a atividade (CNAE) preponderante');
   AddCampo(ACampos, retornoErros, 'fap', 'Fator Acidentário de Prevenção - FAP');
   AddCampo(ACampos, retornoErros, 'aliqRatAjust', 'Alíquota do RAT após ajuste pelo FAP');
   AddCampo(ACampos, retornoErros, 'indIncid', 'código correspondente ao tipo de incidência para fins de apuração da contribuição previdenciária');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador, conforme definido em S-5001');
   AddCampo(ACampos, retornoErros, 'vrSuspBcCp00', 'Valor da BC com incidência suspensa em decorrência de decisão judicial');
   AddCampo(ACampos, retornoErros, 'vrSuspBcCp15', 'Valor da base de cálculo da contribuição previdenciária adicional correspondente a exposição a agente nocivo que dá ao trabalhador direito a aposentadoria especial aos 15 anos de trabalho');
   AddCampo(ACampos, retornoErros, 'vrSuspBcCp20', 'Valor da base de cálculo da contribuição previdenciária adicional correspondente a exposição a agente nocivo que dá ao trabalhador expectativa de aposentadoria especial aos 20 anos de trabalho');
   AddCampo(ACampos, retornoErros, 'vrSuspBcCp25', 'Valor da base de cálculo da contribuição previdenciária adicional correspondente a exposição a agente nocivo que dá ao trabalhador direito a aposentadoria especial aos 25 anos de trabalho');
   AddCampo(ACampos, retornoErros, 'vrBcCp00VA', 'Origem dos valores apurados nesse campo: Preencher com o somatório do campo {valor}, quando {tpValor} = [41,45], do grupo {infoBaseCS} no evento S-5001');
   AddCampo(ACampos, retornoErros, 'vrBcCp15VA', 'base de cálculo da contribuição adicional para o financiamento dos benefícios de aposentadoria especial após 15 anos de contribuição');
   AddCampo(ACampos, retornoErros, 'vrBcCp20VA', 'base de cálculo da contribuição adicional para o financiamento dos benefícios de aposentadoria especial após 20 anos de contribuição');
   AddCampo(ACampos, retornoErros, 'vrBcCp25VA', 'base de cálculo da contribuição adicional para o financiamento dos benefícios de aposentadoria especial após 25 anos de contribuição');
   AddCampo(ACampos, retornoErros, 'vrSuspBcCp00VA', 'Valor da BC com incidência suspensa em decorrência de decisão judicial');
   AddCampo(ACampos, retornoErros, 'vrSuspBcCp15VA', 'Valor da base de cálculo da contribuição previdenciária adicional correspondente a exposição a agente nocivo que dá ao trabalhador direito a aposentadoria especial aos 15 anos de trabalho');
   AddCampo(ACampos, retornoErros, 'vrSuspBcCp20VA', 'Valor da base de cálculo da contribuição previdenciária adicional correspondente a exposição a agente nocivo que dá ao trabalhador expectativa de aposentadoria especial aos 20 anos de trabalho');
   AddCampo(ACampos, retornoErros, 'vrSuspBcCp25VA', 'Valor da base de cálculo da contribuição previdenciária adicional correspondente a exposição a agente nocivo que dá ao trabalhador direito a aposentadoria especial aos 25 anos de trabalho');
   AddCampo(ACampos, retornoErros, 'vrDescSest', 'Valor total descontado do trabalhador para recolhimento ao Sest');
   AddCampo(ACampos, retornoErros, 'vrCalcSest', 'Valor calculado relativo à contribuição devida pelo trabalhador para recolhimento ao Sest');
   AddCampo(ACampos, retornoErros, 'vrDescSenat', 'Valor total descontado do trabalhador para recolhimento ao Senat');
   AddCampo(ACampos, retornoErros, 'vrCalcSenat', 'Valor calculado relativo à contribuição devida pelo trabalhador para recolhimento ao Senat');
   AddCampo(ACampos, retornoErros, 'vrSalFam', 'Valor total do salário-família para a categoria indicada no registro superior');
   AddCampo(ACampos, retornoErros, 'vrSalMat', 'Valor total do salário-maternidade para a categoria indicada');
   AddCampo(ACampos, retornoErros, 'vrBcCp00', 'Origem: {vrBcCp00} do evento S-1270');
   AddCampo(ACampos, retornoErros, 'vrBcCp15', 'Origem: {vrBcCp15} do evento S-1270');
   AddCampo(ACampos, retornoErros, 'vrBcCp20', 'Origem: {vrBcCp20} do evento S-1270');
   AddCampo(ACampos, retornoErros, 'vrBcCp25', 'Origem: {vrBcCp25} do evento S-1270');
   AddCampo(ACampos, retornoErros, 'vrBcCp13', 'Origem: {vrBcCp13} do evento S-1270');
   AddCampo(ACampos, retornoErros, 'vrBcFgts', 'Origem: {vrBcFGTS} do evento S-1270');
   AddCampo(ACampos, retornoErros, 'vrDescCP', 'Origem: {vrDescCP} do evento S-1270');
   AddCampo(ACampos, retornoErros, 'cnpjOpPortuario', 'CNPJ do operador portuário');
   AddCampo(ACampos, retornoErros, 'indAquis', 'Indicativo da Aquisição');
   AddCampo(ACampos, retornoErros, 'vlrAquis', 'Valor total da aquisição de produção rural de produtor rural');
   AddCampo(ACampos, retornoErros, 'vrCPDescPR', 'valor da Contribuição Previdenciária descontada pelo adquirente de produção de produtor rural - sub-rogação');
   AddCampo(ACampos, retornoErros, 'vrCPNRet', 'Valor da Contribuição Previdenciária que deixou de ser retida pelo declarante em decorrência de decisão/sentença judicial');
   AddCampo(ACampos, retornoErros, 'vrRatNRet', 'Valor da GILRAT, incidente sobre a aquisição de produção rural de produtor rural, cuja retenção deixou de ser efetuada em decorrência de decisão/sentença judicial');
   AddCampo(ACampos, retornoErros, 'vrSenarNRet', 'Valor da contribuição destinada ao SENAR, incidente sobre a aquisição de produção rural de produtor rural pessoa física/segurado especial');
   AddCampo(ACampos, retornoErros, 'vrCPCalcPR', 'Valor calculado relativo à contribuição previdenciária do produtor rural, de acordo com {indAquis}');
   AddCampo(ACampos, retornoErros, 'vrRatDescPR', 'Valor da contribuição destinada ao financiamento dos benefícios concedidos em razão do grau de incidência da incapacidade laborativa decorrente dos riscos ambientais do trabalho');
   AddCampo(ACampos, retornoErros, 'vrRatCalcPR', 'Valor calculado relativo a contribuição Gilrat devida pelo Produtor Rural, de acordo com {indAquis}');
   AddCampo(ACampos, retornoErros, 'vrSenarDesc', 'Valor da contribuição destinada ao SENAR, incidente sobre a aquisição de produção rural de produtor rural pessoa física/segurado especial');
   AddCampo(ACampos, retornoErros, 'vrSenarCalc', 'Valor calculado da contribuição devida pelo produtor rural ao Senar');
   AddCampo(ACampos, retornoErros, 'indComerc', 'Indicativo de Comercialização');
   AddCampo(ACampos, retornoErros, 'vrBcComPR', 'Valor da Base de Cálculo da comercialização da produção rural do Produtor Rural PF/Segurado Especial a outra PF no varejo ou a outro Produtor Rural PF/Segurado Especial ou no mercado Externo');
   AddCampo(ACampos, retornoErros, 'vrCPSusp', 'Valor da Contribuição Previdenciária com exigibilidade suspensa');
   AddCampo(ACampos, retornoErros, 'vrRatSusp', 'Valor da contribuição para Gilrat com exigibilidade suspensa');
   AddCampo(ACampos, retornoErros, 'vrSenarSusp', 'Valor da contribuição para o Senar com exigibilidade suspensa');
   AddCampo(ACampos, retornoErros, 'vrSuspCR', 'Valor suspenso correspondente ao Código de Receita - CR apurado');
   AddCampo(ACampos, retornoErros, 'tpCR', 'Código de Receita - CR relativo a contribuições sociais devidas à Previdência Social e a Outras Entidades e Fundos (Terceiros), conforme legislação em vigor na competência');
   AddCampo(ACampos, retornoErros, 'vrCR', 'Valor correspondente ao Código de Receita - CR apurado');
   AddCampo(ACampos, retornoErros, 'vrCRSusp', 'Valor do tributo com exigibilidade suspensa');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.