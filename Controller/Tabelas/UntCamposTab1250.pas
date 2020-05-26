unit UntCamposTab1250 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1250 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1250 }

constructor TCamposTab1250.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1250.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1250.PreencheCampos(
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
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'infoAquisProd', 'Informação da Aquisição de Produção');
   AddCampo(ACampos, retornoErros, 'ideEstabAdquir', 'Identificação do estabelecimento adquirente da produção');
   AddCampo(ACampos, retornoErros, 'tpInscAdq', 'Tipo de inscrição do adquirente');
   AddCampo(ACampos, retornoErros, 'nrInscAdq', 'número de inscrição');
   AddCampo(ACampos, retornoErros, 'tpAquis', 'Aquisição de produção');
   AddCampo(ACampos, retornoErros, 'indAquis', 'Indicativo da Aquisição');
   AddCampo(ACampos, retornoErros, 'vlrTotAquis', 'Valor total da aquisição correspondente ao indicativo informado em {indAquis}');
   AddCampo(ACampos, retornoErros, 'ideProdutor', 'Identificação dos produtores rurais');
   AddCampo(ACampos, retornoErros, 'tpInscProd', 'Tipo de inscrição do produtor (CNPJ ou CPF)');
   AddCampo(ACampos, retornoErros, 'nrInscProd', 'Número de inscrição do produtor no CPF ou no CNPJ, de acordo com o definido no campo {tpInscProd}');
   AddCampo(ACampos, retornoErros, 'indOpcCP', 'Indicativo da opção pelo produtor rural pela forma de tributação da contribuição previdenciária');
   AddCampo(ACampos, retornoErros, 'nfs', 'Notas Fiscais da aquisição de produção');
   AddCampo(ACampos, retornoErros, 'serie', 'Informar o número de série da nota fiscal/fatura');
   AddCampo(ACampos, retornoErros, 'nrDocto', 'Número da Nota Fiscal/Fatura');
   AddCampo(ACampos, retornoErros, 'dtEmisNF', 'Data de Emissão da Nota Fiscal/Fatura');
   AddCampo(ACampos, retornoErros, 'vlrBruto', 'valor bruto da(s) nota(s) fiscal(is)');
   AddCampo(ACampos, retornoErros, 'vrCPDescPR', 'valor da Contribuição Previdenciária descontada pelo adquirente de produção de produtor rural - sub-rogação');
   AddCampo(ACampos, retornoErros, 'vrRatDescPR', 'Valor da contribuição destinada ao financiamento dos benefícios concedidos em razão do grau de incidência da incapacidade laborativa');
   AddCampo(ACampos, retornoErros, 'vrSenarDesc', 'Valor da contribuição destinada ao SENAR');
   AddCampo(ACampos, retornoErros, 'infoProcJud', 'Informação de Processo Judicial do produtor');
   AddCampo(ACampos, retornoErros, 'infoProcJ', 'Informações de Processo Judicial comum a todos os produtores');
   AddCampo(ACampos, retornoErros, 'nrProcJud', 'Informar um número de processo judicial cadastrado através do evento S1070');
   AddCampo(ACampos, retornoErros, 'codSusp', 'Código do Indicativo da Suspensão');
   AddCampo(ACampos, retornoErros, 'vrCPNRet', 'Valor da Contribuição Previdenciária que deixou de ser retida pelo declarante');
   AddCampo(ACampos, retornoErros, 'vrRatNRet', 'Valor da GILRAT');
   AddCampo(ACampos, retornoErros, 'vrSenarNRet', 'Valor da contribuição destinada ao SENAR');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.