unit UntCamposTab1035 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1035 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1035 }

constructor TCamposTab1035.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1035.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1035.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'CNPJ apenas com a Raiz/Base');
   AddCampo(ACampos, retornoErros, 'infoCarreira', 'Identificação da operação (inclusão, alteração ou exclusão) e das informações da Carreira');
   AddCampo(ACampos, retornoErros, 'ideCarreira', 'Informações de identificação da Carreira e validade das informações que estão sendo incluídas');
   AddCampo(ACampos, retornoErros, 'codCarreira', 'código da carreira pública');
   AddCampo(ACampos, retornoErros, 'iniValid', 'mês e ano de início da validade das informações prestadas no evento, no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'fimValid', 'mês e ano de término da validade das informações, se houver');
   AddCampo(ACampos, retornoErros, 'dadosCarreira', 'Detalhamento das informações da Carreira que está sendo incluída');
   AddCampo(ACampos, retornoErros, 'dscCarreira', 'Descrição da Carreira Pública');
   AddCampo(ACampos, retornoErros, 'leiCarr', 'Lei que criou a Carreira');
   AddCampo(ACampos, retornoErros, 'dtLeiCarr', 'Data da Lei que criou a Carreira');
   AddCampo(ACampos, retornoErros, 'sitCarr', 'Situação gerada pela Lei');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.