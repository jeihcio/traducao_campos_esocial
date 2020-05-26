unit UntCamposTab1010 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1010 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1010 }

constructor TCamposTab1010.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1010.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1010.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo');
   AddCampo(ACampos, retornoErros, 'infoRubrica', 'Identificação da operação (inclusão, alteração ou exclusão) e das informações da rubrica');
   AddCampo(ACampos, retornoErros, 'iniValid', 'Preencher com o mês e ano de início da validade das informações prestadas no evento, no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'fimValid', 'Preencher com o mês e ano de término da validade das informações, se houver');
   AddCampo(ACampos, retornoErros, 'dadosRubrica', 'Detalhamento das informações da rubrica que está sendo incluída');
   AddCampo(ACampos, retornoErros, 'dscRubr', 'Informar a descrição (nome) da rubrica no sistema de folha de pagamento da empresa.');
   AddCampo(ACampos, retornoErros, 'natRubr', 'Informar o código de classificação da rubrica');
   AddCampo(ACampos, retornoErros, 'tpRubr', 'Tipo de rubrica');
   AddCampo(ACampos, retornoErros, 'codIncCP', 'Código de incidência tributária da rubrica para a Previdência Social');
   AddCampo(ACampos, retornoErros, 'codIncIRRF', 'Código de incidência tributária da rubrica para o IRRF');
   AddCampo(ACampos, retornoErros, 'codIncFGTS', 'Código de incidência da rubrica para o FGTS');
   AddCampo(ACampos, retornoErros, 'codIncSIND', 'Código de incidência tributária da rubrica para a Contribuição Sindical');
   AddCampo(ACampos, retornoErros, 'ideProcessoCP', 'Caso a empresa possua processo administrativo ou judicial com decisão/sentença favorável, determinando a não incidência de contribuição previdenciária relativa a rubrica identificada no evento');
   AddCampo(ACampos, retornoErros, 'tpProc', 'Preencher com o código correspondente ao tipo de processo');
   AddCampo(ACampos, retornoErros, 'nrProc', 'Informar um número de processo cadastrado através do evento S-1070');
   AddCampo(ACampos, retornoErros, 'extDecisao', 'Extensão da Decisão/Sentença');
   AddCampo(ACampos, retornoErros, 'codSusp', 'Código do Indicativo da Suspensão, atribuído pelo empregador em S-1070');
   AddCampo(ACampos, retornoErros, 'ideProcessoIRRF', 'Caso a empresa possua processo judicial com decisão/sentença favorável, determinando a não incidência de imposto de renda relativo a rubrica identificada no evento, as informações deverão ser incluídas neste registro');
   AddCampo(ACampos, retornoErros, 'ideProcessoFGTS', 'Caso a empresa possua processo judicial com decisão/sentença favorável, determinando a não incidência de FGTS relativo a rubrica identificada no evento, as informações deverão ser incluídas neste registro');
   AddCampo(ACampos, retornoErros, 'ideProcessoSIND', 'Caso a empresa possua processo judicial com decisão/sentença favorável, determinando a não incidência de contribuição sindical relativa a rubrica identificada no evento, as informações deverão ser incluídas neste registro');
   AddCampo(ACampos, retornoErros, 'novaValidade', 'Informação preenchida exclusivamente em caso de alteração do período de validade das informações da rubrica identificada em {ideRubrica}, apresentando o novo período de validade');
   AddCampo(ACampos, retornoErros, 'ideRubrica', 'Grupo de informações que identifica a rubrica que será excluída');
   AddCampo(ACampos, retornoErros, 'ideTabRubr', 'identificador da tabela de rubricas no âmbito do empregador');
   AddCampo(ACampos, retornoErros, 'codRubr', 'Informar o código atribuído pela empresa e que identifica a rubrica em sua folha de pagamento');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.