unit UntCamposTab1070 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1070 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1070 }

constructor TCamposTab1070.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1070.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1070.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'Preencher com o código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'Informar o número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'infoProcesso', 'Informações do Processo');
   AddCampo(ACampos, retornoErros, 'ideProcesso', 'Informações de identificação do Processo e validade das informações que estão sendo incluídas');
   AddCampo(ACampos, retornoErros, 'tpProc', 'Preencher com o código correspondente ao tipo de processo');
   AddCampo(ACampos, retornoErros, 'nrProc', 'Informar o número do processo administrativo/judicial ou do benefício de acordo com o tipo informado em {tpProc}');
   AddCampo(ACampos, retornoErros, 'iniValid', 'Preencher com o mês e ano de início da validade das informações prestadas no evento, no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'fimValid', 'Preencher com o mês e ano de término da validade das informações, se houver');
   AddCampo(ACampos, retornoErros, 'dadosProc', 'Dados do processo');
   AddCampo(ACampos, retornoErros, 'indAutoria', 'Indicativo da autoria da ação judicial');
   AddCampo(ACampos, retornoErros, 'indMatProc', 'Indicativo da matéria do processo ou alvará judicial');
   AddCampo(ACampos, retornoErros, 'observacao', 'Observações relacionadas ao processo');
   AddCampo(ACampos, retornoErros, 'dadosProcJud', 'Informações Complementares do Processo Judicial');
   AddCampo(ACampos, retornoErros, 'ufVara', 'Identificação da UF da Seção Judiciária');
   AddCampo(ACampos, retornoErros, 'codMunic', 'código do município, conforme tabela do IBGE');
   AddCampo(ACampos, retornoErros, 'idVara', 'Código de Identificação da Vara');
   AddCampo(ACampos, retornoErros, 'infoSusp', 'Informações de suspensão de exigibilidade de tributos em virtude de processo administrativo ou judicial');
   AddCampo(ACampos, retornoErros, 'codSusp', 'Código do Indicativo da Suspensão, atribuído pelo empregador');
   AddCampo(ACampos, retornoErros, 'indSusp', 'Indicativo de suspensão da exigibilidade');
   AddCampo(ACampos, retornoErros, 'dtDecisao', 'Data da decisão, sentença ou despacho administrativo');
   AddCampo(ACampos, retornoErros, 'indDeposito', 'Indicativo de Depósito do Montante Integral');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.