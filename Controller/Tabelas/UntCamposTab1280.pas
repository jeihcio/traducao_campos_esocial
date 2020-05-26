unit UntCamposTab1280 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1280 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1280 }

constructor TCamposTab1280.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1280.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1280.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtInfoComplPer', 'Informações Complementares');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'infoSubstPatr', 'Inf. Complementares - Empresas Enquadradas nos artigos 7 a 9 da Lei 12.546/2011');
   AddCampo(ACampos, retornoErros, 'infoSubstPatrOpPort', 'Informação de substituição prevista na Lei 12.546/2011');
   AddCampo(ACampos, retornoErros, 'infoAtivConcom', 'Empresas enquadradas no Simples Nacional - Atividades Concomitantes');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'Preencher com o número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'indApuracao', 'Indicativo de período de apuração');
   AddCampo(ACampos, retornoErros, 'perApur', 'Informar o mês/ano (formato AAAA-MM) de referência das informações');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'indSubstPatr', 'Registro preenchido exclusivamente por empresa enquadrada nos artigos 7 a 9 da Lei 12.546/2011');
   AddCampo(ACampos, retornoErros, 'percRedContrib', 'Percentual não substituído pela contribuição prevista na lei 12.546/2011');
   AddCampo(ACampos, retornoErros, 'cnpjOpPortuario', 'CNPJ do operador portuário');
   AddCampo(ACampos, retornoErros, 'fatorMes', 'fator a ser utilizado para cálculo da contribuição patronal do mês');
   AddCampo(ACampos, retornoErros, 'fator13', 'fator a ser utilizado para cálculo da contribuição patronal do décimo terceiro dos trabalhadores');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.