unit UntCamposTab1000 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1000 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1000 }

constructor TCamposTab1000.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1000.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1000.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtInfoEmpregador', 'Evento de informações do empregador');
   AddCampo(ACampos, retornoErros, 'ideEvento', 'Informações de Identificação do Evento');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'infoEmpregador', 'Informações do Empregador');
   AddCampo(ACampos, retornoErros, 'idePeriodo', 'Período de validade das informações incluídas');
   AddCampo(ACampos, retornoErros, 'infoCadastro', 'Informações do empregador');
   AddCampo(ACampos, retornoErros, 'dadosIsencao', 'Informações Complementares - Empresas Isentas - Dados da Isenção');
   AddCampo(ACampos, retornoErros, 'contato', 'Informações de contato');
   AddCampo(ACampos, retornoErros, 'infoOP', 'Informações relativas a Órgãos Públicos');
   AddCampo(ACampos, retornoErros, 'infoEFR', 'Informações relativas a Ente Federativo Responsável - EFR');
   AddCampo(ACampos, retornoErros, 'infoEnte', 'Informações relativas ao ente federativo estadual, distrital ou municipal');
   AddCampo(ACampos, retornoErros, 'infoOrgInternacional', 'Informações exclusivas de organismos internacionais e outras instituições extraterritoriais');
   AddCampo(ACampos, retornoErros, 'softwareHouse', 'Informações do desenvolvedor do Software');
   AddCampo(ACampos, retornoErros, 'infoComplementares', 'Informações complementares sobre o declarante');
   AddCampo(ACampos, retornoErros, 'situacaoPJ', 'Informações Complementares - Pessoa Jurídica');
   AddCampo(ACampos, retornoErros, 'situacaoPF', 'Informações Complementares - Pessoa Física');
   AddCampo(ACampos, retornoErros, 'alteracao', 'Alteração das informações');
   AddCampo(ACampos, retornoErros, 'novaValidade', 'Novo período de validade das informações');
   AddCampo(ACampos, retornoErros, 'exclusao', 'Exclusão das informações');
   AddCampo(ACampos, retornoErros, 'tpAmb', 'Identificação do ambiente');
   AddCampo(ACampos, retornoErros, 'procEmi', 'Processo de emissão do evento');
   AddCampo(ACampos, retornoErros, 'verProc', 'Versão do processo de emissão do evento');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'Preencher com o código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'Informar o número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo');
   AddCampo(ACampos, retornoErros, 'uf', 'Preencher com a sigla da Unidade da Federação');
   AddCampo(ACampos, retornoErros, 'telefone', 'Informar o número do telefone, com DDD');
   AddCampo(ACampos, retornoErros, 'email', 'Endereço eletrônico');
   AddCampo(ACampos, retornoErros, 'iniValid', 'Preencher com o mês e ano de início da validade das informações prestadas no evento, no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'fimValid', 'Preencher com o mês e ano de término da validade das informações, se houver');
   AddCampo(ACampos, retornoErros, 'classTrib', 'código correspondente à classificação tributária do contribuinte');
   AddCampo(ACampos, retornoErros, 'natJurid', 'código da Natureza Jurídica do Contribuinte');
   AddCampo(ACampos, retornoErros, 'indCoop', 'Indicativo de Cooperativa');
   AddCampo(ACampos, retornoErros, 'indConstr', 'Indicativo de Construtora');
   AddCampo(ACampos, retornoErros, 'indDesFolha', 'Indicativo de Desoneração da Folha');
   AddCampo(ACampos, retornoErros, 'indOpcCP', 'Indicativo da opção pelo produtor rural pela forma de tributação da contribuição previdenciária');
   AddCampo(ACampos, retornoErros, 'indPorte', 'Indicativo de microempresa (ME) ou empresa de pequeno porte (EPP) para permissão de acesso ao módulo simplificado (não preencher caso o usuário não se enquadre como micro ou pequena empresa)');
   AddCampo(ACampos, retornoErros, 'indOptRegEletron', 'Indica se houve opção pelo registro eletrônico de empregados');
   AddCampo(ACampos, retornoErros, 'indEntEd', 'Indicativo de entidade educativa sem fins lucrativos');
   AddCampo(ACampos, retornoErros, 'indEtt', 'Indicativo de Empresa de Trabalho Temporário (Lei n° 6.019/1974), com registro no Ministério do Trabalho');
   AddCampo(ACampos, retornoErros, 'nrRegEtt', 'Número do registro da Empresa de Trabalho Temporário no Ministério do Trabalho');
   AddCampo(ACampos, retornoErros, 'ideMinLei', 'Sigla e nome do Ministério ou Lei que concedeu o Certificado');
   AddCampo(ACampos, retornoErros, 'nrCertif', 'Número do Certificado de Entidade Beneficente de Assistência Social, número da portaria de concessão do Certificado, ou, no caso de concessão através de Lei específica, o número da Lei');
   AddCampo(ACampos, retornoErros, 'dtEmisCertif', 'Data de Emissão do Certificado/publicação da Lei');
   AddCampo(ACampos, retornoErros, 'dtVencCertif', 'Data de vencimento do certificado');
   AddCampo(ACampos, retornoErros, 'nrProtRenov', 'Número do protocolo do pedido de renovação');
   AddCampo(ACampos, retornoErros, 'dtProtRenov', 'Data do protocolo de renovação');
   AddCampo(ACampos, retornoErros, 'dtDou', 'data de publicação no Diário Oficial da União.');
   AddCampo(ACampos, retornoErros, 'pagDou', 'número da página no DOU referente à publicação do documento de concessão do certificado');
   AddCampo(ACampos, retornoErros, 'nmCtt', 'Nome do contato na empresa');
   AddCampo(ACampos, retornoErros, 'cpfCtt', 'CPF do contato');
   AddCampo(ACampos, retornoErros, 'foneFixo', 'número do telefone, com DDD');
   AddCampo(ACampos, retornoErros, 'foneCel', 'Telefone celular, com DDD.');
   AddCampo(ACampos, retornoErros, 'nrSiafi', 'número SIAFI - Sistema Integrado de Administração Financeira');
   AddCampo(ACampos, retornoErros, 'ideEFR', 'Informar se o Órgão Público é o Ente Federativo Responsável - EFR ou se é uma unidade administrativa autônoma vinculada a um EFR');
   AddCampo(ACampos, retornoErros, 'cnpjEFR', 'CNPJ do Ente Federativo Responsável - EFR');
   AddCampo(ACampos, retornoErros, 'nmEnte', 'Nome do Ente Federativo ao qual o órgão está vinculado');
   AddCampo(ACampos, retornoErros, 'codMunic', 'código do município, conforme tabela do IBGE');
   AddCampo(ACampos, retornoErros, 'indRPPS', 'Informar se o ente público possui Regime Próprio de Previdência Social - RPPS');
   AddCampo(ACampos, retornoErros, 'subteto', 'Preencher com o poder a que se refere o subteto');
   AddCampo(ACampos, retornoErros, 'vrSubteto', 'Preencher com o valor do subteto do Ente Federativo');
   AddCampo(ACampos, retornoErros, 'indAcordoIsenMulta', 'Indicativo da existência de acordo internacional para isenção de multa');
   AddCampo(ACampos, retornoErros, 'cnpjSoftHouse', 'CNPJ da empresa desenvolvedora do software. Se o software foi desenvolvido pelo próprio empregador, informar o CNPJ do estabelecimento do empregador responsável pelo desenvolvimento');
   AddCampo(ACampos, retornoErros, 'nmRazao', 'Informar a razão social, no caso de pessoa jurídica ou órgão público');
   AddCampo(ACampos, retornoErros, 'nmCont', 'Nome do contato na empresa');
   AddCampo(ACampos, retornoErros, 'indSitPJ', 'Indicativo da Situação da Pessoa Jurídica');
   AddCampo(ACampos, retornoErros, 'indSitPF', 'Indicativo da Situação da Pessoa Física');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.