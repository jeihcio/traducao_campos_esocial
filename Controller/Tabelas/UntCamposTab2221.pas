unit UntCamposTab2221 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2221 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2221 }

constructor TCamposTab2221.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2221.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2221.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtToxic', 'Evento Exame Toxicológico do Motorista Profissional');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'toxicologico', 'Informações do exame toxicológico do motorista profissional');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão.');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'dtExame', 'Data da realização do exame toxicológico');
   AddCampo(ACampos, retornoErros, 'cnpjLab', 'CNPJ do laboratório responsável pela realização do exame');
   AddCampo(ACampos, retornoErros, 'codSeqExame', 'Código do exame toxicológico');
   AddCampo(ACampos, retornoErros, 'nmMed', 'nome do médico');
   AddCampo(ACampos, retornoErros, 'nrCRM', 'Número de inscrição do médico no CRM');
   AddCampo(ACampos, retornoErros, 'ufCRM', 'sigla da UF de expedição do CRM');
   AddCampo(ACampos, retornoErros, 'indRecusa', 'Indicar se o trabalhador se recusou a realizar o exame toxicológico no desligamento');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.