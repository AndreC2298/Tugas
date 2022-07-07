import 'Mahasiswa.dart';
import 'Staf.dart';

void main(List<String> arguments) {
  var m1 = Mahasiswa("Andre Cristo", "26416069");
  m1.ambilsks(12);
  print(m1.sks);
  m1.status = "Aktif";
  print(m1.status);
  m1.ips = 2.00;
  print(m1.ips);
  m1.ipk = 2.75;
  print(m1.ipk);

  var DT = DosenTetap("DosenTetap", 5000000);
  var DL = DosenLB("DosenLB", 5000000);
  var DTA = DosenTamu("DosenTamu", 0);

  print(DT.nama);
  DT.getPenghasilan();
  DT.matkul = 40;
  DT.getPenghasilan();
  DT.absen();
  DT.getPenghasilan();
  DT.tunjangan = -50000;
  DT.tunjangan = 50000;
  DT.getPenghasilan();

  print(DL.nama);
  DL.getPenghasilan();
  DL.matkul = 40;
  DL.getPenghasilan();

  print(DTA.nama);
  DTA.getPenghasilan();
  DTA.matkul = 40;
  DTA.getPenghasilan();
  DTA.absen();
  DTA.getPenghasilan();
  DTA.tunjangan = -50000;
  DTA.tunjangan = 50000;
  DTA.getPenghasilan();
}
