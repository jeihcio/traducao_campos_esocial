unit UntCamposTab2205 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2205 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2205 }

constructor TCamposTab2205.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2205.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2205.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtAltCadastral', 'Evento Alteração Cadastral do Trabalhador');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideTrabalhador', 'Identificação do Trabalhador');
   AddCampo(ACampos, retornoErros, 'dadosTrabalhador', 'Informações Pessoais do Trabalhador');
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
   AddCampo(ACampos, retornoErros, 'aposentadoria', 'Informação de aposentadoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'contato', 'Informações de Contato');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'dtAlteracao', 'data da alteração das informações');
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
   AddCampo(ACampos, retornoErros, 'categoriaCnh', 'Categoria da CNH');
   AddCampo(ACampos, retornoErros, 'tpLograd', 'Tipo de Logradouro');
   AddCampo(ACampos, retornoErros, 'cep', 'Código de Endereçamento Postal - CEP');
   AddCampo(ACampos, retornoErros, 'codMunic', 'código do município');
   AddCampo(ACampos, retornoErros, 'uf', 'sigla da Unidade da Federação');
   AddCampo(ACampos, retornoErros, 'paisResid', 'código do país');
   AddCampo(ACampos, retornoErros, 'dscLograd', 'Descrição do logradouro');
   AddCampo(ACampos, retornoErros, 'nrLograd', 'Número do logradouro');
   AddCampo(ACampos, retornoErros, 'complemento', 'Complemento do logradouro');
   AddCampo(ACampos, retornoErros, 'bairro', 'Nome do bairro/distrito');
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
   AddCampo(ACampos, retornoErros, 'infoCota', 'Informar se o trabalhador preenche cota de pessoas com deficiência habilitadas ou de beneficiários reabilitados');
   AddCampo(ACampos, retornoErros, 'observacao', 'Observação');
   AddCampo(ACampos, retornoErros, 'tpDep', 'Tipo de dependente');
   AddCampo(ACampos, retornoErros, 'nmDep', 'Nome do dependente');
   AddCampo(ACampos, retornoErros, 'dtNascto', 'Preencher com a data de nascimento');
   AddCampo(ACampos, retornoErros, 'cpfDep', 'Número de Inscrição no CPF');
   AddCampo(ACampos, retornoErros, 'depIRRF', 'Informar se é dependente do trabalhador para fins de dedução de seu rendimento tributável pelo Imposto de Renda');
   AddCampo(ACampos, retornoErros, 'depSF', 'Informar se é dependente para fins de recebimento do benefício de saláriofamília');
   AddCampo(ACampos, retornoErros, 'incTrab', 'Informar se o dependente tem incapacidade física ou mental para o trabalho');
   AddCampo(ACampos, retornoErros, 'trabAposent', 'Informar se o trabalhador já recebe o benefício previdenciário da aposentadoria por tempo de contribuição ou por idade');
   AddCampo(ACampos, retornoErros, 'fonePrinc', 'Número de telefone do trabalhador, com DDD');
   AddCampo(ACampos, retornoErros, 'foneAlternat', 'Número de telefone alternativo do trabalhador, com DDD');
   AddCampo(ACampos, retornoErros, 'emailPrinc', 'Endereço eletrônico');
   AddCampo(ACampos, retornoErros, 'emailAlternat', 'Endereço eletrônico alternativo');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.