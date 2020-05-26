unit UntCamposTab1060 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1060 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1060 }

constructor TCamposTab1060.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1060.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1060.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'infoAmbiente', 'Identificação da operação (inclusão, alteração ou exclusão) e das informações do ambiente.');
   AddCampo(ACampos, retornoErros, 'ideAmbiente', 'Informações de identificação do ambiente de trabalho do empregador e de validade das informações');
   AddCampo(ACampos, retornoErros, 'codAmb', 'código atribuído pela empresa ao Ambiente de Trabalho');
   AddCampo(ACampos, retornoErros, 'iniValid', 'Preencher com o mês e ano de início da validade das informações prestadas no evento, no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'fimValid', 'Preencher com o mês e ano de término da validade das informações, se houver');
   AddCampo(ACampos, retornoErros, 'dadosAmbiente', 'Informações do ambiente de trabalho');
   AddCampo(ACampos, retornoErros, 'nmAmb', 'Informar o nome do ambiente de trabalho');
   AddCampo(ACampos, retornoErros, 'dscAmb', 'Descrição do ambiente de trabalho');
   AddCampo(ACampos, retornoErros, 'localAmb', 'Local do ambiente');
   AddCampo(ACampos, retornoErros, 'codLotacao', 'código atribuído pela empresa para a lotação tributária');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.