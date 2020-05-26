unit UntCamposTab5002 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab5002 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab5002 }

constructor TCamposTab5002.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab5002.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab5002.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtIrrfBenef', 'IRRF do beneficiário');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideTrabalhador', 'Identificação do Trabalhador');
   AddCampo(ACampos, retornoErros, 'infoDep', 'Informações relativas a existência de dependentes');
   AddCampo(ACampos, retornoErros, 'infoIrrf', 'Informações relativas ao IRRF');
   AddCampo(ACampos, retornoErros, 'basesIrrf', 'Bases do IRRF');
   AddCampo(ACampos, retornoErros, 'irrf', 'Informações relativas ao IRRF');
   AddCampo(ACampos, retornoErros, 'idePgtoExt', 'Informações complementares sobre pagamentos a residente fiscal no exterior');
   AddCampo(ACampos, retornoErros, 'idePais', 'Identificação do País onde foi efetuado o pagamento');
   AddCampo(ACampos, retornoErros, 'endExt', 'Informações complementares de endereço do beneficiário');
   AddCampo(ACampos, retornoErros, 'nrRecArqBase', 'número do recibo do arquivo que deu origem ao presente arquivo de retorno ao empregador');
   AddCampo(ACampos, retornoErros, 'perApur', 'mês/ano (formato AAAA-MM) de referência das informações');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'vrDedDep', 'Valor da dedução da base de cálculo do IRRF relativo aos dependentes do beneficiário do pagamento');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'indResBr', 'Indicar se o beneficiário do pagamento é residente fiscal no Brasil');
   AddCampo(ACampos, retornoErros, 'tpValor', 'Tipo de valor relativo aos rendimentos pagos e ao IRRF retido');
   AddCampo(ACampos, retornoErros, 'valor', 'Valor do rendimento tributável, não tributável, retenção, dedução ou isenção do Imposto de Renda Retido na Fonte');
   AddCampo(ACampos, retornoErros, 'tpCR', 'Código de Receita - CR relativo ao Imposto de Renda Retido na Fonte sobre rendimentos do trabalho, conforme legislação em vigor na competência');
   AddCampo(ACampos, retornoErros, 'vrIrrfDesc', 'Valor efetivamente descontado relativo ao Imposto de Renda Retido na Fonte sobre rendimentos do trabalho');
   AddCampo(ACampos, retornoErros, 'codPais', 'código do país');
   AddCampo(ACampos, retornoErros, 'indNIF', 'Indicativo do Número de Identificação Fiscal');
   AddCampo(ACampos, retornoErros, 'nifBenef', 'Número de Identificação Fiscal - NIF');
   AddCampo(ACampos, retornoErros, 'dscLograd', 'Descrição do logradouro');
   AddCampo(ACampos, retornoErros, 'nrLograd', 'Número do logradouro');
   AddCampo(ACampos, retornoErros, 'complem', 'Complemento do logradouro');
   AddCampo(ACampos, retornoErros, 'bairro', 'Nome do bairro/distrito');
   AddCampo(ACampos, retornoErros, 'nmCid', 'Nome da Cidade');
   AddCampo(ACampos, retornoErros, 'codPostal', 'Código de Endereçamento Postal');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.