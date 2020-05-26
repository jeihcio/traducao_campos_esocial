unit UntCamposTab2200 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2200 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2200 }

constructor TCamposTab2200.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2200.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2200.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtAdmissao', 'Evento Cadastramento Inicial do Vínculo e Admissão / Ingresso de Trabalhador');
   AddCampo(ACampos, retornoErros, 'ideEvento', 'Informações de Identificação do Evento');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'Número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'procEmi', 'Processo de emissão do evento');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'Código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'Número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'trabalhador', 'Informações Pessoais do Trabalhador');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'Número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'nmTrab', 'Nome do Trabalhador');
   AddCampo(ACampos, retornoErros, 'sexo', 'Sexo do Trabalhador');
   AddCampo(ACampos, retornoErros, 'racaCor', 'Raça e cor do trabalhador');
   AddCampo(ACampos, retornoErros, 'estCiv', 'Estado civil do trabalhador');
   AddCampo(ACampos, retornoErros, 'grauInstr', 'Grau de instrução do trabalhador');
   AddCampo(ACampos, retornoErros, 'indPriEmpr', 'Indicar caso se trate do primeiro emprego do trabalhador');
   AddCampo(ACampos, retornoErros, 'nmSoc', 'Nome social para travesti ou transexual.');
   AddCampo(ACampos, retornoErros, 'nascimento', 'Grupo de informações do nascimento do trabalhador');
   AddCampo(ACampos, retornoErros, 'dtNascto', 'Data de nascimento');
   AddCampo(ACampos, retornoErros, 'codMunic', 'Código do município, conforme tabela do IBGE');
   AddCampo(ACampos, retornoErros, 'uf', 'Sigla da Unidade da Federação');
   AddCampo(ACampos, retornoErros, 'paisNascto', 'Código do país de nascimento do trabalhador');
   AddCampo(ACampos, retornoErros, 'paisNac', 'Código do país de nacionalidade do trabalhador');
   AddCampo(ACampos, retornoErros, 'nmMae', 'Nome da mãe');
   AddCampo(ACampos, retornoErros, 'nmPai', 'Nome do pai do trabalhador');
   AddCampo(ACampos, retornoErros, 'documentos', 'Informações dos documentos pessoais do trabalhador');
   AddCampo(ACampos, retornoErros, 'CTPS', 'Informações da Carteira de Trabalho e Previdência Social');
   AddCampo(ACampos, retornoErros, 'nrCtps', 'CTPS');
   AddCampo(ACampos, retornoErros, 'serieCtps', 'Número de série da CTPS');
   AddCampo(ACampos, retornoErros, 'ufCtps', 'UF da expedição da CTPS');
   AddCampo(ACampos, retornoErros, 'RIC', 'Informações do Documento Nacional de Identidade - DNI (Registro de Identificação Civil - RIC).');
   AddCampo(ACampos, retornoErros, 'nrRic', 'Número do Documento Nacional de Identidade - DNI');
   AddCampo(ACampos, retornoErros, 'orgaoEmissor', 'Órgão e UF de emissão');
   AddCampo(ACampos, retornoErros, 'dtExped', 'Data da expedição do documento');
   AddCampo(ACampos, retornoErros, 'RG', 'Informações do Registro Geral (RG)');
   AddCampo(ACampos, retornoErros, 'nrRg', 'RG');
   AddCampo(ACampos, retornoErros, 'RNE', 'Informações do Registro Nacional de Estrangeiro.');
   AddCampo(ACampos, retornoErros, 'nrRne', 'Número de inscrição no Registro Nacional de Estrangeiros');
   AddCampo(ACampos, retornoErros, 'OC', 'Informações do número de registro em Órgão de Classe (OC)');
   AddCampo(ACampos, retornoErros, 'nrOc', 'Número de inscrição no órgão de classe');
   AddCampo(ACampos, retornoErros, 'dtValid', 'Data de validade');
   AddCampo(ACampos, retornoErros, 'CNH', 'Informações da Carteira Nacional de Habilitação (CNH)');
   AddCampo(ACampos, retornoErros, 'nrRegCnh', 'Número do Registro da Carteira Nacional de Habilitação - CNH');
   AddCampo(ACampos, retornoErros, 'ufCnh', 'Estado da Federação emissor da CNH.');
   AddCampo(ACampos, retornoErros, 'dtPriHab', 'Data da primeira habilitação');
   AddCampo(ACampos, retornoErros, 'categoriaCnh', 'Categoria da CNH');
   AddCampo(ACampos, retornoErros, 'endereco', 'Grupo de informações do endereço do Trabalhador');
   AddCampo(ACampos, retornoErros, 'brasil', 'Preenchimento obrigatório para trabalhador residente no Brasil');
   AddCampo(ACampos, retornoErros, 'tpLograd', 'Tipo de Logradouro');
   AddCampo(ACampos, retornoErros, 'dscLograd', 'Descrição do logradouro');
   AddCampo(ACampos, retornoErros, 'nrLograd', 'Número do logradouro. Se não houver número a ser informado, preencher com "S/N".');
   AddCampo(ACampos, retornoErros, 'complemento', 'Complemento do logradouro');
   AddCampo(ACampos, retornoErros, 'bairro', 'Nome do bairro/distrito');
   AddCampo(ACampos, retornoErros, 'cep', 'Código de Endereçamento Postal - CEP');
   AddCampo(ACampos, retornoErros, 'exterior', 'Preenchido em caso de trabalhador residente no exterior');
   AddCampo(ACampos, retornoErros, 'paisResid', 'Código do país');
   AddCampo(ACampos, retornoErros, 'nmCid', 'Nome da Cidade');
   AddCampo(ACampos, retornoErros, 'codPostal', 'Código de Endereçamento Postal');
   AddCampo(ACampos, retornoErros, 'trabEstrangeiro', 'Grupo de informações do Trabalhador Estrangeiro');
   AddCampo(ACampos, retornoErros, 'dtChegada', 'Data de chegada do trabalhador ao Brasil, em caso de estrangeiro');
   AddCampo(ACampos, retornoErros, 'classTrabEstrang', 'Classificação da condição de ingresso do trabalhador estrangeiro no Brasil');
   AddCampo(ACampos, retornoErros, 'casadoBr', 'Casado com brasileiro(a)');
   AddCampo(ACampos, retornoErros, 'filhosBr', 'Indicar se o trabalhador estrangeiro tem filhos brasileiros');
   AddCampo(ACampos, retornoErros, 'infoDeficiencia', 'Pessoa com Deficiência');
   AddCampo(ACampos, retornoErros, 'defFisica', 'Deficiência Física');
   AddCampo(ACampos, retornoErros, 'defVisual', 'Deficiência visual');
   AddCampo(ACampos, retornoErros, 'defAuditiva', 'Deficiência auditiva');
   AddCampo(ACampos, retornoErros, 'defMental', 'Deficiência Mental');
   AddCampo(ACampos, retornoErros, 'defIntelectual', 'Deficiência Intelectual');
   AddCampo(ACampos, retornoErros, 'reabReadap', 'Informar se o trabalhador é reabilitado (empregado) ou readaptado (servidor público/militar)');
   AddCampo(ACampos, retornoErros, 'infoCota', 'Informar se o trabalhador preenche cota de pessoas com deficiência habilitadas ou de beneficiários reabilitados');
   AddCampo(ACampos, retornoErros, 'observacao', 'Observação');
   AddCampo(ACampos, retornoErros, 'dependente', 'Informações dos dependentes');
   AddCampo(ACampos, retornoErros, 'tpDep', 'Tipo de dependente');
   AddCampo(ACampos, retornoErros, 'nmDep', 'Nome do dependente');
   AddCampo(ACampos, retornoErros, 'cpfDep', 'Número de Inscrição no CPF');
   AddCampo(ACampos, retornoErros, 'depIRRF', 'Informar se é dependente do trabalhador para fins de dedução de seu rendimento tributável pelo Imposto de Renda');
   AddCampo(ACampos, retornoErros, 'depSF', 'Informar se é dependente para fins de recebimento do benefício de salário família');
   AddCampo(ACampos, retornoErros, 'incTrab', 'Informar se o dependente tem incapacidade física ou mental para o trabalho');
   AddCampo(ACampos, retornoErros, 'aposentadoria', 'Informação de aposentadoria do trabalhador.');
   AddCampo(ACampos, retornoErros, 'trabAposent', 'Informar se o trabalhador já recebe o benefício previdenciário da aposentadoria por tempo de contribuição ou por idade');
   AddCampo(ACampos, retornoErros, 'contato', 'Informações de Contato');
   AddCampo(ACampos, retornoErros, 'fonePrinc', 'Número de telefone do trabalhador, com DDD');
   AddCampo(ACampos, retornoErros, 'foneAlternat', 'Número de telefone alternativo do trabalhador, com DDD');
   AddCampo(ACampos, retornoErros, 'emailPrinc', 'Endereço eletrônico');
   AddCampo(ACampos, retornoErros, 'emailAlternat', 'Endereço eletrônico alternativo');
   AddCampo(ACampos, retornoErros, 'vinculo', 'Grupo de informações do vínculo');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'tpRegTrab', 'Tipo de regime trabalhista');
   AddCampo(ACampos, retornoErros, 'tpRegPrev', 'Tipo de regime previdenciário');
   AddCampo(ACampos, retornoErros, 'nrRecInfPrelim', 'Número do recibo do evento S-2190 - Admissão de Trabalhador - Registro Preliminar, caso o mesmo tenha sido enviado');
   AddCampo(ACampos, retornoErros, 'cadIni', 'Indicar se o evento se refere a cadastramento inicial de vínculo (o ingresso do trabalhador no empregador declarante, por admissão ou transferência, é anterior à data de início da obrigatoriedade de envio de seus eventos não periódicos)' + ' ou se refere a uma admissão (o ingresso do trabalhador no empregador declarante é igual ou posterior à data de início de obrigatoriedade de envio de seus eventos não periódicos)');
   AddCampo(ACampos, retornoErros, 'infoRegimeTrab', 'Informações do regime trabalhista');
   AddCampo(ACampos, retornoErros, 'infoCeletista', 'Informações de Trabalhador Celetista');
   AddCampo(ACampos, retornoErros, 'dtAdm', 'Preencher com a data de admissão do trabalhador');
   AddCampo(ACampos, retornoErros, 'tpAdmissao', 'Tipo de admissão do trabalhador');
   AddCampo(ACampos, retornoErros, 'indAdmissao', 'Indicativo de Admissão');
   AddCampo(ACampos, retornoErros, 'tpRegJor', 'Identifica o regime de jornada do empregado');
   AddCampo(ACampos, retornoErros, 'natAtividade', 'Natureza da atividade');
   AddCampo(ACampos, retornoErros, 'dtBase', 'Mês relativo à data base da categoria profissional do trabalhador');
   AddCampo(ACampos, retornoErros, 'cnpjSindCategProf', 'Preencher com o CNPJ do sindicato representativo da categoria (Preponderante ou Diferenciada)');
   AddCampo(ACampos, retornoErros, 'FGTS', 'Informações do Fundo de Garantia do Tempo de Serviço - FGTS');
   AddCampo(ACampos, retornoErros, 'opcFGTS', 'Opção pelo FGTS');
   AddCampo(ACampos, retornoErros, 'dtOpcFGTS', 'Informar a data de opção do trabalhador pelo FGTS');
   AddCampo(ACampos, retornoErros, 'trabTemporario', 'Dados sobre trabalho temporário. Preenchimento obrigatório na contratação de trabalhador temporário');
   AddCampo(ACampos, retornoErros, 'hipLeg', 'Hipótese legal para contratação de trabalhador temporário');
   AddCampo(ACampos, retornoErros, 'justContr', 'Descrição do fato determinado que, no caso concreto, justifica a hipótese legal para a contratação de trabalho temporário. O prazo de contratação do trabalho temporário deve ser compatível com o motivo justificador alegado');
   AddCampo(ACampos, retornoErros, 'tpInclContr', 'Informar o tipo de inclusão de contrato');
   AddCampo(ACampos, retornoErros, 'ideTomadorServ', 'Identifica a empresa contratante para a qual o trabalhador temporário será alocado');
   AddCampo(ACampos, retornoErros, 'ideEstabVinc', 'Identificação do estabelecimento ao qual o trabalhador temporário está vinculado. Se o local da efetiva prestação do serviço não possuir inscrição deverá ser informado o CNPJ/CPF ao qual o local da efetiva prestação está vinculado');
   AddCampo(ACampos, retornoErros, 'ideTrabSubstituido', 'Identificação do(s) trabalhador(es) substituído(s)');
   AddCampo(ACampos, retornoErros, 'cpfTrabSubst', 'CPF do trabalhador substituído');
   AddCampo(ACampos, retornoErros, 'aprend', 'Informações para identificação do empregador contratante de aprendiz. Preenchimento obrigatório na contratação de aprendiz por entidade educativa sem fins lucrativos que tenha por objetivo a assistência ao adolescente' + ' e à educação profissional (art. 430, inciso II, CLT) ou por entidade de prática desportiva filiada ao Sistema Nacional do Desporto ou a Sistema de Desporto de Estado, do Distrito Federal ou de Município (art. 430, inciso III, CLT)');
   AddCampo(ACampos, retornoErros, 'infoEstatutario', 'Informações de Trabalhador Estatutário');
   AddCampo(ACampos, retornoErros, 'indProvim', 'Preencher de acordo com as opções (Normal ou Decorrente de Decisão Judicial)');
   AddCampo(ACampos, retornoErros, 'tpProv', 'Tipo de provimento');
   AddCampo(ACampos, retornoErros, 'dtNomeacao', 'Data da nomeação do servidor');
   AddCampo(ACampos, retornoErros, 'dtPosse', 'Data da posse do servidor');
   AddCampo(ACampos, retornoErros, 'dtExercicio', 'Data da entrada em exercício pelo servidor');
   AddCampo(ACampos, retornoErros, 'tpPlanRP', 'Tipo de plano de segregação da massa');
   AddCampo(ACampos, retornoErros, 'infoDecJud', 'Informações sobre os dados da decisão judicial');
   AddCampo(ACampos, retornoErros, 'nrProcJud', 'Informar o número do processo da decisão judicial');
   AddCampo(ACampos, retornoErros, 'infoContrato', 'Informações do Contrato de Trabalho');
   AddCampo(ACampos, retornoErros, 'codCargo', 'Código do cargo');
   AddCampo(ACampos, retornoErros, 'codFuncao', 'Código da função, se utilizado pelo empregador');
   AddCampo(ACampos, retornoErros, 'codCateg', 'Código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'codCarreira', 'Código da carreira pública');
   AddCampo(ACampos, retornoErros, 'dtIngrCarr', 'Data de ingresso na carreira identificada em {codCarreira}');
   AddCampo(ACampos, retornoErros, 'remuneracao', 'Informações da remuneração e periodicidade de pagamento');
   AddCampo(ACampos, retornoErros, 'vrSalFx', 'Salário base do trabalhador, correspondente à parte fixa da remuneração');
   AddCampo(ACampos, retornoErros, 'undSalFixo', 'Unidade de pagamento da parte fixa da remuneração');
   AddCampo(ACampos, retornoErros, 'dscSalVar', 'Descrição do salário por tarefa ou variável e como este é calculado');
   AddCampo(ACampos, retornoErros, 'tpContr', 'Tipo de contrato de trabalho');
   AddCampo(ACampos, retornoErros, 'dtTerm', 'Data do Término');
   AddCampo(ACampos, retornoErros, 'clauAssec', 'Indicar se o contrato por prazo determinado contém cláusula assecuratória do direito recíproco de rescisão antes da data de seu término');
   AddCampo(ACampos, retornoErros, 'objDet', 'Indicação do objeto determinante da contratação por prazo determinado (obra, serviço, safra, etc.)');
   AddCampo(ACampos, retornoErros, 'localTrabalho', 'Informações do local de trabalho');
   AddCampo(ACampos, retornoErros, 'localTrabGeral', 'Estabelecimento (CNPJ, CNO, CAEPF) onde o trabalhador (exceto doméstico e temporário) exercerá suas atividades. Caso o trabalhador exerça suas atividades em ' + 'instalações de terceiros, este campo deve ser preenchido com o estabelecimento do próprio empregador ao qual o trabalhador esteja vinculado');
   AddCampo(ACampos, retornoErros, 'descComp', 'Descrição complementar do local de trabalho');
   AddCampo(ACampos, retornoErros, 'localTrabDom', 'Registro preenchido exclusivamente em caso de trabalhador doméstico e trabalhador temporário, indicando o endereço onde o trabalhador exerce suas atividades');
   AddCampo(ACampos, retornoErros, 'horContratual', 'Informações do Horário Contratual do Trabalhador. O preenchimento é obrigatório se {tpRegJor} = [1]');
   AddCampo(ACampos, retornoErros, 'qtdHrsSem', 'Quantidade média de horas relativas à jornada semanal do trabalhador');
   AddCampo(ACampos, retornoErros, 'tpJornada', 'Tipo da Jornada');
   AddCampo(ACampos, retornoErros, 'dscTpJorn', 'Descrição do tipo de jornada');
   AddCampo(ACampos, retornoErros, 'tmpParc', 'Código relativo ao tipo de contrato em tempo parcial');
   AddCampo(ACampos, retornoErros, 'horario', 'Informações diárias do horário contratual');
   AddCampo(ACampos, retornoErros, 'dia', 'Código relativo ao dia do horário');
   AddCampo(ACampos, retornoErros, 'codHorContrat', 'Código atribuído pela empresa para o Horário Contratual');
   AddCampo(ACampos, retornoErros, 'filiacaoSindical', 'Filiação Sindical do Trabalhador');
   AddCampo(ACampos, retornoErros, 'cnpjSindTrab', 'CNPJ do sindicato ao qual o trabalhador encontra-se filiado');
   AddCampo(ACampos, retornoErros, 'alvaraJudicial', 'Alvará judicial em caso de contratação de menores de 14 anos, em qualquer categoria, e de maiores de 14 e menores de 16, em categoria diferente de "Aprendiz"');
   AddCampo(ACampos, retornoErros, 'sucessaoVinc', 'Grupo de informações da sucessão de vínculo trabalhista/estatutário');
   AddCampo(ACampos, retornoErros, 'tpInscAnt', 'Código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'cnpjEmpregAnt', 'Informar o número de inscrição do empregador anterior, de acordo com o tipo de inscrição indicado no campo {tpInscAnt}.');
   AddCampo(ACampos, retornoErros, 'matricAnt', 'Matrícula do trabalhador no empregador anterior');
   AddCampo(ACampos, retornoErros, 'transfDom', 'Informações do empregado doméstico transferido de outro representante da mesma unidade familiar.');
   AddCampo(ACampos, retornoErros, 'cpfSubstituido', 'Número do CPF do representante anterior da unidade familiar');
   AddCampo(ACampos, retornoErros, 'dtTransf', 'Data da transferência do vínculo');
   AddCampo(ACampos, retornoErros, 'mudancaCPF', 'Informações de mudança de CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'cpfAnt', 'Preencher com o número do CPF antigo do trabalhador');
   AddCampo(ACampos, retornoErros, 'dtAltCPF', 'Data de alteração do CPF');
   AddCampo(ACampos, retornoErros, 'afastamento', 'Informações de afastamento do trabalhador. Preenchimento exclusivo em caso de trabalhador que permaneça afastado na data de início da ' + 'obrigatoriedade dos eventos não periódicos para o empregador no eSocial ou na data de transferência ou alteração de CPF do empregado');
   AddCampo(ACampos, retornoErros, 'dtIniAfast', 'Data de início do afastamento.');
   AddCampo(ACampos, retornoErros, 'codMotAfast', 'Código do motivo de afastamento temporário');
   AddCampo(ACampos, retornoErros, 'desligamento', 'Informações do desligamento do trabalhador');
   AddCampo(ACampos, retornoErros, 'dtDeslig', 'Preencher com a data do último dia trabalhado para o respectivo vínculo');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.