# Tradução dos campos do e-Social 
Esse módulo serve para você traduzir um campo do e-Social de uma determinada tabela para uma descrição mais fácil para o usuário, por exemplo:

### Tabela 1000
Entrada | Saída
--- | ---
softwareHouse | Informações do desenvolvedor do Software
situacaoPF | Informações Complementares - Pessoa Física
natJurid | código da Natureza Jurídica do Contribuinte

### Tabela 2200
Entrada | Saída 
--- | --- 
dtExped | Data da expedição do documento
nrRic | Número do Documento Nacional de Identidade - DNI
nrOc | Número de inscrição no órgão de classe

# Exemplo de como usar
```delphi
var
  mapa: TDictionary<Integer, ICamposTabelas>;
  campos: ICamposTabelas;
begin
   mapa := TDictionary<Integer, ICamposTabelas>.Create();

   Try
      mapa.add(1000, TBaseTraduzirCamposFactory.New(1000));
      mapa.add(2200, TBaseTraduzirCamposFactory.New(2200));

      mapa.TryGetValue(1000, campos);
      If Assigned(campos) Then
         Result := campos.GetDescricao(mensagem);
   Finally
      mapa.Free;
   End;
end;
```

## Obs:

Caso tenha problemas com charset basta utilizar o método "UTF8ToNativeString" da "ACBrUtil" e corrigir os problemas de acentuação.
