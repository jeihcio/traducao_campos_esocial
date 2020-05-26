unit UntInformacaoCampos;

interface

uses
  System.SysUtils;

type
  TInformacaoCampos = class
  private
	 FRegistro: String;
	 FDescricao: String;
  private
    constructor Create(ARegistro, ADescricao: String); reintroduce;
  public
    class function New(ARegistro, ADescricao: String): TInformacaoCampos;

    property Registro: String Read FRegistro;
    property Descricao: String Read FDescricao;
  end;

implementation

{ TInformacaoCampos }

constructor TInformacaoCampos.Create(ARegistro, ADescricao: String);
begin
   FRegistro := Trim(ARegistro);
   FDescricao := Trim(ADescricao);
end;

class function TInformacaoCampos.New(ARegistro,
  ADescricao: String): TInformacaoCampos;
begin
   Result := Create(ARegistro, ADescricao);
end;

end.
