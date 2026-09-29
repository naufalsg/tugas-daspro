program soal2;
uses crt;
var
prestasi: integer;
ipk, penghasilan: real;
begin
clrscr;
writeln('penentu beasiswa');
writeln;
write('IPK : ');
readln(ipk);
write('penghasilan orang tua : ');
readln(penghasilan);
write('jumlah prestasi : ');
readln(prestasi);
writeln;

if ipk < 2.75 then
    writeln('IPK Tidak Memenuhi Syarat')
  else if (ipk >= 3.75) and (penghasilan <= 5000000) and (prestasi >= 2) then
    writeln('Mendapatkan Beasiswa Penuh')
  else if (ipk >= 3.50) and (penghasilan <= 7000000) and (prestasi >= 1) then
    writeln('Mendapatkan Beasiswa Sebagian')
  else if penghasilan > 7000000 then
    writeln('Penghasilan Tidak Memenuhi Syarat')
  else
    writeln('Tidak Mendapatkan Beasiswa');
 
  readln;
end.

