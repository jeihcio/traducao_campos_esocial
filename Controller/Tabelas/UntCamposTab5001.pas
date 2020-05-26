unit UntCamposTab5001 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab5001 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab5001 }

constructor TCamposTab5001.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab5001.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab5001.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtBasesTrab', 'Evento Bases por Trabalhador');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideTrabalhador', 'Identificação do Trabalhador');
   AddCampo(ACampos, retornoErros, 'procJudTrab', 'Processos judiciais do trabalhador');
   AddCampo(ACampos, retornoErros, 'infoCpCalc', 'Cálculo da contribuição previdenciária do segurado');
   AddCampo(ACampos, retornoErros, 'infoCp', 'Informações sobre bases e valores das contribuições sociais');
   AddCampo(ACampos, retornoErros, 'ideEstabLot', 'Identificação do estabelecimento ou obra e da lotação tributária');
   AddCampo(ACampos, retornoErros, 'infoCategIncid', 'Informações relativas à matrícula e categoria do trabalhador e tipos de incidências');
   AddCampo(ACampos, retornoErros, 'infoBaseCS', 'Informações sobre bases de cálculo, descontos e deduções de CS');
   AddCampo(ACampos, retornoErros, 'calcTerc', 'Cálculo das contribuições sociais devidas');
   AddCampo(ACampos, retornoErros, 'nrRecArqBase', 'número do recibo do arquivo que deu origem ao presente arquivo de retorno ao empregador');
   AddCampo(ACampos, retornoErros, 'indApuracao', 'Indicativo de período de apuração');
   AddCampo(ACampos, retornoErros, 'perApur', 'mês/ano (formato AAAA-MM) de referência das informações');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nrProcJud', 'número do processo judicial');
   AddCampo(ACampos, retornoErros, 'codSusp', 'Código do Indicativo da Suspensão, atribuído pelo empregador em S-1070');
   AddCampo(ACampos, retornoErros, 'tpCR', 'Código de Receita (CR) da contribuição descontada do trabalhador');
   AddCampo(ACampos, retornoErros, 'vrCpSeg', 'Valor da contribuição do segurado, devida à Previdência Social, calculada segundo as regras da legislação em vigor, por CR');
   AddCampo(ACampos, retornoErros, 'vrDescSeg', 'Valor efetivamente descontado do segurado');
   AddCampo(ACampos, retornoErros, 'codLotacao', 'Informar o código atribuído pela empresa para a lotação tributária');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'indSimples', 'Indicador de Contribuição Substituída');
   AddCampo(ACampos, retornoErros, 'ind13', 'Indicativo de 13° salário');
   AddCampo(ACampos, retornoErros, 'tpValor', 'Tipo de valor que influi na apuração da contribuição devid');
   AddCampo(ACampos, retornoErros, 'valor', 'Valor da base de cálculo, dedução ou desconto da contribuição social devida à Previdência Social ou a Outras Entidades e Fundos');
   AddCampo(ACampos, retornoErros, 'vrCsSegTerc', 'Valor da contribuição social devida a Outras Entidades ou Fundos, calculada segundo a legislação em vigor, por CR');
   AddCampo(ACampos, retornoErros, 'vrDescTerc', 'Valor efetivamente descontado do segurado');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.