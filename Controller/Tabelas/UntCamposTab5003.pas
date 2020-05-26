unit UntCamposTab5003 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab5003 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab5003 }

constructor TCamposTab5003.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab5003.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab5003.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtBasesFGTS', 'Evento Bases FGTS por Trabalhador');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideTrabalhador', 'Identificação do Trabalhador');
   AddCampo(ACampos, retornoErros, 'infoFGTS', 'Informações relativas ao FGTS');
   AddCampo(ACampos, retornoErros, 'ideEstabLot', 'Identificação do estabelecimento e lotação');
   AddCampo(ACampos, retornoErros, 'infoTrabFGTS', 'Informações relativas à matrícula, categoria e incidências');
   AddCampo(ACampos, retornoErros, 'infoBaseFGTS', 'Bases de cálculo do FGTS');
   AddCampo(ACampos, retornoErros, 'basePerApur', 'Bases de cálculo, exceto se {tpAcConv} = [E]');
   AddCampo(ACampos, retornoErros, 'infoBasePerAntE', 'Informações sobre bases do FGTS quando {tpAcConv} = [E]');
   AddCampo(ACampos, retornoErros, 'basePerAntE', 'Bases de cálculo quando {tpAcConv} = [E]');
   AddCampo(ACampos, retornoErros, 'infoDpsFGTS', 'Informações sobre valores de FGTS');
   AddCampo(ACampos, retornoErros, 'infoTrabDps', 'Matrícula e categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'dpsPerApur', 'Valor do FGTS, exceto se {tpAcConv} = [E]');
   AddCampo(ACampos, retornoErros, 'infoDpsPerAntE', 'Informações sobre FGTS quando {tpAcConv} = [E]');
   AddCampo(ACampos, retornoErros, 'dpsPerAntE', 'Valores de FGTS quando {tpAcConv} = [E]');
   AddCampo(ACampos, retornoErros, 'nrRecArqBase', 'número do recibo do arquivo que deu origem ao presente arquivo de retorno ao empregador');
   AddCampo(ACampos, retornoErros, 'perApur', 'mês/ano (formato AAAA-MM), ou apenas o ano (formato AAAA)');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'dtVenc', 'Data de vencimento do FGTS mensal');
   AddCampo(ACampos, retornoErros, 'codLotacao', 'código atribuído pela empresa para a lotação tributária');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'dtAdm', 'data de admissão do trabalhador');
   AddCampo(ACampos, retornoErros, 'dtDeslig', 'Data do último dia trabalhado para o respectivo vínculo');
   AddCampo(ACampos, retornoErros, 'dtInicio', 'data de início do TSVE');
   AddCampo(ACampos, retornoErros, 'mtvDeslig', 'Motivo do Desligamento');
   AddCampo(ACampos, retornoErros, 'dtTerm', 'Data do término');
   AddCampo(ACampos, retornoErros, 'mtvDesligTSV', 'Código de motivo do desligamento do diretor não empregado');
   AddCampo(ACampos, retornoErros, 'tpValor', 'Tipo de valor que influi na apuração do FGTS');
   AddCampo(ACampos, retornoErros, 'remFGTS', 'Remuneração (valor da base de cálculo) do FGTS');
   AddCampo(ACampos, retornoErros, 'tpValorE', 'Tipo de valor que influi na apuração do FGTS');
   AddCampo(ACampos, retornoErros, 'remFGTSE', 'Remuneração (valor da base de cálculo) do FGTS');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'tpDps', 'Tipo de depósito');
   AddCampo(ACampos, retornoErros, 'dpsFGTS', 'Valor histórico do FGTS a ser depositado na conta vinculada do trabalhador');
   AddCampo(ACampos, retornoErros, 'perRef', 'período ao qual se refere a remuneração, no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'tpDpsE', 'Tipo de depósito');
   AddCampo(ACampos, retornoErros, 'dpsFGTSE', 'Valor histórico do FGTS a ser depositado na conta vinculada do trabalhador');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.