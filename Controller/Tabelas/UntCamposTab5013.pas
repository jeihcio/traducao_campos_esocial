unit UntCamposTab5013 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab5013 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab5013 }

constructor TCamposTab5013.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab5013.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab5013.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtFGTS', 'Evento FGTS consolidado');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'infoFGTS', 'Informações relativas ao FGTS');
   AddCampo(ACampos, retornoErros, 'infoBaseFGTS', 'Bases de cálculo do FGTS');
   AddCampo(ACampos, retornoErros, 'basePerApur', 'Bases de cálculo do FGTS, exceto se {tpAcConv} = [E]');
   AddCampo(ACampos, retornoErros, 'infoBasePerAntE', 'Informações sobre bases de cálculo do FGTS, quando {tpAcConv} = [E]');
   AddCampo(ACampos, retornoErros, 'basePerAntE', 'Bases de cálculo do FGTS, quando {tpAcConv} = [E]');
   AddCampo(ACampos, retornoErros, 'infoDpsFGTS', 'Informações sobre FGTS agrupadas por tipo de depósito');
   AddCampo(ACampos, retornoErros, 'dpsPerApur', 'Valores de FGTS, exceto se {tpAcConv} = [E]');
   AddCampo(ACampos, retornoErros, 'infoDpsPerAntE', 'Informações sobre o FGTS quando {tpAcConv} = [E]');
   AddCampo(ACampos, retornoErros, 'dpsPerAntE', 'Valores de FGTS quando {tpAcConv} = [E]');
   AddCampo(ACampos, retornoErros, 'perApur', 'mês/ano (formato AAAA-MM), ou apenas o ano (formato AAAA), de referência das informações');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'nrRecArqBase', 'número do recibo do arquivo que deu origem ao presente arquivo de retorno ao empregador');
   AddCampo(ACampos, retornoErros, 'indExistInfo', 'Indicativo de existência de FGTS');
   AddCampo(ACampos, retornoErros, 'tpValor', 'Tipo de valor que influi na apuração do FGTS');
   AddCampo(ACampos, retornoErros, 'baseFGTS', 'Remuneração (valor da base de cálculo) do FGTS');
   AddCampo(ACampos, retornoErros, 'perRef', 'período ao qual se refere a remuneração no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'tpValorE', 'Tipo de valor que influi na apuração do FGTS');
   AddCampo(ACampos, retornoErros, 'baseFGTSE', 'Remuneração (valor da base de cálculo) do FGTS');
   AddCampo(ACampos, retornoErros, 'tpDps', 'Tipo de depósito');
   AddCampo(ACampos, retornoErros, 'vrFGTS', 'Valor histórico do FGTS a ser depositado na conta vinculada do trabalhador');
   AddCampo(ACampos, retornoErros, 'perRef', 'período ao qual se refere a remuneração no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'tpDpsE', 'Tipo de depósito');
   AddCampo(ACampos, retornoErros, 'vrFGTSE', 'Valor histórico do FGTS a ser depositado na conta vinculada do trabalhador');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.