// To parse this JSON data, do
//
//     final surat = suratFromJson(jsonString);

import 'dart:convert';

Surat suratFromJson(String str) => Surat.fromJson(json.decode(str));

String suratToJson(Surat data) => json.encode(data.toJson());

class Surat {
  int code;
  String message;
  List<ListSurat> data;

  Surat({
    required this.code,
    required this.message,
    required this.data,
  });

  factory Surat.fromJson(Map<String, dynamic> json) => Surat(
        code: json["code"],
        message: json["message"],
        data: List<ListSurat>.from(
            json["data"].map((x) => ListSurat.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class ListSurat {
  int nomor;
  String nama;
  String namaLatin;
  int jumlahAyat;
  String tempatTurun;
  String arti;
  String deskripsi;
  Map<String, String> audioFull;

  ListSurat({
    required this.nomor,
    required this.nama,
    required this.namaLatin,
    required this.jumlahAyat,
    required this.tempatTurun,
    required this.arti,
    required this.deskripsi,
    required this.audioFull,
  });

  factory ListSurat.fromJson(Map<String, dynamic> json) => ListSurat(
        nomor: json["nomor"],
        nama: json["nama"],
        namaLatin: json["namaLatin"],
        jumlahAyat: json["jumlahAyat"],
        tempatTurun: json["tempatTurun"],
        arti: json["arti"],
        deskripsi: json["deskripsi"],
        audioFull: Map.from(json["audioFull"])
            .map((k, v) => MapEntry<String, String>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "nomor": nomor,
        "nama": nama,
        "namaLatin": namaLatin,
        "jumlahAyat": jumlahAyat,
        "arti": arti,
        "deskripsi": deskripsi,
        "audioFull":
            Map.from(audioFull).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}
