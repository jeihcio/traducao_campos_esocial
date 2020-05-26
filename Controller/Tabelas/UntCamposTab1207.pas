unit UntCamposTab1207 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1207 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1207 }

constructor TCamposTab1207.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1207.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1207.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'indApuracao', 'Indicativo de período de apuração');
   AddCampo(ACampos, retornoErros, 'perApur', 'Informar o mês/ano (formato AAAA-MM) de referência das informações');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'CNPJ apenas com a Raiz/Base');
   AddCampo(ACampos, retornoErros, 'ideBenef', 'Registro que apresenta a identificação básica do trabalhador ao qual se refere o evento de remuneração');
   AddCampo(ACampos, retornoErros, 'cpfBenef', 'CPF do beneficiário');
   AddCampo(ACampos, retornoErros, 'dmDev', 'Demonstrativos de valores devidos ao beneficiário');
   AddCampo(ACampos, retornoErros, 'tpBenef', 'Tipo de benefício previdenciário');
   AddCampo(ACampos, retornoErros, 'nrBenefic', 'Número do benefício previdenciário');
   AddCampo(ACampos, retornoErros, 'ideDmDev', 'Identificador atribuído pelo órgão público para o demonstrativo de pagamento');
   AddCampo(ACampos, retornoErros, 'itens', 'Detalhamento dos valores devidos ao beneficiário');
   AddCampo(ACampos, retornoErros, 'codRubr', 'código atribuído pela empresa e que identifica a rubrica em sua folha de pagamento');
   AddCampo(ACampos, retornoErros, 'ideTabRubr', 'identificador da tabela de rubricas, conforme informado em S-1010 para a rubrica definida em {codRubr}');
   AddCampo(ACampos, retornoErros, 'vrRubr', 'Valor total da rubrica');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.