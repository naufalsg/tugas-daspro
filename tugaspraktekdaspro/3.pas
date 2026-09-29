program soal3;
uses crt;
var
  kode, jumlah, status : integer;
  harga, total, diskon, totalbayar : real;

begin
  clrscr;
  writeln('bayar makanan');
  writeln;
  writeln('Kode makanan');
  writeln('1. Nasi goreng (20.000)');
  writeln('2. Mie goreng (18.000)');
  writeln('3. Ayam geprek (25.000)');
  writeln('4. Steak (50.000)');
  write('Pilih makanan : ');
  readln(kode);
  write('jumlah pesanan : ');
  readln(jumlah);
writeln;
writeln('status pelanggan');
writeln;
  writeln('1. Member');
  writeln('2. non-member');
  write('pilib status : ');
  readln(status);
  writeln;

case kode of
    1 : harga := 20000;
    2 : harga := 18000;
    3 : harga := 25000;
    4 : harga := 50000;
  end;
 
  if jumlah <= 0 then
    writeln('Jumlah pesanan tidak valid')
  else if jumlah > 10 then
    writeln('Pesanan terlalu banyak')
  else
  begin
    total := harga * jumlah;
 
    if status = 1 then
    begin
      if total >= 100000 then
        diskon := total * 0.15
      else if total >= 50000 then
        diskon := total * 0.1
      else
        diskon := total * 0.05;
    end
    else
    begin
      if total >= 100000 then
        diskon := total * 0.05
      else
        diskon := 0;
    end;
 
    totalbayar := total - diskon;
 
    writeln('Harga makanan : Rp ', harga:0:0);
    writeln('Total harga   : Rp ', total:0:0);
    writeln('Diskon        : Rp ', diskon:0:0);
    writeln('Total bayar   : Rp ', totalbayar:0:0);
  end;
 
  readln;
end.
  