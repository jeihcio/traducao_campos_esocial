unit UntCamposTab2230 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2230 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2230 }

constructor TCamposTab2230.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2230.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2230.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtAfastTemp', 'Evento Afastamento Temporário');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideVinculo', 'Informações de Identificação do Trabalhador e do Vínculo');
   AddCampo(ACampos, retornoErros, 'infoAfastamento', 'Informações do Evento');
   AddCampo(ACampos, retornoErros, 'iniAfastamento', 'Informações do Afastamento Temporário - Início');
   AddCampo(ACampos, retornoErros, 'infoAtestado', 'Informações Complementares - Atestado Médico');
   AddCampo(ACampos, retornoErros, 'emitente', 'Médico/Dentista que emitiu o atestado');
   AddCampo(ACampos, retornoErros, 'infoCessao', 'Informações Complementares - Cessão/requisição de trabalhador');
   AddCampo(ACampos, retornoErros, 'infoMandSind', 'Informações Complementares - afastamento para exercício de mandato sindical');
   AddCampo(ACampos, retornoErros, 'infoRetif', 'Informações de retificação do Afastamento Temporário');
   AddCampo(ACampos, retornoErros, 'fimAfastamento', 'Informações do Término do Afastamento');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'dtIniAfast', 'Data de início do afastamento');
   AddCampo(ACampos, retornoErros, 'codMotAfast', 'código do motivo de afastamento temporário');
   AddCampo(ACampos, retornoErros, 'infoMesmoMtv', 'afastamento decorre da mesma doença que gerou o afastamento anterior ({codMotAfast} = [01, 03]) dentro de 60 dias');
   AddCampo(ACampos, retornoErros, 'tpAcidTransito', 'Tipo de Acidente de Trânsito');
   AddCampo(ACampos, retornoErros, 'observacao', 'Detalhar as informações sobre o afastamento do trabalhador, de maneira a explicitar os motivos do mesmo');
   AddCampo(ACampos, retornoErros, 'codCID', 'código na tabela de Classificação Internacional de Doenças - CID');
   AddCampo(ACampos, retornoErros, 'qtdDiasAfast', 'Quantidade de dias de afastamento concedidos pelo médico');
   AddCampo(ACampos, retornoErros, 'nmEmit', 'Nome do médico/dentista que emitiu o atestado');
   AddCampo(ACampos, retornoErros, 'ideOC', 'Órgão de classe');
   AddCampo(ACampos, retornoErros, 'nrOc', 'Número de inscrição no órgão de classe');
   AddCampo(ACampos, retornoErros, 'ufOC', 'Sigla da UF do órgão de classe');
   AddCampo(ACampos, retornoErros, 'cnpjCess', 'CNPJ do órgão/entidade para o qual o trabalhador foi cedido/requisitado');
   AddCampo(ACampos, retornoErros, 'infOnus', 'Ônus da cessão/requisição');
   AddCampo(ACampos, retornoErros, 'cnpjSind', 'CNPJ do Sindicato no qual o trabalhador exercerá o mandato');
   AddCampo(ACampos, retornoErros, 'infOnusRemun', 'Ônus da Remuneração');
   AddCampo(ACampos, retornoErros, 'origRetif', 'Origem da retificação');
   AddCampo(ACampos, retornoErros, 'tpProc', 'código correspondente ao tipo de processo');
   AddCampo(ACampos, retornoErros, 'nrProc', 'número do processo administrativo/judicial ou do benefício de acordo com o tipo informado em {tpProc}');
   AddCampo(ACampos, retornoErros, 'dtTermAfast', 'data do término do afastamento do trabalhador');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.