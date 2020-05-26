unit UntBaseTraduzirCampos;

interface

uses UntInformacaoCampos, Generics.Collections, SysUtils, Dialogs;

type
  TBaseTraduzirCampos = class(TInterfacedObject)
  private
    FInformacoesCampos: TDictionary<String, TInformacaoCampos>;
    function SoNum(StrTxt: String): String;
  public
    constructor Create(); reintroduce;
    destructor Destroy(); override;

    property InformacoesCampos: TDictionary<String, TInformacaoCampos> Read FInformacoesCampos Write FInformacoesCampos;
  protected
    function GetDescricao(ARegistro: String;
      AInformacoesCampos: TDictionary<String, TInformacaoCampos>): String; overload;

    procedure AddCampo(AInformacoesCampos: TDictionary<String, TInformacaoCampos>;
      var ARetornoErros: String; ARegistro, ADescricao: String);

    procedure ExibirMensagemDeErrosSeNecessario(AErros: String);
  end;

implementation

{ TBaseTraduzirCampos }

procedure TBaseTraduzirCampos.AddCampo(
  AInformacoesCampos: TDictionary<String, TInformacaoCampos>;
  var ARetornoErros: String; ARegistro, ADescricao: String);
begin
   Try
      AInformacoesCampos.Add(
         UpperCase(ARegistro),
         TInformacaoCampos.New(ARegistro, ADescricao)
      );
   Except
      ARetornoErros := ARetornoErros + ARegistro + sLineBreak;
   End;
end;

constructor TBaseTraduzirCampos.Create;
begin
   inherited;
   FInformacoesCampos := TDictionary<String, TInformacaoCampos>.Create();
end;

destructor TBaseTraduzirCampos.Destroy;
begin
  FInformacoesCampos.Free;
  inherited;
end;

procedure TBaseTraduzirCampos.ExibirMensagemDeErrosSeNecessario(AErros: String);
var
  mensagem: String;
begin
   If Trim(AErros) <> EmptyStr Then
      Begin
         mensagem := 'Lista de campos duplicados no dicionário do "FInformacoesCampos" da tabela: ' +
                     SoNum(Self.ClassName) + sLineBreak + sLineBreak;

         mensagem := mensagem + Trim(AErros);
		 ShowMessage(mensagem);
      End;
end;

function TBaseTraduzirCampos.GetDescricao(ARegistro: String;
  AInformacoesCampos: TDictionary<String, TInformacaoCampos>): String;
var
  registro: String;
  campo: TInformacaoCampos;
begin
   campo := Nil;
   Result := EmptyStr;

   registro := UpperCase(ARegistro);
   AInformacoesCampos.TryGetValue(registro, campo);

   If Assigned(campo) Then
      Result := Trim(AInformacoesCampos[registro].Descricao);
end;

function TBaseTraduzirCampos.SoNum(StrTxt: String): String;
var
    i: Integer ;
begin
    Result := '' ;
    for i := 1 to length( StrTxt ) do
    begin
        if StrTxt[ i ] in ['0'..'9'] then
        Result := Result + StrTxt[ i ] ;
    end ;
end;

end.
