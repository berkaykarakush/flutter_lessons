// import 'dart:convert';
// import 'package:dio/dio.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter_lessons/FlutterLessons/entity/KisilerCevap.dart';
// import 'package:flutter_lessons/sqlite/VeritabaniYardimcisi.dart';
// import '../FlutterLessons/entity/Kisiler.dart';
//
// class KisilerDaoRepository{
//
//   // SQLite Islemleri
//   //region
//   // Future<void> kayit(String kisi_ad, String kisi_tel) async{
//   //   var db = await VeritabaniYardimcisi.veritabaniErisim();
//   //   var bilgiler = Map<String, dynamic>();
//   //   bilgiler["kisi_ad"] = kisi_ad;
//   //   bilgiler["kisi_tel"] = kisi_tel;
//   //   await db.insert("kisiler", bilgiler);
//   // }
//   //
//   // Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async{
//   //   var db = await VeritabaniYardimcisi.veritabaniErisim();
//   //   var bilgiler = Map<String, dynamic>();
//   //   bilgiler["kisi_ad"] = kisi_ad;
//   //   bilgiler["kisi_tel"] = kisi_tel;
//   //   await db.update("kisiler", bilgiler, where: "kisi_id=?", whereArgs: [kisi_id]);
//   // }
//   //
//   // Future<void> sil(int kisi_id) async{
//   //   var db = await VeritabaniYardimcisi.veritabaniErisim();
//   //   await db.delete("kisiler", where: "kisi_id=?", whereArgs: [kisi_id]);
//   // }
//   //
//   // Future<List<Kisiler>> tumKisiler() async{
//   //   var db = await VeritabaniYardimcisi.veritabaniErisim();
//   //   List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM kisiler");
//   //   return List.generate(maps.length, (index) {
//   //     var satir = maps[index];
//   //     return Kisiler(kisi_id: satir["kisi_id"], kisi_ad: satir["kisi_ad"], kisi_tel: satir["kisi_tel"]);
//   //   });
//   // }
//   //
//   // Future<List<Kisiler>> kisiAra(String aramaKelimesi) async{
//   //   var db = await VeritabaniYardimcisi.veritabaniErisim();
//   //   List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM kisiler WHERE kisi_ad LIKE '%$aramaKelimesi%'");
//   //   return List.generate(maps.length, (index) {
//   //     var satir = maps[index];
//   //     return Kisiler(kisi_id: satir["kisi_id"], kisi_ad: satir["kisi_ad"], kisi_tel: satir["kisi_tel"]);
//   //   });
//   // }
//   //endregion
//
//   // Dio Islemleri
//   //region
//   // List<Kisiler> parseKisilerCevap(String cevap){
//   //   return KisilerCevap.fromJson(json.decode(cevap)).kisiler;
//   // }
//   //
//   // Future<void> kayit(String kisi_ad, String kisi_tel) async{
//   //   var url = "http://kasimadalan.pe.hu/kisiler/insert_kisiler.php";
//   //   var veri = {"kisi_ad":kisi_ad, "kisi_tel":kisi_tel};
//   //   var cevap = await Dio().post(url, data: FormData.fromMap(veri));
//   //   print("Kisi ekle : ${cevap.data.toString()}");
//   // }
//   //
//   // Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async{
//   //   var url = "http://kasimadalan.pe.hu/kisiler/update_kisiler.php";
//   //   var veri = {"kisi_id":kisi_id,"kisi_ad":kisi_ad, "kisi_tel":kisi_tel};
//   //   var cevap = await Dio().post(url, data: FormData.fromMap(veri));
//   //   print("Kisi guncelle : ${cevap.data.toString()}");
//   // }
//   //
//   // Future<void> sil(int kisi_id) async{
//   //   var url = "http://kasimadalan.pe.hu/kisiler/delete_kisiler.php";
//   //   var veri = {"kisi_id":kisi_id};
//   //   var cevap = await Dio().post(url, data: FormData.fromMap(veri));
//   //   print("Kisi sil: ${cevap.data.toString()}");
//   // }
//   //
//   // Future<List<Kisiler>> tumKisiler() async{
//   //   var url = "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php";
//   //   var cevap = await Dio().get(url);
//   //   return parseKisilerCevap(cevap.data.toString());
//   // }
//   //
//   // Future<List<Kisiler>> kisiAra(String aramaKelimesi) async{
//   //   var url = "http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php";
//   //   var veri = {"kisi_ad":aramaKelimesi};
//   //   var cevap = await Dio().post(url, data: FormData.fromMap(veri));
//   //   return parseKisilerCevap(cevap.data.toString());
//   // }
//   //endregion
//
//   // Firebase Islemleri
//   //region
//   // List<Kisiler> parseKisilerCevap(String cevap){
//   //   return KisilerCevap.fromJson(json.decode(cevap)).kisiler;
//   // }
//   var refKisiler = FirebaseDatabase.instance.ref().child("kisiler");
//
//   Future<void> kayit(String kisi_ad, String kisi_tel) async{
//     var bilgi = Map<String, dynamic>();
//     bilgi["kisi_ad"] = kisi_ad;
//     bilgi["kisi_tel"] = kisi_tel;
//     refKisiler.push().set(bilgi);
//   }
//
//   Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async{
//     var bilgi = Map<String, dynamic>();
//     bilgi["kisi_ad"] = kisi_ad;
//     bilgi["kisi_tel"] = kisi_tel;
//     refKisiler.child(kisi_id.toString()).update(bilgi);
//   }
//
//   Future<void> sil(int kisi_id) async{
//     refKisiler.child(kisi_id.toString()).remove();
//   }
//
//   Future<void> tumKisiler() async{
//   }
//
//   Future<void> kisiAra(String aramaKelimesi) async{
//   }
//   //endregion
//
// }