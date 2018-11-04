program ElGamal;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Math;

type
  TArrayInt = array of integer;

var
  p, i, g, counter: Integer;
  prime: Boolean;
  Array_of_primes: TArrayInt;

function Root(p: integer; var Aray: TArrayInt): Integer;
var
  k, t: integer;
begin
  for k := 1 to counter do
  begin
    t := Random(p - 2) + 2;
    if (Power(g, (p - 1) / Aray[k - 1])) = (1 mod p) then
      Root(t, Aray);
  end;
   result := t;
end;

begin
  prime := False;
  Randomize;
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
  counter := 0;
  for i := 2 to p - 1 do
  begin
    if ((p - 1) mod i) = 0 then
    begin
      inc(counter);
      setlength(Array_of_primes, counter);
      Array_of_primes[counter - 1] := i;
    end;
  end;

  g := Root(p,Array_of_primes);
  Writeln(g);
  Sleep(222222);

end.

