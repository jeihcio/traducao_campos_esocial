unit UntCamposTab2399 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2399 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2399 }

constructor TCamposTab2399.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2399.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2399.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtTSVTermino', 'TSVE - Término');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideTrabSemVinculo', 'Identificação do Trabalhador Sem Vínculo');
   AddCampo(ACampos, retornoErros, 'infoTSVTermino', 'Trabalhador Sem Vínculo de Emprego - Término');
   AddCampo(ACampos, retornoErros, 'mudancaCPF', 'Informação do novo CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'verbasResc', 'Verbas rescisórias');
   AddCampo(ACampos, retornoErros, 'dmDev', 'Identificação dos demonstrativos de pagamentos a serem efetuados');
   AddCampo(ACampos, retornoErros, 'ideEstabLot', 'Identificação do estabelecimento e lotação');
   AddCampo(ACampos, retornoErros, 'detVerbas', 'Verbas Rescisórias');
   AddCampo(ACampos, retornoErros, 'infoSaudeColet', 'Informações de plano privado coletivo empresarial de assistência à saúde');
   AddCampo(ACampos, retornoErros, 'detOper', 'Detalhamento dos valores pagos a Operadoras de Planos de Saúde');
   AddCampo(ACampos, retornoErros, 'detPlano', 'Informações do dependente do plano privado de saúde');
   AddCampo(ACampos, retornoErros, 'infoAgNocivo', 'Grau de Exposição a Agentes Nocivos');
   AddCampo(ACampos, retornoErros, 'infoSimples', 'Informação relativa a empresas do Simples');
   AddCampo(ACampos, retornoErros, 'procJudTrab', 'Informações sobre a existência de processos judiciais do trabalhador');
   AddCampo(ACampos, retornoErros, 'infoMV', 'Informação de Múltiplos Vínculos');
   AddCampo(ACampos, retornoErros, 'remunOutrEmpr', 'Remuneração recebida pelo trabalhador em outras empresas ou atividades');
   AddCampo(ACampos, retornoErros, 'quarentena', 'Informações sobre a quarentena remunerada de trabalhador desligado');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'dtTerm', 'Data do Término');
   AddCampo(ACampos, retornoErros, 'mtvDesligTSV', 'Motivo do Término');
   AddCampo(ACampos, retornoErros, 'pensAlim', 'Indicativo de pensão alimentícia para fins de retenção de FGTS');
   AddCampo(ACampos, retornoErros, 'percAliment', 'Percentual a ser destinado a pensão alimentícia');
   AddCampo(ACampos, retornoErros, 'vrAlim', 'Valor da pensão alimentícia');
   AddCampo(ACampos, retornoErros, 'novoCPF', 'novo CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'ideDmDev', 'Identificador atribuído pela empresa para o demonstrativo de valores devidos ao trabalhador relativo a verbas rescisórias');
   AddCampo(ACampos, retornoErros, 'codRubr', 'código atribuído pelo empregador que identifica a rubrica em sua folha de pagamento');
   AddCampo(ACampos, retornoErros, 'ideTabRubr', 'identificador da tabela de rubricas, conforme informado em S-1010 para a rubrica definida em {codRubr}');
   AddCampo(ACampos, retornoErros, 'qtdRubr', 'Informar a quantidade de referência para apuração (em horas, cotas, meses, percentual, etc.)');
   AddCampo(ACampos, retornoErros, 'fatorRubr', 'Informar o fator, percentual, etc, da rubrica, quando necessário');
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
   AddCampo(ACampos, retornoErros, 'grauExp', 'código que representa o grau de exposição a agentes nocivos');
   AddCampo(ACampos, retornoErros, 'indSimples', 'Indicador de Contribuição Substituída');
   AddCampo(ACampos, retornoErros, 'tpTrib', 'Abrangência da decisão');
   AddCampo(ACampos, retornoErros, 'nrProcJud', 'número de processo judicial cadastrado através do evento S1070');
   AddCampo(ACampos, retornoErros, 'codSusp', 'Código do Indicativo da Suspensão, atribuído pelo empregador em S-1070');
   AddCampo(ACampos, retornoErros, 'indMV', 'Indicador de desconto da contribuição previdenciária do trabalhador');
   AddCampo(ACampos, retornoErros, 'vlrRemunOE', 'valor da remuneração recebida pelo trabalhador na outra empresa/atividade, sobre a qual houve desconto/recolhimento da contribuição do segurado');
   AddCampo(ACampos, retornoErros, 'dtFimQuar', 'data final da quarentena a que está sujeito o trabalhador');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.