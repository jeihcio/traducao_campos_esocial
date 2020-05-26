unit UntCamposTab2300 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2300 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2300 }

constructor TCamposTab2300.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2300.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2300.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtTSVInicio', 'TSVE - Início');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'trabalhador', 'Grupo de Informações do Trabalhador');
   AddCampo(ACampos, retornoErros, 'nascimento', 'Grupo de informações do nascimento do trabalhador');
   AddCampo(ACampos, retornoErros, 'documentos', 'Informações dos documentos pessoais do trabalhador');
   AddCampo(ACampos, retornoErros, 'CTPS', 'Carteira de Trabalho e Previdência Social');
   AddCampo(ACampos, retornoErros, 'RIC', 'Informações do Documento Nacional de Identidade (DNI)');
   AddCampo(ACampos, retornoErros, 'RG', 'Informações do Registro Geral (RG)');
   AddCampo(ACampos, retornoErros, 'RNE', 'Informações do Registro Nacional de Estrangeiro');
   AddCampo(ACampos, retornoErros, 'OC', 'Informações do número de registro em Órgão de Classe (OC)');
   AddCampo(ACampos, retornoErros, 'CNH', 'Informações da Carteira Nacional de Habilitação (CNH)');
   AddCampo(ACampos, retornoErros, 'endereco', 'Endereço do Trabalhador');
   AddCampo(ACampos, retornoErros, 'brasil', 'Endereço no Brasil');
   AddCampo(ACampos, retornoErros, 'exterior', 'Endereço no Exterior');
   AddCampo(ACampos, retornoErros, 'trabEstrangeiro', 'Informações do Trabalhador Estrangeiro');
   AddCampo(ACampos, retornoErros, 'infoDeficiencia', 'Pessoa com Deficiência');
   AddCampo(ACampos, retornoErros, 'dependente', 'Informações dos dependentes');
   AddCampo(ACampos, retornoErros, 'contato', 'Informações de Contato');
   AddCampo(ACampos, retornoErros, 'infoTSVInicio', 'Trabalhador Sem Vínculo - Início');
   AddCampo(ACampos, retornoErros, 'infoComplementares', 'Informações complementares');
   AddCampo(ACampos, retornoErros, 'cargoFuncao', 'Cargo/Função ocupado pelo Trabalhador Sem Vínculo');
   AddCampo(ACampos, retornoErros, 'remuneracao', 'Informações da remuneração e periodicidade de pagamento');
   AddCampo(ACampos, retornoErros, 'fgts', 'Informações relativas ao FGTS');
   AddCampo(ACampos, retornoErros, 'infoDirigenteSindical', 'Empresa de Origem do Dirigente Sindical');
   AddCampo(ACampos, retornoErros, 'infoTrabCedido', 'Informações relativas ao trabalhador cedido, preenchidas exclusivamente pelo cessionário');
   AddCampo(ACampos, retornoErros, 'infoEstagiario', 'Informações relativas ao estagiário');
   AddCampo(ACampos, retornoErros, 'instEnsino', 'Instituição de Ensino');
   AddCampo(ACampos, retornoErros, 'ageIntegracao', 'Agente de Integração');
   AddCampo(ACampos, retornoErros, 'supervisorEstagio', 'Supervisor do Estágio');
   AddCampo(ACampos, retornoErros, 'mudancaCPF', 'Informações de mudança de CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'afastamento', 'Informações de afastamento do TSVE');
   AddCampo(ACampos, retornoErros, 'termino', 'Informações de término do TSVE');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'nmTrab', 'Nome do Trabalhador');
   AddCampo(ACampos, retornoErros, 'sexo', 'Sexo do Trabalhador');
   AddCampo(ACampos, retornoErros, 'racaCor', 'Raça e cor do trabalhador');
   AddCampo(ACampos, retornoErros, 'estCiv', 'Estado civil do trabalhador');
   AddCampo(ACampos, retornoErros, 'grauInstr', 'Grau de instrução do trabalhador');
   AddCampo(ACampos, retornoErros, 'nmSoc', 'Nome social para travesti ou transexual');
   AddCampo(ACampos, retornoErros, 'paisNascto', 'código do país de nascimento do trabalhador');
   AddCampo(ACampos, retornoErros, 'paisNac', 'código do país de nacionalidade do trabalhador');
   AddCampo(ACampos, retornoErros, 'nmMae', 'Nome da mãe');
   AddCampo(ACampos, retornoErros, 'nmPai', 'Nome do pai do trabalhador');
   AddCampo(ACampos, retornoErros, 'nrCtps', 'CTPS');
   AddCampo(ACampos, retornoErros, 'serieCtps', 'Número de série da CTPS');
   AddCampo(ACampos, retornoErros, 'ufCtps', 'UF da expedição da CTPS');
   AddCampo(ACampos, retornoErros, 'nrRic', 'Número do Documento Nacional de Identidade - DNI');
   AddCampo(ACampos, retornoErros, 'nrRg', 'RG');
   AddCampo(ACampos, retornoErros, 'nrRne', 'Número de inscrição no Registro Nacional de Estrangeiros');
   AddCampo(ACampos, retornoErros, 'nrOc', 'Número de inscrição no órgão de classe');
   AddCampo(ACampos, retornoErros, 'orgaoEmissor', 'Órgão e UF de emissão');
   AddCampo(ACampos, retornoErros, 'nrRegCnh', 'Número do Registro da Carteira Nacional de Habilitação - CNH');
   AddCampo(ACampos, retornoErros, 'dtExped', 'Data da expedição do documento');
   AddCampo(ACampos, retornoErros, 'ufCnh', 'Estado da Federação emissor da CNH');
   AddCampo(ACampos, retornoErros, 'dtValid', 'data de validade');
   AddCampo(ACampos, retornoErros, 'dtPriHab', 'Data da primeira habilitação');
   AddCampo(ACampos, retornoErros, 'tpLograd', 'Tipo de Logradouro');
   AddCampo(ACampos, retornoErros, 'paisResid', 'código do país');
   AddCampo(ACampos, retornoErros, 'complemento', 'Complemento do logradouro');
   AddCampo(ACampos, retornoErros, 'nmCid', 'Nome da Cidade');
   AddCampo(ACampos, retornoErros, 'codPostal', 'Código de Endereçamento Postal');
   AddCampo(ACampos, retornoErros, 'dtChegada', 'Data de chegada do trabalhador ao Brasil');
   AddCampo(ACampos, retornoErros, 'classTrabEstrang', 'Classificação da condição de ingresso do trabalhador estrangeiro no Brasil');
   AddCampo(ACampos, retornoErros, 'casadoBr', 'Casado com brasileiro(a)');
   AddCampo(ACampos, retornoErros, 'filhosBr', 'Indicar se o trabalhador estrangeiro tem filhos brasileiros');
   AddCampo(ACampos, retornoErros, 'defFisica', 'Deficiência Física');
   AddCampo(ACampos, retornoErros, 'defVisual', 'Deficiência visual');
   AddCampo(ACampos, retornoErros, 'defAuditiva', 'Deficiência auditiva');
   AddCampo(ACampos, retornoErros, 'defMental', 'Deficiência Mental');
   AddCampo(ACampos, retornoErros, 'defIntelectual', 'Deficiência Intelectual');
   AddCampo(ACampos, retornoErros, 'reabReadap', 'Informar se o trabalhador é reabilitado (empregado) ou readaptado (servidor público/militar)');
   AddCampo(ACampos, retornoErros, 'tpDep', 'Tipo de dependente');
   AddCampo(ACampos, retornoErros, 'nmDep', 'Nome do dependente');
   AddCampo(ACampos, retornoErros, 'dtNascto', 'data de nascimento');
   AddCampo(ACampos, retornoErros, 'cpfDep', 'Número de Inscrição no CPF');
   AddCampo(ACampos, retornoErros, 'depIRRF', 'Informar se é dependente do trabalhador para fins de dedução de seu rendimento tributável pelo Imposto de Renda');
   AddCampo(ACampos, retornoErros, 'depSF', 'Informar se é dependente para fins de recebimento do benefício de saláriofamília');
   AddCampo(ACampos, retornoErros, 'incTrab', 'Informar se o dependente tem incapacidade física ou mental para o trabalho');
   AddCampo(ACampos, retornoErros, 'fonePrinc', 'Número de telefone do trabalhador, com DDD');
   AddCampo(ACampos, retornoErros, 'foneAlternat', 'Número de telefone alternativo do trabalhador, com DDD');
   AddCampo(ACampos, retornoErros, 'emailPrinc', 'Endereço eletrônico');
   AddCampo(ACampos, retornoErros, 'emailAlternat', 'Endereço eletrônico alternativo');
   AddCampo(ACampos, retornoErros, 'cadIni', 'Indicar se o evento se refere a cadastramento inicial ou se refere a um início de TSVE');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'dtInicio', 'Data de início');
   AddCampo(ACampos, retornoErros, 'natAtividade', 'Natureza da atividade');
   AddCampo(ACampos, retornoErros, 'codCargo', 'código do cargo');
   AddCampo(ACampos, retornoErros, 'codFuncao', 'código da função');
   AddCampo(ACampos, retornoErros, 'vrSalFx', 'Salário base do trabalhador, correspondente à parte fixa da remuneração');
   AddCampo(ACampos, retornoErros, 'undSalFixo', 'Unidade de pagamento da parte fixa da remuneração');
   AddCampo(ACampos, retornoErros, 'dscSalVar', 'Descrição do salário por tarefa ou variável e como este é calculado');
   AddCampo(ACampos, retornoErros, 'opcFGTS', 'Opção pelo FGTS');
   AddCampo(ACampos, retornoErros, 'dtOpcFGTS', 'Informar a data de opção do trabalhador pelo FGTS');
   AddCampo(ACampos, retornoErros, 'cnpjOrigem', 'CNPJ da empresa de origem');
   AddCampo(ACampos, retornoErros, 'dtAdmOrig', 'data de admissão ou data de início');
   AddCampo(ACampos, retornoErros, 'matricOrig', 'matrícula do trabalhador na empresa de origem');
   AddCampo(ACampos, retornoErros, 'categOrig', 'código correspondente à categoria de origem do trabalhador cedido');
   AddCampo(ACampos, retornoErros, 'cnpjCednt', 'CNPJ da empresa cedente');
   AddCampo(ACampos, retornoErros, 'matricCed', 'matrícula do trabalhador no empregador de origem (Cedente)');
   AddCampo(ACampos, retornoErros, 'dtAdmCed', 'data de admissão do trabalhador no empregador de origem (Cedente)');
   AddCampo(ACampos, retornoErros, 'tpRegTrab', 'Tipo de regime trabalhista');
   AddCampo(ACampos, retornoErros, 'tpRegPrev', 'Tipo de regime previdenciário');
   AddCampo(ACampos, retornoErros, 'infOnus', 'Ônus da cessão/requisição');
   AddCampo(ACampos, retornoErros, 'natEstagio', 'Natureza do Estágio');
   AddCampo(ACampos, retornoErros, 'nivEstagio', 'Informar o nível do estágio');
   AddCampo(ACampos, retornoErros, 'areaAtuacao', 'Área de atuação do estagiário');
   AddCampo(ACampos, retornoErros, 'nrApol', 'Nr. Apólice de Seguro');
   AddCampo(ACampos, retornoErros, 'vlrBolsa', 'valor da bolsa, se o estágio for remunerado');
   AddCampo(ACampos, retornoErros, 'dtPrevTerm', 'Data prevista para o término do estágio');
   AddCampo(ACampos, retornoErros, 'cnpjInstEnsino', 'cnpj da instituição de ensino. Deve ser preenchido apenas se a instituição de ensino for brasileira');
   AddCampo(ACampos, retornoErros, 'cnpjAgntInteg', 'CNPJ do agente de integração');
   AddCampo(ACampos, retornoErros, 'nmRazao', 'Informar a razão social');
   AddCampo(ACampos, retornoErros, 'dscLograd', 'Descrição do logradouro');
   AddCampo(ACampos, retornoErros, 'nrLograd', 'Número do logradouro');
   AddCampo(ACampos, retornoErros, 'bairro', 'Nome do bairro/distrito');
   AddCampo(ACampos, retornoErros, 'cep', 'Código de Endereçamento Postal - CEP');
   AddCampo(ACampos, retornoErros, 'codMunic', 'código do município, conforme tabela do IBGE');
   AddCampo(ACampos, retornoErros, 'uf', 'sigla da Unidade da Federação');
   AddCampo(ACampos, retornoErros, 'cpfSupervisor', 'CPF do responsável pela supervisão do estagiário');
   AddCampo(ACampos, retornoErros, 'nmSuperv', 'Nome do Supervisor do Estágio');
   AddCampo(ACampos, retornoErros, 'cpfAnt', 'número do CPF antigo do trabalhador');
   AddCampo(ACampos, retornoErros, 'dtAltCPF', 'Data de alteração do CPF');
   AddCampo(ACampos, retornoErros, 'observacao', 'Observação');
   AddCampo(ACampos, retornoErros, 'dtIniAfast', 'Data de início do afastamento');
   AddCampo(ACampos, retornoErros, 'codMotAfast', 'código do motivo de afastamento temporário');
   AddCampo(ACampos, retornoErros, 'dtTerm', 'Preencher com a data do término');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.