unit UntCamposTab1050 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab1050 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab1050 }

constructor TCamposTab1050.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab1050.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab1050.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'infoHorContratual', 'Registro de identificação da operação (inclusão, alteração ou exclusão) e das informações do horário contratual');
   AddCampo(ACampos, retornoErros, 'ideHorContratual', 'Grupo de informações de identificação do horário contratual, apresentando o código e período de validade do registro cujas informações estão sendo incluídas');
   AddCampo(ACampos, retornoErros, 'codHorContrat', 'código atribuído pela empresa para o Horário Contratual');
   AddCampo(ACampos, retornoErros, 'iniValid', 'Preencher com o mês e ano de início da validade das informações prestadas no evento, no formato AAAA-MM');
   AddCampo(ACampos, retornoErros, 'fimValid', 'Preencher com o mês e ano de término da validade das informações, se houver');
   AddCampo(ACampos, retornoErros, 'dadosHorContratual', 'Detalhamento das informações do horário contratual que está sendo incluído');
   AddCampo(ACampos, retornoErros, 'hrEntr', 'Informar hora da entrada, no formato HHMM.');
   AddCampo(ACampos, retornoErros, 'hrSaida', 'Informar hora da saída, no formato HHMM');
   AddCampo(ACampos, retornoErros, 'durJornada', 'tempo de duração da jornada, em minutos');
   AddCampo(ACampos, retornoErros, 'perHorFlexivel', 'Indicar se é permitida a flexibilidade');
   AddCampo(ACampos, retornoErros, 'horarioIntervalo', 'Registro que detalha os intervalos para a jornada');
   AddCampo(ACampos, retornoErros, 'tpInterv', 'Tipo de Intervalo da Jornada');
   AddCampo(ACampos, retornoErros, 'durInterv', 'tempo de duração do intervalo, em minutos');
   AddCampo(ACampos, retornoErros, 'iniInterv', 'informar a hora de início do intervalo, no formato HHMM');
   AddCampo(ACampos, retornoErros, 'termInterv', 'Informar a hora de termino do intervalo, no formato HHMM');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.