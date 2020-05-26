unit UntCamposTab2210 ;

interface

uses UntBaseTraduzirCampos, UntInformacaoCampos, Generics.Collections,
  UntICamposTabelas;

type
  TCamposTab2210 = class(TBaseTraduzirCampos, ICamposTabelas)
  private
    procedure PreencheCampos(ACampos: TDictionary<String, TInformacaoCampos>);
  public
    constructor Create(); reintroduce;
    function GetDescricao(ARegistro: String): String; overload;
  end;

implementation

uses
  System.SysUtils; 

{ TCamposTab2210 }

constructor TCamposTab2210.Create;
begin
   inherited Create();
   PreencheCampos(InformacoesCampos);
end;

function TCamposTab2210.GetDescricao(ARegistro: String): String;
begin
   Result := GetDescricao(ARegistro, InformacoesCampos);
end;

procedure TCamposTab2210.PreencheCampos(
  ACampos: TDictionary<String, TInformacaoCampos>);
var
  retornoErros: String; 
begin
   retornoErros := EmptyStr;

   AddCampo(ACampos, retornoErros, 'evtCAT', 'Evento Comunicação de Acidente de Trabalho');
   AddCampo(ACampos, retornoErros, 'ideEmpregador', 'Informações de identificação do empregador');
   AddCampo(ACampos, retornoErros, 'ideVinculo', 'Informações de Identificação do Trabalhador e do Vínculo');
   AddCampo(ACampos, retornoErros, 'cat', 'Comunicação de Acidente de Trabalho');
   AddCampo(ACampos, retornoErros, 'localAcidente', 'Local do Acidente');
   AddCampo(ACampos, retornoErros, 'ideLocalAcid', 'Identificação do local onde ocorreu o acidente');
   AddCampo(ACampos, retornoErros, 'parteAtingida', 'Parte do Corpo Atingida');
   AddCampo(ACampos, retornoErros, 'agenteCausador', 'Agente Causador');
   AddCampo(ACampos, retornoErros, 'atestado', 'Atestado Médico');
   AddCampo(ACampos, retornoErros, 'emitente', 'Médico/Dentista que emitiu o atestado');
   AddCampo(ACampos, retornoErros, 'catOrigem', 'CAT de origem');
   AddCampo(ACampos, retornoErros, 'indRetif', 'Informe [1] para arquivo original ou [2] para arquivo de retificação');
   AddCampo(ACampos, retornoErros, 'nrRecibo', 'número do recibo do arquivo a ser retificado');
   AddCampo(ACampos, retornoErros, 'tpInsc', 'código correspondente ao tipo de inscrição');
   AddCampo(ACampos, retornoErros, 'nrInsc', 'número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}');
   AddCampo(ACampos, retornoErros, 'cpfTrab', 'número do CPF do trabalhador');
   AddCampo(ACampos, retornoErros, 'nisTrab', 'Número de Identificação Social - NIS, o qual pode ser o PIS, PASEP ou NIT');
   AddCampo(ACampos, retornoErros, 'matricula', 'Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão');
   AddCampo(ACampos, retornoErros, 'codCateg', 'código da categoria do trabalhador');
   AddCampo(ACampos, retornoErros, 'dtAcid', 'Data do Acidente');
   AddCampo(ACampos, retornoErros, 'tpAcid', 'Tipo de Acidente de Trabalho');
   AddCampo(ACampos, retornoErros, 'hrAcid', 'Hora do Acidente');
   AddCampo(ACampos, retornoErros, 'hrsTrabAntesAcid', 'Horas trabalhadas antes da ocorrência do acidente');
   AddCampo(ACampos, retornoErros, 'tpCat', 'Tipo de CAT');
   AddCampo(ACampos, retornoErros, 'indCatObito', 'Houve Óbito');
   AddCampo(ACampos, retornoErros, 'dtObito', 'Data do óbito');
   AddCampo(ACampos, retornoErros, 'indComunPolicia', 'Houve comunicação à autoridade policial?');
   AddCampo(ACampos, retornoErros, 'codSitGeradora', 'código da situação geradora do acidente ou da doença profissional');
   AddCampo(ACampos, retornoErros, 'iniciatCAT', 'A CAT foi emitida');
   AddCampo(ACampos, retornoErros, 'obsCAT', 'Observação');
   AddCampo(ACampos, retornoErros, 'tpLocal', 'Tipo de local do acidente');
   AddCampo(ACampos, retornoErros, 'dscLocal', 'Especificação do local do acidente');
   AddCampo(ACampos, retornoErros, 'codAmb', 'código do ambiente de trabalho constante da Tabela S-1060 referente ao local do acidente');
   AddCampo(ACampos, retornoErros, 'tpLograd', 'Tipo de Logradouro');
   AddCampo(ACampos, retornoErros, 'dscLograd', 'Descrição do logradouro');
   AddCampo(ACampos, retornoErros, 'nrLograd', 'Número do logradouro');
   AddCampo(ACampos, retornoErros, 'complemento', 'Complemento do logradouro');
   AddCampo(ACampos, retornoErros, 'bairro', 'Nome do bairro/distrito');
   AddCampo(ACampos, retornoErros, 'cep', 'Código de Endereçamento Postal - CEP');
   AddCampo(ACampos, retornoErros, 'codMunic', 'código do município, conforme tabela do IBGE');
   AddCampo(ACampos, retornoErros, 'uf', 'sigla da Unidade da Federação');
   AddCampo(ACampos, retornoErros, 'pais', 'código do país');
   AddCampo(ACampos, retornoErros, 'codPostal', 'Código de Endereçamento Postal');
   AddCampo(ACampos, retornoErros, 'codParteAting', 'código correspondente a parte atingida');
   AddCampo(ACampos, retornoErros, 'lateralidade', 'Nos casos de órgãos bilaterais, ou seja, que se situam dos lados do corpo, assinalar o lado (direito ou esquerdo)');
   AddCampo(ACampos, retornoErros, 'codAgntCausador', 'código correspondente ao agente causador do acidente');
   AddCampo(ACampos, retornoErros, 'codCNES', 'Código da unidade de atendimento médico no Cadastro Nacional de Estabelecimento de Saúde');
   AddCampo(ACampos, retornoErros, 'dtAtendimento', 'Data do atendimento');
   AddCampo(ACampos, retornoErros, 'hrAtendimento', 'Hora do atendimento');
   AddCampo(ACampos, retornoErros, 'indInternacao', 'Indicativo de Internação');
   AddCampo(ACampos, retornoErros, 'durTrat', 'Duração estimada do tratamento, em dias');
   AddCampo(ACampos, retornoErros, 'indAfast', 'Indicativo de afastamento do trabalho durante o tratamento');
   AddCampo(ACampos, retornoErros, 'dscLesao', 'descrição da natureza da lesão');
   AddCampo(ACampos, retornoErros, 'dscCompLesao', 'Descrição complementar da lesão');
   AddCampo(ACampos, retornoErros, 'diagProvavel', 'Diagnóstico Provável');
   AddCampo(ACampos, retornoErros, 'codCID', 'código na tabela de Classificação Internacional de Doenças - CID');
   AddCampo(ACampos, retornoErros, 'observacao', 'Observação');
   AddCampo(ACampos, retornoErros, 'nmEmit', 'Nome do médico/dentista que emitiu o atestado');
   AddCampo(ACampos, retornoErros, 'ideOC', 'Órgão de classe');
   AddCampo(ACampos, retornoErros, 'nrOC', 'Número de Inscrição no órgão de classe');
   AddCampo(ACampos, retornoErros, 'ufOC', 'Sigla da UF do órgão de classe');
   AddCampo(ACampos, retornoErros, 'nrRecCatOrig', 'número do recibo da última CAT referente ao mesmo acidente/doença relacionada ao trabalho');

   ExibirMensagemDeErrosSeNecessario(retornoErros);
end;

end.