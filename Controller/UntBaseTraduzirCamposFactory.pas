unit UntBaseTraduzirCamposFactory;

interface

uses
  UntBaseTraduzirCampos, UntICamposTabelas, System.SysUtils;

type
  TBaseTraduzirCamposFactory = class
  public
     class function New(ATabela: Integer): ICamposTabelas; 
  end;

implementation

uses
  UntCamposTab1000, UntCamposTab1005, UntCamposTab1010, UntCamposTab1020, UntCamposTab1030,
  UntCamposTab1035, UntCamposTab1040, UntCamposTab1050, UntCamposTab1060, UntCamposTab1070,
  UntCamposTab1080, UntCamposTab1200, UntCamposTab1202, UntCamposTab1207, UntCamposTab1210,
  UntCamposTab1250, UntCamposTab1260, UntCamposTab1270, UntCamposTab1280, UntCamposTab1295,
  UntCamposTab1298, UntCamposTab1299, UntCamposTab1300, UntCamposTab2190, UntCamposTab2200,
  UntCamposTab2205, UntCamposTab2206, UntCamposTab2210, UntCamposTab2220, UntCamposTab2221,
  UntCamposTab2230, UntCamposTab2240, UntCamposTab2245, UntCamposTab2250, UntCamposTab2260,
  UntCamposTab2298, UntCamposTab2299, UntCamposTab2300, UntCamposTab2306, UntCamposTab2399,
  UntCamposTab2400, UntCamposTab3000, UntCamposTab5001, UntCamposTab5002, UntCamposTab5003,
  UntCamposTab5011, UntCamposTab5012, UntCamposTab5013 ;

{ TBaseTraduzirCamposFactory }

class function TBaseTraduzirCamposFactory.New(
  ATabela: Integer): ICamposTabelas;
begin
   Result := nil;
   Case ATabela Of
      1000: Result := TCamposTab1000.Create();
      1005: Result := TCamposTab1005.Create();
      1010: Result := TCamposTab1010.Create();
      1020: Result := TCamposTab1020.Create();
      1030: Result := TCamposTab1030.Create();
      1035: Result := TCamposTab1035.Create();
      1040: Result := TCamposTab1040.Create();
      1050: Result := TCamposTab1050.Create();
      1060: Result := TCamposTab1060.Create();
      1070: Result := TCamposTab1070.Create();
      1080: Result := TCamposTab1080.Create();
      1200: Result := TCamposTab1200.Create();
      1202: Result := TCamposTab1202.Create();
      1207: Result := TCamposTab1207.Create();
      1210: Result := TCamposTab1210.Create();
      1250: Result := TCamposTab1250.Create();
      1260: Result := TCamposTab1260.Create();
      1270: Result := TCamposTab1270.Create();
      1280: Result := TCamposTab1280.Create();
      1295: Result := TCamposTab1295.Create();
      1298: Result := TCamposTab1298.Create();
      1299: Result := TCamposTab1299.Create();
      1300: Result := TCamposTab1300.Create();
      2190: Result := TCamposTab2190.Create();
      2200: Result := TCamposTab2200.Create();
      2205: Result := TCamposTab2205.Create();
      2206: Result := TCamposTab2206.Create();
      2210: Result := TCamposTab2210.Create();
      2220: Result := TCamposTab2220.Create();
      2221: Result := TCamposTab2221.Create();
      2230: Result := TCamposTab2230.Create();
      2240: Result := TCamposTab2240.Create();
      2245: Result := TCamposTab2245.Create();
      2250: Result := TCamposTab2250.Create();
      2260: Result := TCamposTab2260.Create();
      2298: Result := TCamposTab2298.Create();
      2299: Result := TCamposTab2299.Create();
      2300: Result := TCamposTab2300.Create();
      2306: Result := TCamposTab2306.Create();
      2399: Result := TCamposTab2399.Create();
      2400: Result := TCamposTab2400.Create();
      3000: Result := TCamposTab3000.Create();
      5001: Result := TCamposTab5001.Create();
      5002: Result := TCamposTab5002.Create();
      5003: Result := TCamposTab5003.Create();
      5011: Result := TCamposTab5011.Create();
      5012: Result := TCamposTab5012.Create();
      5013: Result := TCamposTab5013.Create();
   End;
end;

end.
