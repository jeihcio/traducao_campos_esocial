unit UntCamposTab1020 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1020 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1020 }

constructor TCamposTab1020.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1020.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1020.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de Inscrição (CNPJ, CPF, CNO) ao qual pertence a lotação tributária');
   AddCampo(ACampos, retornoErros, 'infoLotacao', 'Informações de FPAS e Terceiros relativas à lotação tributária');
   AddCampo(ACampos, retornoErros, 'iniValid', 'Preencher com o mês e ano de início da validade das informações prestadas no evento, no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'fimValid', 'Preencher com o mês e ano de término da validade das informações, se houver');
   AddCampo(ACampos, retornoErros, 'fpas', 'Preencher com o código relativo ao FPAS');
   AddCampo(ACampos, retornoErros, 'ideLotacao', 'Grupo de informações que identifica a lotação que será excluída');
   AddCampo(ACampos, retornoErros, 'codLotacao', 'Informar o código atribuído pela empresa para a lotação tributária');
   AddCampo(ACampos, retornoErros, 'dadosLotacao', 'Detalhamento das informações da lotação que está sendo incluída');
   AddCampo(ACampos, retornoErros, 'tpLotacao', 'código correspondente ao tipo de lotação');
   AddCampo(ACampos, retornoErros, 'fpasLotacao', 'Informações de FPAS e Terceiros relativas à lotação tributária');
   AddCampo(ACampos, retornoErros, 'codTercs', 'código de Terceiros');
   AddCampo(ACampos, retornoErros, 'codTercsSusp', 'código combinado dos Terceiros para os quais o recolhimento está suspenso em virtude de processos Judiciais');
   AddCampo(ACampos, retornoErros, 'infoProcJudTerceiros', 'Informações sobre a existência de processos judiciais, com sentença/decisão favorável ao contribuinte, relativos às contribuições destinadas a outras Entidades e Fundos');
   AddCampo(ACampos, retornoErros, 'procJudTerceiro', 'Identificação do Processo Judicial.');
   AddCampo(ACampos, retornoErros, 'codTerc', 'Informar o Código de Terceiro.');
   AddCampo(ACampos, retornoErros, 'nrProcJud', 'Informar um número de processo judicial cadastrado através do evento S1070');
   AddCampo(ACampos, retornoErros, 'codSusp', 'Código do Indicativo da Suspensão, atribuído pelo empregador em S-1070');
   AddCampo(ACampos, retornoErros, 'infoEmprParcial', 'Informação complementar que apresenta identificação do contratante e do proprietário de obra de construção civil contratada sob regime de empreitada parcial ou subempreitada');
   AddCampo(ACampos, retornoErros, 'tpInscContrat', 'Tipo de Inscrição do contratante');
   AddCampo(ACampos, retornoErros, 'nrInscContrat', 'Número de Inscrição (CNPJ/CPF) do contratante');
   AddCampo(ACampos, retornoErros, 'tpInscProp', 'Tipo de Inscrição do proprietário do CNO');
   AddCampo(ACampos, retornoErros, 'nrInscProp', 'número de inscrição (CNPJ/CPF) do proprietário do CNO');
   AddCampo(ACampos, retornoErros, 'novaValidade', 'Informação preenchida exclusivamente em caso de alteração do período de validade das informações da lotação identificada em {ideLotacao}, apresentando o novo período de validade.');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.