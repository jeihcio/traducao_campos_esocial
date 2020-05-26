unit UntCamposTab1040 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1040 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1040 }

constructor TCamposTab1040.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1040.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1040.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'infoFuncao', 'Identificação da operação (inclusão, alteração ou exclusão) e das informações da função');
   AddCampo(ACampos, retornoErros, 'ideFuncao', 'Informações de identificação da função e validade das informações que estão sendo incluídas');
   AddCampo(ACampos, retornoErros, 'codFuncao', 'código da função, se utilizado pelo empregador');
   AddCampo(ACampos, retornoErros, 'iniValid', 'Preencher com o mês e ano de início da validade das informações prestadas no evento, no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'fimValid', 'Preencher com o mês e ano de término da validade das informações, se houver');
   AddCampo(ACampos, retornoErros, 'dadosFuncao', 'Detalhamento das informações da função que está sendo incluída');
   AddCampo(ACampos, retornoErros, 'dscFuncao', 'Nome da Função de confiança/Cargo em Comissão');
   AddCampo(ACampos, retornoErros, 'codCBO', 'Classificação Brasileira de Ocupação - CBO');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.