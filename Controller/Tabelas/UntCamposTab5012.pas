unit UntCamposTab5012 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab5012 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab5012 }

constructor TCamposTab5012.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab5012.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab5012.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtIrrf', 'Evento IRRF');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'infoIRRF', 'Informações relativas ao IRRF');
   AddCampo(ACampos, retornoErros, 'infoCRContrib', 'Totalizador do IRRF por CR');
   AddCampo(ACampos, retornoErros, 'perApur', 'mês/ano (formato AAAA-MM), ou apenas o ano (formato AAAA), de referência das informações');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'nrRecArqBase', 'número do recibo do arquivo que deu origem ao presente arquivo de retorno ao empregador');
   AddCampo(ACampos, retornoErros, 'indExistInfo', 'Indicativo de existência de Imposto de Renda Retido na Fonte');
   AddCampo(ACampos, retornoErros, 'tpCR', 'Código de Receita - CR relativo ao Imposto de Renda Retido na Fonte, conforme legislação em vigor na competência');
   AddCampo(ACampos, retornoErros, 'vrCR', 'Valor correspondente ao Código de Receita - CR apurado');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.