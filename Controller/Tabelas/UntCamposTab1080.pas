unit UntCamposTab1080 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1080 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1080 }

constructor TCamposTab1080.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1080.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1080.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'infoOperPortuario', 'Informações do Operador Portuário');
   AddCampo(ACampos, retornoErros, 'ideOperPortuario', 'Informações de identificação do Operador Portuário e validade das informações que estão sendo incluídas');
   AddCampo(ACampos, retornoErros, 'cnpjOpPortuario', 'CNPJ do operador portuário');
   AddCampo(ACampos, retornoErros, 'iniValid', 'Preencher com o mês e ano de início da validade das informações prestadas no evento, no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'fimValid', 'Preencher com o mês e ano de término da validade das informações, se houver');
   AddCampo(ACampos, retornoErros, 'dadosOperPortuario', 'Detalhamento das informações do Operador Portuário que está sendo incluído');
   AddCampo(ACampos, retornoErros, 'aliqRat', 'Preencher com a alíquota definida na legislação vigente para a atividade (CNAE) preponderante');
   AddCampo(ACampos, retornoErros, 'fap', 'Fator Acidentário de Prevenção - FAP');
   AddCampo(ACampos, retornoErros, 'aliqRatAjust', 'Alíquota do RAT após ajuste pelo FAP');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.