program ElGamal;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  p, i: Integer;
  prime: Boolean;

begin
  prime := False;
  while prime = False do
  begin
    prime := True;
    Writeln('Input p:');
    Readln(p);
    for i := 2 to p div 2 do
    begin
      if p mod i = 0 then
      begin
        prime := False;
        Break;
      end;
    end;
  end;
end.

