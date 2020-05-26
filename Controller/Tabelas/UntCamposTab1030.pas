unit UntCamposTab1030 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1030 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1030 }

constructor TCamposTab1030.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1030.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1030.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'Informar o número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'infoCargo', 'Identificação da operação (inclusão, alteração ou exclusão) e das informações do cargo');
   AddCampo(ACampos, retornoErros, 'ideCargo', 'Informações de identificação do cargo e validade das informações que estão sendo incluídas');
   AddCampo(ACampos, retornoErros, 'codCargo', 'código do cargo');
   AddCampo(ACampos, retornoErros, 'iniValid', 'Preencher com o mês e ano de início da validade das informações prestadas no evento, no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'fimValid', 'Preencher com o mês e ano de término da validade das informações, se houver');
   AddCampo(ACampos, retornoErros, 'dadosCargo', 'Detalhamento das informações do cargo que está sendo incluído');
   AddCampo(ACampos, retornoErros, 'nmCargo', 'nome do cargo');
   AddCampo(ACampos, retornoErros, 'codCBO', 'Classificação Brasileira de Ocupação - CBO');
   AddCampo(ACampos, retornoErros, 'cargoPublico', 'Detalhamento de informações exclusivas para Cargos e Empregos Públicos');
   AddCampo(ACampos, retornoErros, 'acumCargo', 'código correspondente à possibilidade de acumulação de cargos');
   AddCampo(ACampos, retornoErros, 'contagemEsp', 'código correspondente a possibilidade de contagem de tempo especial');
   AddCampo(ACampos, retornoErros, 'dedicExcl', 'Indicar se é cargo de dedicação exclusiva');
   AddCampo(ACampos, retornoErros, 'leiCargo', 'Lei que criou/extinguiu/reestruturou o cargo');
   AddCampo(ACampos, retornoErros, 'nrLei', 'Número da Lei');
   AddCampo(ACampos, retornoErros, 'dtLei', 'Data da Lei');
   AddCampo(ACampos, retornoErros, 'sitCargo', 'Situação gerada pela Lei');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.