program soal3;
uses crt;
var
  film, hari, jumlahtiket : integer;
  harga, hargaawal, diskon, total : real;

begin
  clrscr;
  writeln('bioskop nopal');
  writeln;
  writeln('Jenis film');
  writeln('1. Reguler (30.000)');
  writeln('2. 3D (45.000)');
  writeln('3. IMAX (60.000)');
  write('Pilih film : ');
  readln(film);
  writeln;
  writeln('Hari');
  writeln('1. Senin - Kamis');
  writeln('2. Jumat');
  writeln('3. Sabtu - Minggu');
  write('Pilih hari : ');
  readln(hari);
  writeln;
  write('Jumlah tiket : ');
  readln(jumlahtiket);

  case film of
    1 : harga := 30000;
    2 : harga := 45000;
    3 : harga := 60000;
  end;

  if
  hari = 3 then
    harga := harga + 10000
  else if
   hari = 2 then
    harga := harga + 5000;

  hargaawal := harga * jumlahtiket;

  if hargaawal >= 200000 then
    diskon := hargaawal * 0.1
  else if hargaawal >= 100000 then
    diskon := hargaawal * 0.05
  else
    diskon := 0;

  total := hargaawal - diskon;

  writeln;
  writeln('Harga awal    : Rp ', hargaawal:0:0);
  writeln('Diskon        : Rp ', diskon:0:0);
  writeln('Total bayar   : Rp ', total:0:0);
  readln;
end.