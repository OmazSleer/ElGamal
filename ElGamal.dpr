program ElGamal;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Math;

type
  TArrayInt = array of integer;

var
  p, i, g, counter, x, y: Integer;
  prime: Boolean;
  Array_of_primes: TArrayInt;

function Root(p: integer; var Aray: TArrayInt): Integer;
var
  k, t: integer;
begin
  t := 0;
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
  p := 0;
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
  Writeln('g: ', g);
  Writeln;

  x := 1;
  while (x = 1) or (x >= p - 1) do
  begin
    Writeln('Input x:');
    Readln(x);
  end;

  y := Round(Exp(x * Ln(g))) mod p;
  Writeln;
  Writeln('y: ', y);



  Readln;
end.

