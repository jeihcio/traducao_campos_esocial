unit UntCamposTab2306 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2306 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2306 }

constructor TCamposTab2306.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2306.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2306.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtTSVAltContr', 'TSVE - Alteração Contratual');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideTrabSemVinculo', 'Identificação do Trabalhador Sem Vínculo de Emprego');
   AddCampo(ACampos, retornoErros, 'infoTSVAlteracao', 'Trabalhador Sem Vínculo de Emprego - Alteração Contratual');
   AddCampo(ACampos, retornoErros, 'infoComplementares', 'Informações complementares');
   AddCampo(ACampos, retornoErros, 'cargoFuncao', 'Cargo/Função ocupado pelo Trabalhador Sem Vínculo');
   AddCampo(ACampos, retornoErros, 'remuneracao', 'Informações da remuneração e periodicidade de pagamento');
   AddCampo(ACampos, retornoErros, 'infoEstagiario', 'Informações do estagiário');
   AddCampo(ACampos, retornoErros, 'instEnsino', 'Instituição de Ensino');
   AddCampo(ACampos, retornoErros, 'ageIntegracao', 'Agente de Integração');
   AddCampo(ACampos, retornoErros, 'supervisorEstagio', 'Supervisor do Estágio');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'dtAlteracao', 'data da alteração das informações');
   AddCampo(ACampos, retornoErros, 'natAtividade', 'Natureza da atividade');
   AddCampo(ACampos, retornoErros, 'codCargo', 'código do cargo');
   AddCampo(ACampos, retornoErros, 'codFuncao', 'código da função, se utilizado pelo empregador');
   AddCampo(ACampos, retornoErros, 'vrSalFx', 'Salário base do trabalhador, correspondente à parte fixa da remuneração');
   AddCampo(ACampos, retornoErros, 'undSalFixo', 'Unidade de pagamento da parte fixa da remuneração');
   AddCampo(ACampos, retornoErros, 'dscSalVar', 'Descrição do salário por tarefa ou variável e como este é calculado');
   AddCampo(ACampos, retornoErros, 'natEstagio', 'Natureza do Estágio');
   AddCampo(ACampos, retornoErros, 'nivEstagio', 'Informar o nível do estágio');
   AddCampo(ACampos, retornoErros, 'areaAtuacao', 'Área de atuação do estagiário');
   AddCampo(ACampos, retornoErros, 'nrApol', 'Nr. Apólice de Seguro');
   AddCampo(ACampos, retornoErros, 'vlrBolsa', 'valor da bolsa, se o estágio for remunerado');
   AddCampo(ACampos, retornoErros, 'dtPrevTerm', 'Data prevista para o término do estágio');
   AddCampo(ACampos, retornoErros, 'cnpjInstEnsino', 'cnpj da instituição de ensino');
   AddCampo(ACampos, retornoErros, 'uf', 'sigla da Unidade da Federação');
   AddCampo(ACampos, retornoErros, 'cnpjAgntInteg', 'CNPJ do agente de integração');
   AddCampo(ACampos, retornoErros, 'nmRazao', 'Informar a razão social');
   AddCampo(ACampos, retornoErros, 'dscLograd', 'Descrição do logradouro');
   AddCampo(ACampos, retornoErros, 'nrLograd', 'Número do logradouro');
   AddCampo(ACampos, retornoErros, 'bairro', 'Nome do bairro/distrito');
   AddCampo(ACampos, retornoErros, 'cep', 'Código de Endereçamento Postal - CEP');
   AddCampo(ACampos, retornoErros, 'codMunic', 'código do município, conforme tabela do IBGE');
   AddCampo(ACampos, retornoErros, 'cpfSupervisor', 'CPF do responsável pela supervisão do estagiário');
   AddCampo(ACampos, retornoErros, 'nmSuperv', 'Nome do Supervisor do Estágio');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.