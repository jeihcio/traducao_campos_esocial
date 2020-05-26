unit UntCamposTab2400 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2400 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2400 }

constructor TCamposTab2400.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2400.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2400.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtCdBenPrRP', 'Evento de cadastro de benefícios previdenciários de Regimes Próprios');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideBenef', 'Identificação do beneficiário');
   AddCampo(ACampos, retornoErros, 'dadosBenef', 'Dados do beneficiário');
   AddCampo(ACampos, retornoErros, 'dadosNasc', 'Informações de nascimento do beneficiário');
   AddCampo(ACampos, retornoErros, 'endereco', 'Endereço do Trabalhador');
   AddCampo(ACampos, retornoErros, 'brasil', 'Endereço no Brasil');
   AddCampo(ACampos, retornoErros, 'exterior', 'Endereço no Exterior');
   AddCampo(ACampos, retornoErros, 'infoBeneficio', 'Informações relacionadas ao benefício previdenciário');
   AddCampo(ACampos, retornoErros, 'iniBeneficio', 'Informações relativas a benefícios previdenciários - Início');
   AddCampo(ACampos, retornoErros, 'infoPenMorte', 'Informações relativas a pensão por morte');
   AddCampo(ACampos, retornoErros, 'altBeneficio', 'Informações relativas a benefícios previdenciários - Alteração');
   AddCampo(ACampos, retornoErros, 'fimBeneficio', 'Informações relativas a benefícios previdenciários - Término');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfBenef', 'número do CPF do beneficiário');
   AddCampo(ACampos, retornoErros, 'nmBenefic', 'Nome do Beneficiário');
   AddCampo(ACampos, retornoErros, 'dtNascto', 'data de nascimento');
   AddCampo(ACampos, retornoErros, 'codMunic', 'código do município, conforme tabela do IBGE');
   AddCampo(ACampos, retornoErros, 'uf', 'sigla da Unidade da Federação');
   AddCampo(ACampos, retornoErros, 'paisNascto', 'código do país de nascimento do trabalhador');
   AddCampo(ACampos, retornoErros, 'paisNac', 'código do país de nacionalidade do trabalhador');
   AddCampo(ACampos, retornoErros, 'nmMae', 'Nome da mãe');
   AddCampo(ACampos, retornoErros, 'nmPai', 'Nome do pai do trabalhador');
   AddCampo(ACampos, retornoErros, 'tpLograd', 'Tipo de Logradouro');
   AddCampo(ACampos, retornoErros, 'cep', 'Código de Endereçamento Postal - CEP');
   AddCampo(ACampos, retornoErros, 'paisResid', 'código do país');
   AddCampo(ACampos, retornoErros, 'dscLograd', 'Descrição do logradouro');
   AddCampo(ACampos, retornoErros, 'nrLograd', 'Número do logradouro');
   AddCampo(ACampos, retornoErros, 'complemento', 'Complemento do logradouro');
   AddCampo(ACampos, retornoErros, 'bairro', 'Nome do bairro/distrito');
   AddCampo(ACampos, retornoErros, 'nmCid', 'Nome da Cidade');
   AddCampo(ACampos, retornoErros, 'codPostal', 'Código de Endereçamento Postal');
   AddCampo(ACampos, retornoErros, 'tpPlanRP', 'Tipo de plano de segregação da massa');
   AddCampo(ACampos, retornoErros, 'dtIniBenef', 'Data de início do benefício previdenciário');
   AddCampo(ACampos, retornoErros, 'vrBenef', 'Valor do benefício previdenciário');
   AddCampo(ACampos, retornoErros, 'idQuota', 'Identificação da quota do benefício');
   AddCampo(ACampos, retornoErros, 'cpfInst', 'CPF do instituidor da pensão por morte');
   AddCampo(ACampos, retornoErros, 'tpBenef', 'Tipo de benefício previdenciário');
   AddCampo(ACampos, retornoErros, 'nrBenefic', 'Número do benefício previdenciário');
   AddCampo(ACampos, retornoErros, 'dtFimBenef', 'Data de término de todos os benefícios previdenciários devidos ao beneficiário identificado em {ideBenef}');
   AddCampo(ACampos, retornoErros, 'mtvFim', 'Motivo que originou a cessação de benefícios ao beneficiário');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.