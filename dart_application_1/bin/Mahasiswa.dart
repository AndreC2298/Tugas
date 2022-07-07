class Mahasiswa {
  String _nama;
  String _nrp;
  String _status = 'Aktif';
  int _sks = 0;
  double _ips = 0;
  double _ipk = 0;
  Mahasiswa(this._nama, this._nrp);
  set nama(String dtNama) {
    _nama = dtNama;
  }
  String get nama => this._nama;

  void nrp(String dtNrp) {
    _nrp = dtNrp;
  }
  String get nnrp => this._nrp;
  set status(String dtStatus) {
    _status = dtStatus;
  }
  String get status => this._status;
  set ipk(double dtIpk) {
    _ipk = dtIpk;
  }
  double get ipk => this._ipk;
  set ips(double dtIps) {
    _ips = dtIps;
  }
  double get ips => this._ips;
  int get sks => this._sks;

  void ambilsks(int dtsks) {
    if (dtsks <= 2) {
      print("SKS yang diambil minim 2");
    } else if (dtsks >= 24) {
      print("SKS yang diambil maksimum 24");
    } else if (_sks + dtsks >= 24) {
      print("SKS yang diambil melebihi 24");
    } else {
      _sks += dtsks;
      print("Tambah sks berhasil");
    }
  }
}
