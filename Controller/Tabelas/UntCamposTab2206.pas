unit UntCamposTab2206 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2206 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2206 }

constructor TCamposTab2206.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2206.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2206.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtAltContratual', 'Evento Alteração Contratual');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideVinculo', 'Informações de Identificação do Trabalhador e do Vínculo');
   AddCampo(ACampos, retornoErros, 'altContratual', 'Informações do Contrato de Trabalho');
   AddCampo(ACampos, retornoErros, 'vinculo', 'Informações do vinculo');
   AddCampo(ACampos, retornoErros, 'infoRegimeTrab', 'Informações do regime trabalhista');
   AddCampo(ACampos, retornoErros, 'infoCeletista', 'Informações de Trabalhador Celetista');
   AddCampo(ACampos, retornoErros, 'trabTemp', 'Dados sobre trabalho temporário');
   AddCampo(ACampos, retornoErros, 'aprend', 'Informações relacionadas ao aprendiz');
   AddCampo(ACampos, retornoErros, 'infoEstatutario', 'Informações de Trabalhador Estatutário');
   AddCampo(ACampos, retornoErros, 'infoContrato', 'Informações do Contrato de Trabalho');
   AddCampo(ACampos, retornoErros, 'remuneracao', 'Informações da remuneração e periodicidade de pagamento');
   AddCampo(ACampos, retornoErros, 'duracao', 'Duração do Contrato de Trabalho');
   AddCampo(ACampos, retornoErros, 'localTrabalho', 'Informações do local de trabalho');
   AddCampo(ACampos, retornoErros, 'localTrabGeral', 'Estabelecimento onde o trabalhador exercerá suas atividades');
   AddCampo(ACampos, retornoErros, 'localTrabDom', 'Endereço de trabalho do trabalhador doméstico e trabalhador temporário');
   AddCampo(ACampos, retornoErros, 'horContratual', 'Informações do Horário Contratual do Trabalhador');
   AddCampo(ACampos, retornoErros, 'horario', 'Informações diárias do horário contratual');
   AddCampo(ACampos, retornoErros, 'filiacaoSindical', 'Filiação Sindical do Trabalhador');
   AddCampo(ACampos, retornoErros, 'alvaraJudicial', 'Dados do Alvará Judicial');
   AddCampo(ACampos, retornoErros, 'observacoes', 'Observações do contrato de trabalho');
   AddCampo(ACampos, retornoErros, 'servPubl', 'Alterações inerentes ao servidor público');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'dtAlteracao', 'data da alteração das informações');
   AddCampo(ACampos, retornoErros, 'dtEf', 'Se a alteração foi fruto de lei, acordo coletivo, convenção coletiva ou sentença normativa, informar a data a partir da qual a alteração produz efeitos remuneratórios');
   AddCampo(ACampos, retornoErros, 'dscAlt', 'Descrição da alteração ou do instrumento que a gerou');
   AddCampo(ACampos, retornoErros, 'tpRegPrev', 'Tipo de regime previdenciário');
   AddCampo(ACampos, retornoErros, 'tpRegJor', 'regime de jornada do empregado');
   AddCampo(ACampos, retornoErros, 'natAtividade', 'Natureza da atividade');
   AddCampo(ACampos, retornoErros, 'dtBase', 'Mês relativo à data base da categoria profissional do trabalhador');
   AddCampo(ACampos, retornoErros, 'cnpjSindCategProf', 'CNPJ do sindicato representativo da categoria (Preponderante ou Diferenciada)');
   AddCampo(ACampos, retornoErros, 'justProrr', 'Descrever a justificativa para a prorrogação do contrato de trabalho temporário');
   AddCampo(ACampos, retornoErros, 'tpPlanRP', 'Tipo de plano de segregação da massa');
   AddCampo(ACampos, retornoErros, 'codCargo', 'código do cargo');
   AddCampo(ACampos, retornoErros, 'codFuncao', 'código da função, se utilizado pelo empregador');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'codCarreira', 'código da carreira pública');
   AddCampo(ACampos, retornoErros, 'dtIngrCarr', 'Data de ingresso na carreira identificada em {codCarreira}');
   AddCampo(ACampos, retornoErros, 'vrSalFx', 'Salário base do trabalhador, correspondente à parte fixa da remuneração');
   AddCampo(ACampos, retornoErros, 'undSalFixo', 'Unidade de pagamento da parte fixa da remuneração');
   AddCampo(ACampos, retornoErros, 'dscSalVar', 'Descrição do salário por tarefa ou variável e como este é calculado');
   AddCampo(ACampos, retornoErros, 'tpContr', 'Tipo de contrato de trabalho');
   AddCampo(ACampos, retornoErros, 'dtTerm', 'Data do Término');
   AddCampo(ACampos, retornoErros, 'objDet', 'Indicação do objeto determinante da contratação por prazo determinado (obra, serviço, safra, etc.)');
   AddCampo(ACampos, retornoErros, 'descComp', 'Descrição complementar do local de trabalho');
   AddCampo(ACampos, retornoErros, 'tpLograd', 'Tipo de Logradouro');
   AddCampo(ACampos, retornoErros, 'dscLograd', 'Descrição do logradouro');
   AddCampo(ACampos, retornoErros, 'nrLograd', 'Número do logradouro');
   AddCampo(ACampos, retornoErros, 'complemento', 'Complemento do logradouro');
   AddCampo(ACampos, retornoErros, 'bairro', 'Nome do bairro/distrito');
   AddCampo(ACampos, retornoErros, 'cep', 'Código de Endereçamento Postal - CEP');
   AddCampo(ACampos, retornoErros, 'codMunic', 'código do município, conforme tabela do IBGE');
   AddCampo(ACampos, retornoErros, 'uf', 'sigla da Unidade da Federação');
   AddCampo(ACampos, retornoErros, 'qtdHrsSem', 'Quantidade média de horas relativas à jornada semanal do trabalhador');
   AddCampo(ACampos, retornoErros, 'tpJornada', 'Tipo da Jornada');
   AddCampo(ACampos, retornoErros, 'dscTpJorn', 'Descrição do tipo de jornada');
   AddCampo(ACampos, retornoErros, 'tmpParc', 'código relativo ao tipo de contrato em tempo parcial');
   AddCampo(ACampos, retornoErros, 'dia', 'código relativo ao dia do horário');
   AddCampo(ACampos, retornoErros, 'codHorContrat', 'código atribuído pela empresa para o Horário Contratual');
   AddCampo(ACampos, retornoErros, 'cnpjSindTrab', 'CNPJ do sindicato ao qual o trabalhador encontra-se filiado');
   AddCampo(ACampos, retornoErros, 'nrProcJud', 'número do processo judicial');
   AddCampo(ACampos, retornoErros, 'observacao', 'Observação relacionada ao contrato de trabalho');
   AddCampo(ACampos, retornoErros, 'mtvAlter', 'motivo da alteração do cargo ou função');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.