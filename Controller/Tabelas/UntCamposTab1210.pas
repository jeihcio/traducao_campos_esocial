unit UntCamposTab1210 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1210 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1210 }

constructor TCamposTab1210.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1210.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1210.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideBenef', 'Identificação do beneficiário do pagamento');
   AddCampo(ACampos, retornoErros, 'deps', 'Informações de dependentes do beneficiário');
   AddCampo(ACampos, retornoErros, 'infoPgto', 'Informações dos pagamentos efetuados');
   AddCampo(ACampos, retornoErros, 'detPgtoFl', 'Detalhamento dos pagamentos efetuados apurados em S-1200 ou S-1202');
   AddCampo(ACampos, retornoErros, 'detPgtoBenPr', 'Detalhamento de pagamentos relativos a benefícios previdenciários');
   AddCampo(ACampos, retornoErros, 'retPgtoTot', 'Retenções efetuadas no ato do pagamento');
   AddCampo(ACampos, retornoErros, 'infoPgtoParc', 'Informações complementares relacionadas ao pagamento parcial');
   AddCampo(ACampos, retornoErros, 'detPgtoFer', 'Detalhamento dos pagamentos de férias');
   AddCampo(ACampos, retornoErros, 'detRubrFer', 'Detalhamento das rubricas');
   AddCampo(ACampos, retornoErros, 'penAlim', 'Pensão Alimentícia');
   AddCampo(ACampos, retornoErros, 'detPgtoAnt', 'Pagamento relativo a competências anteriores ao início de obrigatoriedade dos eventos periódicos');
   AddCampo(ACampos, retornoErros, 'infoPgtoAnt', 'Detalhamento do pagamento');
   AddCampo(ACampos, retornoErros, 'idePgtoExt', 'Informações complementares sobre pagamentos no exterior');
   AddCampo(ACampos, retornoErros, 'idePais', 'Identificação do País onde foi efetuado o pagamento');
   AddCampo(ACampos, retornoErros, 'endExt', 'Informações complementares de endereço do beneficiário');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'Preencher com o número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'indApuracao', 'Indicativo de período de apuração');
   AddCampo(ACampos, retornoErros, 'perApur', 'Informar o mês/ano (formato AAAA-MM) de referência das informações');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'vrDedDep', 'dedução da base de cálculo do IRRF relativo aos dependentes do beneficiário do pagamento, correspondente ao número de dependentes multiplicado pelo valor de dedução por dependente previsto na legislação do Imposto de Renda');
   AddCampo(ACampos, retornoErros, 'dtPgto', 'data de pagamento');
   AddCampo(ACampos, retornoErros, 'tpPgto', 'tipo de pagamento');
   AddCampo(ACampos, retornoErros, 'indResBr', 'beneficiário do pagamento é residente fiscal no Brasil');
   AddCampo(ACampos, retornoErros, 'nrRecArq', 'número do recibo do arquivo que contém as informações da rescisão contratual que originou o pagamento');
   AddCampo(ACampos, retornoErros, 'vrUnit', 'valor unitário da rubrica');
   AddCampo(ACampos, retornoErros, 'vrRubr', 'Valor total da rubrica');
   AddCampo(ACampos, retornoErros, 'perRef', 'período ao qual se refere o pagamento no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'ideDmDev', 'Identificador atribuído pelo Órgão Público ou Instituto de Previdência para o recibo de pagamento');
   AddCampo(ACampos, retornoErros, 'indPgtoTt', 'Indicativo de pagamento total ou parcial');
   AddCampo(ACampos, retornoErros, 'vrLiq', 'Valor líquido recebido pelo trabalhador');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'dtIniGoz', 'Data de início de gozo das férias');
   AddCampo(ACampos, retornoErros, 'qtDias', 'Quantidade de dias de férias gozadas');
   AddCampo(ACampos, retornoErros, 'codRubr', 'código atribuído pela empresa e que identifica a rubrica em sua folha de pagamento');
   AddCampo(ACampos, retornoErros, 'ideTabRubr', 'identificador da tabela de rubricas, conforme informado em S-1010 para a rubrica definida em {codRubr}');
   AddCampo(ACampos, retornoErros, 'qtdRubr', 'quantidade de referência para apuração (em horas, cotas, meses, percentual, etc.)');
   AddCampo(ACampos, retornoErros, 'fatorRubr', 'fator, percentual, etc, da rubrica, quando necessário');
   AddCampo(ACampos, retornoErros, 'cpfBenef', 'Informar o CPF do beneficiário');
   AddCampo(ACampos, retornoErros, 'dtNasctoBenef', 'Data de nascimento do beneficiário da pensão');
   AddCampo(ACampos, retornoErros, 'nmBenefic', 'Nome do Beneficiário');
   AddCampo(ACampos, retornoErros, 'vlrPensao', 'Valor da pensão alimentícia');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'tpBcIRRF', 'Tipo de base de cálculo, dedução ou isenção do IRRF relacionado ao valor do pagamento');
   AddCampo(ACampos, retornoErros, 'vrBcIRRF', 'Valor da base de cálculo, retenção, dedução ou Isenção do IRRF incidente sobre o valor devido ao trabalhador de acordo com {tpBcIRRF}');
   AddCampo(ACampos, retornoErros, 'codPais', 'código do país');
   AddCampo(ACampos, retornoErros, 'indNIF', 'Número de Identificação Fiscal');
   AddCampo(ACampos, retornoErros, 'nifBenef', 'Número de Identificação Fiscal - NIF');
   AddCampo(ACampos, retornoErros, 'dscLograd', 'Descrição do logradouro');
   AddCampo(ACampos, retornoErros, 'nrLograd', 'Número do logradouro');
   AddCampo(ACampos, retornoErros, 'complem', 'Complemento do logradouro');
   AddCampo(ACampos, retornoErros, 'bairro', 'Nome do bairro/distrito');
   AddCampo(ACampos, retornoErros, 'nmCid', 'Nome da Cidade');
   AddCampo(ACampos, retornoErros, 'codPostal', 'Código de Endereçamento Postal');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.