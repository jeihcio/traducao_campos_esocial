unit UntCamposTab1005 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1005 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1005 }

constructor TCamposTab1005.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1005.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1005.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do estabelecimento, obra de construção civil ou órgão público de acordo com o tipo de inscrição indicado no campo');
   AddCampo(ACampos, retornoErros, 'iniValid', 'Preencher com o mês e ano de início da validade das informações prestadas no evento, no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'fimValid', 'Preencher com o mês e ano de término da validade das informações, se houver');
   AddCampo(ACampos, retornoErros, 'infoCaepf', 'Informações relativas ao Cadastro da Atividade Econômica da Pessoa Física - CAEPF');
   AddCampo(ACampos, retornoErros, 'tpCaepf', 'Tipo de CAEPF');
   AddCampo(ACampos, retornoErros, 'infoObra', 'Registro preenchido exclusivamente por empresa construtora, relacionando os estabelecimentos inscritos no CNO, para indicar a substituição ou não da contribuição patronal incidente sobre a remuneração dos trabalhadores de obra de construção civil');
   AddCampo(ACampos, retornoErros, 'indSubstPatrObra', 'Indicativo de Substituição da Contribuição Patronal de Obra de Construção Civil');
   AddCampo(ACampos, retornoErros, 'infoTrab', 'Informações Trabalhistas relativas ao estabelecimento');
   AddCampo(ACampos, retornoErros, 'regPt', 'Opção de registro de ponto (jornada) adotada pelo estabelecimento. Indicar o sistema de controle de ponto preponderante');
   AddCampo(ACampos, retornoErros, 'infoApr', 'Informações relacionadas à contratação de aprendiz');
   AddCampo(ACampos, retornoErros, 'contApr', 'Indicativo de contratação de aprendiz');
   AddCampo(ACampos, retornoErros, 'contEntEd', 'Informar se o estabelecimento realiza a contratação de aprendiz por intermédio de entidade educativa sem fins lucrativos');
   AddCampo(ACampos, retornoErros, 'infoEntEduc', 'Identificação da(s) entidade(s) educativa(s) ou de prática desportiva');
   AddCampo(ACampos, retornoErros, 'infoPCD', 'Informações sobre a contratação de pessoa com deficiência (PCD)');
   AddCampo(ACampos, retornoErros, 'contPCD', 'Indicativo de contratação de PCD');
   AddCampo(ACampos, retornoErros, 'nrProcJud', 'número do processo judicial');
   AddCampo(ACampos, retornoErros, 'ideEstab', 'Informações de identificação do estabelecimento, obra ou órgão público e período de validade das informações que estão sendo alteradas');
   AddCampo(ACampos, retornoErros, 'dadosEstab', 'Detalhamento das informações do estabelecimento, obra ou órgão público que está sendo alterado');
   AddCampo(ACampos, retornoErros, 'cnaePrep', 'Preencher com o código do CNAE conforme legislação vigente, referente à atividade econômica preponderante do estabelecimento');
   AddCampo(ACampos, retornoErros, 'aliqGilrat', 'Informações de Apuração da alíquota Gilrat do Estabelecimento');
   AddCampo(ACampos, retornoErros, 'aliqRat', 'Preencher com a alíquota definida na legislação vigente para a atividade (CNAE) preponderante');
   AddCampo(ACampos, retornoErros, 'fap', 'Fator Acidentário de Prevenção - FAP');
   AddCampo(ACampos, retornoErros, 'aliqRatAjust', 'Alíquota do RAT após ajuste pelo FAP');
   AddCampo(ACampos, retornoErros, 'procAdmJudRat', 'Registro que identifica, em caso de existência, o processo administrativo ou judicial em que houve decisão/sentença favorável ao contribuinte modificando a alíquota RAT da empresa');
   AddCampo(ACampos, retornoErros, 'tpProc', 'Preencher com o código correspondente ao tipo de processo');
   AddCampo(ACampos, retornoErros, 'nrProc', 'Informar um número de processo cadastrado através do evento S-1070');
   AddCampo(ACampos, retornoErros, 'codSusp', 'Código do Indicativo da Suspensão, atribuído pelo empregador');
   AddCampo(ACampos, retornoErros, 'procAdmJudFap', 'Registro que identifica, em caso de existência, o processo administrativo/judicial em que houve decisão ou sentença favorável ao contribuinte suspendendo ou alterando a alíquota FAP aplicável ao contribuinte');
   AddCampo(ACampos, retornoErros, 'novaValidade', 'Informação preenchida exclusivamente em caso de alteração do período de validade das informações do registro identificado no evento, apresentando o novo período de validade');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.