class Data {
  String idd;
  String avatard;
  String namad;
  String alamatd;
  String emaild;
  String pekerjaand;
  String quoted;

  Data({
    required this.idd,
    required this.avatard,
    required this.namad,
    required this.alamatd,
    required this.emaild,
    required this.pekerjaand,
    required this.quoted,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        idd: json['id'],
        avatard: json['avatar'],
        namad: json['nama'],
        alamatd: json['alamat'],
        emaild: json['email'],
        pekerjaand: json['pekerjaan'],
        quoted: json['quote']);
  }
}
