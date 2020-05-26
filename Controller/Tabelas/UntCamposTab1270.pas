unit UntCamposTab1270 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1270 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1270 }

constructor TCamposTab1270.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1270.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1270.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtContratAvNP', 'Remuneração de Trab. Avulsos Não Portuários');
   AddCampo(ACampos, retornoErros, 'ideEvento', 'Informações de identificação do evento');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'remunAvNP', 'Remuneração dos trabalhadores avulsos não portuários');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'indApuracao', 'Indicativo de período de apuração');
   AddCampo(ACampos, retornoErros, 'perApur', 'mês/ano (formato AAAA-MM) de referência das informações');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'codLotacao', 'código atribuído pela empresa para a lotação tributária');
   AddCampo(ACampos, retornoErros, 'vrBcCp00', 'Valor da base de cálculo da contribuição previdenciária sobre a remuneração dos trabalhadores avulsos não portuários');
   AddCampo(ACampos, retornoErros, 'vrBcCp15', 'Valor da base de cálculo da contribuição adicional para o financiamento dos benefícios de aposentadoria especial após 15 anos de contribuição');
   AddCampo(ACampos, retornoErros, 'vrBcCp20', 'Valor da base de cálculo da contribuição adicional para o financiamento dos benefícios de aposentadoria especial após 20 anos de contribuição');
   AddCampo(ACampos, retornoErros, 'vrBcCp25', 'Valor da base de cálculo da contribuição adicional para o financiamento dos benefícios de aposentadoria especial após 25 anos de contribuição');
   AddCampo(ACampos, retornoErros, 'vrBcCp13', 'Valor da base de cálculo da contribuição previdenciária sobre o 13° salário dos trabalhadores avulsos não portuários contratados');
   AddCampo(ACampos, retornoErros, 'vrBcFgts', 'Valor da base de cálculo do FGTS sobre a remuneração dos trabalhadores avulsos não portuários contratados');
   AddCampo(ACampos, retornoErros, 'vrDescCP', 'Preencher com o valor total da contribuição descontada dos trabalhadores avulsos não portuários');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.