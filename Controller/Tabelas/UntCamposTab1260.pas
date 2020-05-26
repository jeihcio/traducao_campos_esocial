unit UntCamposTab1260 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1260 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1260 }

constructor TCamposTab1260.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1260.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1260.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtComProd', 'Evento Comercialização da Produção Rural Pessoa Física');
   AddCampo(ACampos, retornoErros, 'ideEvento', 'Informações de identificação do evento');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'infoComProd', 'Informação da Comercialização de Produção');
   AddCampo(ACampos, retornoErros, 'ideEstabel', 'Identificação do estabelecimento que comercializou a produção');
   AddCampo(ACampos, retornoErros, 'tpComerc', 'Registro que apresenta o valor total da comercialização por "tipo" de comercialização');
   AddCampo(ACampos, retornoErros, 'ideAdquir', 'Identificação dos Adquirentes da Produção');
   AddCampo(ACampos, retornoErros, 'nfs', 'Notas Fiscais da aquisição de produção');
   AddCampo(ACampos, retornoErros, 'infoProcJud', 'Informação de Processo Judicial');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado.');
   AddCampo(ACampos, retornoErros, 'indApuracao', 'Indicativo de período de apuração');
   AddCampo(ACampos, retornoErros, 'perApur', 'Informar o mês/ano (formato AAAA-MM) de referência das informações');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte no CPF');
   AddCampo(ACampos, retornoErros, 'nrInscEstabRural', 'número de inscrição no CAEPF do estabelecimento rural');
   AddCampo(ACampos, retornoErros, 'indComerc', 'Indicativo de Comercialização');
   AddCampo(ACampos, retornoErros, 'vrTotCom', 'valor total da comercialização');
   AddCampo(ACampos, retornoErros, 'vrComerc', 'Valor bruto da comercialização da produção');
   AddCampo(ACampos, retornoErros, 'serie', 'número de série da nota fiscal/fatura');
   AddCampo(ACampos, retornoErros, 'nrDocto', 'Número da Nota Fiscal/Fatura');
   AddCampo(ACampos, retornoErros, 'dtEmisNF', 'Data de Emissão da Nota Fiscal/Fatura');
   AddCampo(ACampos, retornoErros, 'vlrBruto', 'valor bruto da(s) nota(s) fiscal(is)');
   AddCampo(ACampos, retornoErros, 'vrCPDescPR', 'valor da Contribuição Previdenciária descontada pelo adquirente na comercialização de produção');
   AddCampo(ACampos, retornoErros, 'vrRatDescPR', 'Valor da contribuição destinada ao financiamento dos benefícios concedidos em razão do grau de incidência da incapacidade laborativa decorrente dos riscos ambientais do trabalho');
   AddCampo(ACampos, retornoErros, 'vrSenarDesc', 'Valor da contribuição destinada ao SENAR');
   AddCampo(ACampos, retornoErros, 'tpProc', 'código correspondente ao tipo de processo');
   AddCampo(ACampos, retornoErros, 'nrProc', 'número de processo cadastrado através do evento S-1070');
   AddCampo(ACampos, retornoErros, 'codSusp', 'Código do Indicativo da Suspensão, atribuído pelo empregador em S-1070');
   AddCampo(ACampos, retornoErros, 'vrCPSusp', 'Valor da Contribuição Previdenciária com exigibilidade suspensa');
   AddCampo(ACampos, retornoErros, 'vrRatSusp', 'Valor da contribuição para Gilrat com exigibilidade suspensa');
   AddCampo(ACampos, retornoErros, 'vrSenarSusp', 'Valor da contribuição para o Senar com exigibilidade suspensa');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.