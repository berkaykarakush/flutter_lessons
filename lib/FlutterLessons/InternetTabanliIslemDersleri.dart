// import 'dart:collection';
// import 'dart:io';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:path/path.dart' as path;
// import 'package:sqflite/sqflite.dart';
//
// // void main() {
// //   runApp(MyApp());
// // }

// Firebase Main Method
//region
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
//endregion

// JSON Parse - Tek Nesne
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   void mesajParse()
//   {
//     String strVeri = '{ "mesajlar" : {"mesaj_kod" : 1, "mesaj_icerik": "basarili" }}';
//     var jsonVeri = json.decode(strVeri);
//     var jsonNesne = jsonVeri["mesajlar"];
//     var mesaj = Mesajlar.fromJson(jsonNesne);
//     print("Mesaj Kod: ${mesaj.mesaj_kod}");
//     print("Mesaj Icerik: ${mesaj.mesaj_icerik}");
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     mesajParse();
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           centerTitle: true,
//           title: Text("Anasayfa", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [],
//           ),
//         )
//     );
//   }
// }
//
// class Mesajlar{
//   int mesaj_kod;
//   String mesaj_icerik;
//   Mesajlar(this.mesaj_kod, this.mesaj_icerik);
//   factory Mesajlar.fromJson(Map<String, dynamic> json){
//     return Mesajlar(json["mesaj_kod"] as int, json["mesaj_icerik"] as String);
//   }
// }
//endregion

// JSON Parse - Tek Array
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   void kisilerParse(){
//     String strVeri = '{ "kisiler" : [{ "kisi_id" : "1", "kisi_ad" : "ahmet", "kisi_tel" : "232342" },{ "kisi_id" : "2", "kisi_ad" : "mehmet", "kisi_tel" : "232323" }] }';
//     var jsonVeri = json.decode(strVeri);
//     var jsonArray = jsonVeri["kisiler"] as List;
//     List<Kisiler> kisiler = jsonArray.map((jsonArrayNesnesi) => Kisiler.fromJson(jsonArrayNesnesi)).toList();
//
//     for(var kisi in kisiler){
//       print("*************** \nKisi Id : ${kisi.kisi_id} \nKisi Ad: ${kisi.kisi_ad} \nKisi Tel : ${kisi.kisi_tel}");
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     kisilerParse();
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           centerTitle: true,
//           title: Text("Anasayfa", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [],
//           ),
//         )
//     );
//   }
// }
//
// class Kisiler{
//   String kisi_id;
//   String kisi_ad;
//   String kisi_tel;
//   Kisiler(this.kisi_id, this.kisi_ad, this.kisi_tel);
//
//   factory Kisiler.fromJson(Map<String, dynamic> json){
//     return Kisiler(json["kisi_id"] as String, json["kisi_ad"] as String, json["kisi_tel"] as String);
//   }
// }
//endregion

// JSON Parse - Karisik Veri
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   void kisilerCevapParse()
//   {
//     String strVeri = '{"success":1,"kisiler":[{"kisi_id":"1", "kisi_ad":"ahmet", "kisi_tel":"1234567"},{"kisi_id":"2", "kisi_ad":"zeynep", "kisi_tel":"1234567"}]}';
//     var jsonVeri = json.decode(strVeri);
//     var kisilerCevap = KisilerCevap.fromJson(jsonVeri);
//     print("Success : ${kisilerCevap.succes}");
//     List<Kisiler> kisiler = kisilerCevap.kisiler;
//     for(var kisi in kisiler){
//       print("*********** \nKisi Id : ${kisi.kisi_id} \nKisi Ad: ${kisi.kisi_ad} \nKisi Tel : ${kisi.kisi_tel}");
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     kisilerCevapParse();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           centerTitle: true,
//           title: Text("Anasayfa", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [],
//           ),
//         )
//     );
//   }
// }
//
// class Kisiler{
//   String kisi_id;
//   String kisi_ad;
//   String kisi_tel;
//   Kisiler(this.kisi_id, this.kisi_ad, this.kisi_tel);
//
//   factory Kisiler.fromJson(Map<String, dynamic> json){
//     return Kisiler(json["kisi_id"] as String, json["kisi_ad"] as String, json["kisi_tel"] as String);
//   }
// }
//
// class KisilerCevap{
//   int succes;
//   List<Kisiler> kisiler;
//   KisilerCevap(this.succes, this.kisiler);
//
//   factory KisilerCevap.fromJson(Map<String, dynamic> json){
//     var jsonArray = json["kisiler"] as List;
//     List<Kisiler> kisiler = jsonArray.map((e) => Kisiler.fromJson(e)).toList();
//     return KisilerCevap(json["success"] as int, kisiler);
//   }
// }
//endregion

// JSON Parse - Foreign Key
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   void filmlerCevapParse(){
//     String strVeri = '{"success":1, "filmler":[{"film_id":"1","film_ad":"Interstellar","film_yil":"2015","film_resim":"1.jpeg","kategori":{"kategori_id":"2","kategori_ad":"Bilim Kurgu"},"yonetmen":{"yonetmen_id":"3","yonetmen_ad":"Christoper Nolan"}},{"film_id":"2","film_ad":"Interstellar 2","film_yil":"2012","film_resim":"2.jpeg","kategori":{"kategori_id":"3","kategori_ad":"Bilim Kurgu 2"},"yonetmen":{"yonetmen_id":"3","yonetmen_ad":"Christoper Nolan 2"}}]}';
//     var jsonVeri = json.decode(strVeri);
//     var filmlerCevap = FilmlerCevap.fromJson(jsonVeri);
//     int success = filmlerCevap.success;
//     List<Filmler> filmler = filmlerCevap.filmler;
//     print("Sucess: ${success}");
//     for(var film in filmler){
//       print("*********** \nFilm Id; ${film.film_id} \nFilm Ad: ${film.film_ad} \nFilm Yil: ${film.film_yil} \nFilm Resim: ${film.film_resim} \nFilm Kategori: ${film.kategoriler.kategori_ad} \nFilm Yonetmen: ${film.yonetmenler.yonetmen_ad}");
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     filmlerCevapParse();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           centerTitle: true,
//           title: Text("Anasayfa", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [],
//           ),
//         )
//     );
//   }
// }
//
// class Kategoriler{
//   String kategori_id;
//   String kategori_ad;
//
//   Kategoriler(this.kategori_id, this.kategori_ad);
//   factory Kategoriler.fromJson(Map<String, dynamic> json){
//     return Kategoriler(json["kategori_id"] as String, json["kategori_ad"] as String);
//   }
// }
//
// class Yonetmenler{
//   String yonetmen_id;
//   String yonetmen_ad;
//
//   Yonetmenler(this.yonetmen_id, this.yonetmen_ad);
//   factory Yonetmenler.fromJson(Map<String, dynamic> json){
//     return Yonetmenler(json["yonetmen_id"] as String, json["yonetmen_ad"] as String);
//   }
// }
//
// class Filmler{
//   String film_id;
//   String film_ad;
//   String film_yil;
//   String film_resim;
//   Kategoriler kategoriler;
//   Yonetmenler yonetmenler;
//
//   Filmler(this.film_id, this.film_ad, this.film_yil, this.film_resim,
//       this.kategoriler, this.yonetmenler);
//   factory Filmler.fromJson(Map<String, dynamic> json){
//     return Filmler(json["film_id"] as String, json["film_ad"] as String, json["film_yil"] as String, json["film_resim"] as String, Kategoriler.fromJson(json["kategori"]), Yonetmenler.fromJson(json["yonetmen"]));
//   }
// }
//
// class FilmlerCevap{
//   int success;
//   List<Filmler> filmler;
//
//   FilmlerCevap(this.success, this.filmler);
//   factory FilmlerCevap.fromJson(Map<String, dynamic> json){
//     var jsonArray = json["filmler"] as List;
//     List<Filmler> filmler = jsonArray.map((jsonArrayNesnesi) => Filmler.fromJson(jsonArrayNesnesi)).toList();
//     return FilmlerCevap(json["success"] as int, filmler);
//   }
// }
//endregion

// HTTP Kutuphanesi
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   List<Kisiler> parseKisilerCevap(String cevap){
//     return KisilerCevap.fromJson(json.decode(cevap)).kisiler;
//   }
//
//   Future<List<Kisiler>> tumKisiler() async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/kisiler/tum_kisiler.php");
//     var cevap = await http.get(url);
//     return parseKisilerCevap(cevap.body);
//   }
//
//   Future<List<Kisiler>> kisilerAra(String aramaKelimesi) async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php");
//     var veri = {"kisi_ad": aramaKelimesi};
//     var cevap = await http.post(url, body: veri);
//     return parseKisilerCevap(cevap.body);
//   }
//
//   Future<void> kisiSil(int kisi_id) async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/kisiler/delete_kisiler.php");
//     var veri = {"kisi_id": kisi_id.toString()};
//     var cevap = await http.post(url, body: veri);
//     print("Silme cevap: ${cevap.body}");
//   }
//
//   Future<void> kisiEkle(String kisi_ad, String kisi_tel) async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/kisiler/insert_kisiler.php");
//     var veri = {"kisi_ad":kisi_ad, "kisi_tel":kisi_tel};
//     var cevap = await http.post(url, body: veri);
//     print("Ekleme cevap: ${cevap.body}");
//   }
//
//   Future<void> kisiGuncelle(String kisi_id, String kisi_ad, String kisi_tel) async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/kisiler/update_kisiler.php");
//     var veri = {"kisi_id":kisi_id,"kisi_ad":kisi_ad, "kisi_tel":kisi_tel};
//     var cevap = await http.post(url, body: veri);
//     print("Guncelle cevap: ${cevap.body}");
//
//   }
//
//   Future<void> kisileriGoster() async{
//     var kisiler = await tumKisiler();
//     // var kisiler = await kisilerAra("e");
//     for(var kisi in kisiler){
//       print("************* \nKisi Id: ${kisi.kisi_id} \nKisi Ad: ${kisi.kisi_ad} \nKisi Tel: ${kisi.kisi_tel}");
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     // kisiSil(16175);
//     // kisiEkle("Ahmet"", "1111111111");
//     kisiGuncelle("16183", "Mehmet", "23232323");
//     // kisileriGoster();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           centerTitle: true,
//           title: Text("Anasayfa", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [],
//           ),
//         )
//     );
//   }
// }
//
// class Kisiler{
//   String kisi_id;
//   String kisi_ad;
//   String kisi_tel;
//   Kisiler(this.kisi_id, this.kisi_ad, this.kisi_tel);
//
//   factory Kisiler.fromJson(Map<String, dynamic> json){
//     return Kisiler(json["kisi_id"] as String, json["kisi_ad"] as String, json["kisi_tel"] as String);
//   }
// }
//
// class KisilerCevap{
//   int succes;
//   List<Kisiler> kisiler;
//   KisilerCevap(this.succes, this.kisiler);
//
//   factory KisilerCevap.fromJson(Map<String, dynamic> json){
//     var jsonArray = json["kisiler"] as List;
//     List<Kisiler> kisiler = jsonArray.map((e) => Kisiler.fromJson(e)).toList();
//     return KisilerCevap(json["success"] as int, kisiler);
//   }
// }
//endregion

// Firebase Islemleri
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   var refKisiler = FirebaseDatabase.instance.ref().child("kisiler_tablo");
//
//   Future<void> kisiEkle() async{
//     var bilgi = HashMap<String, dynamic>();
//     bilgi["kisi_ad"] = "Zeynep";
//     bilgi["kisi_yas"] = 2;
//     refKisiler.push().set(bilgi);
//   }
//
//   Future<void> kisiSil() async{
//     refKisiler.child("-Nj81KQMvsUKt06RslYo").remove();
//   }
//
//   Future<void> kisiGuncelle() async{
//     var guncelBilgi = HashMap<String, dynamic>();
//     guncelBilgi["kisi_ad"] = "Yeni - Sedat";
//     guncelBilgi["kisi_yas"] = 35;
//     refKisiler.child("-Nj81cvi8-Uq97ISP9IF").update(guncelBilgi);
//   }
//
//   //degisim dinleme var
//   Future<void> tumKisiler() async{
//     refKisiler.onValue.listen((event) {
//       var gelenDegerler = event.snapshot.value as dynamic;
//       if(gelenDegerler != null){
//         gelenDegerler.forEach((key, nesne) {
//           var gelenKisi = Kisiler.fromJson(nesne);
//           print("*********** \nKisi Key: $key \nKisi Ad: ${gelenKisi.kisi_ad} \nKisi Yas: ${gelenKisi.kisi_yas}");
//         });
//       }
//     });
//   }
//
//   //degisim dinleme yok
//   Future<void> tumKisilerOnce() async{
//     refKisiler.once().then((value) {
//       var gelenDegerler = value.snapshot.value as dynamic;
//       if(gelenDegerler != null){
//         gelenDegerler.forEach((key, nesne) {
//           var gelenKisi = Kisiler.fromJson(nesne);
//           print("*********** \nKisi Key: $key \nKisi Ad: ${gelenKisi.kisi_ad} \nKisi Yas: ${gelenKisi.kisi_yas}");
//         });
//       }
//     });
//   }
//
//   //Esitlik arama
//   Future<void> esitlikArama() async{
//      var sorgu = refKisiler.orderByChild("kisi_ad").equalTo("Zeynep");
//      sorgu.onValue.listen((event) {
//        var gelenDegerler = event.snapshot.value as dynamic;
//        if(gelenDegerler != null){
//          gelenDegerler.forEach((key, nesne) {
//            var gelenKisi = Kisiler.fromJson(nesne);
//            print("*********** \nKisi Key: $key \nKisi Ad: ${gelenKisi.kisi_ad} \nKisi Yas: ${gelenKisi.kisi_yas}");
//          });
//        }
//      });
//   }
//
//   // Limit Metotlari
//   Future<void> limitliVeri() async{
//     var sorgu = refKisiler.limitToFirst(2); // ilk 2
//     // var sorgu = refKisiler.limitToLast(2); // son 2
//     sorgu.onValue.listen((event) {
//       var gelenDegerler = event.snapshot.value as dynamic;
//       if(gelenDegerler != null){
//         gelenDegerler.forEach((key, nesne) {
//           var gelenKisi = Kisiler.fromJson(nesne);
//           print("*********** \nKisi Key: $key \nKisi Ad: ${gelenKisi.kisi_ad} \nKisi Yas: ${gelenKisi.kisi_yas}");
//         });
//       }
//     });
//   }
//
//   // Deger Araligi
//   Future<void> araliliVeri() async{
//     var sorgu = refKisiler.orderByChild("kisi_yas").startAt(18).endAt(40);
//     sorgu.onValue.listen((event) {
//       var gelenDegerler = event.snapshot.value as dynamic;
//       if(gelenDegerler != null){
//         gelenDegerler.forEach((key, nesne) {
//           var gelenKisi = Kisiler.fromJson(nesne);
//           print("*********** \nKisi Key: $key \nKisi Ad: ${gelenKisi.kisi_ad} \nKisi Yas: ${gelenKisi.kisi_yas}");
//         });
//       }
//     });
//   }
//
//
//   @override
//   void initState() {
//     super.initState();
//     // kisiEkle();
//     // kisiSil();
//     // kisiGuncelle();
//     // tumKisiler();
//     // tumKisilerOnce();
//     // esitlikArama();
//     // limitliVeri();
//     // araliliVeri();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           centerTitle: true,
//           title: Text("Anasayfa", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [],
//           ),
//         )
//     );
//   }
// }
//
// class Kisiler{
//   String kisi_ad;
//   int kisi_yas;
//   Kisiler(this.kisi_ad, this.kisi_yas);
//   factory Kisiler.fromJson(Map<String, dynamic> json){
//     return Kisiler(json["kisi_ad"] as String, json["kisi_yas"] as int);
//   }
// }
//endregion

// Sozluk Uygulamasi
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: Anasayfa(),
//     );
//   }
// }
//
// class Anasayfa extends StatefulWidget {
//   @override
//   State<Anasayfa> createState() => _AnasayfaState();
// }
//
// class _AnasayfaState extends State<Anasayfa> {
//   bool aramaYapiliyorMu = false;
//   String aramaKelimesi = "";
//
//   var refKelimeler = FirebaseDatabase.instance.ref().child("kelimeler_tablo");
//
//   Future<void> kelimeEkle() async{
//     var bilgi = HashMap<String, dynamic>();
//     bilgi["ingilizce"] = "food";
//     bilgi["turkce"] = "yemek";
//     refKelimeler.push().set(bilgi);
//   }
//
//   // List<Kelimeler> parseKelimelerCevap(String cevap){
//     // return KelimelerCevap.fromJson(json.decode(cevap)).kelimeler;
//   // }
//
//   // Future<List<Kelimeler>> tumKelimeler() async{
//   //   var url = Uri.parse("http://kasimadalan.pe.hu/sozluk/tum_kelimeler.php");
//   //   var cevap = await http.get(url);
//   //   print("veriler alindi");
//   //   return parseKelimelerCevap(cevap.body);
//   // }
//
//   // Future<List<Kelimeler>> aramaYap(String aramaKelimesi) async{
//   //   var url = Uri.parse("http://kasimadalan.pe.hu/sozluk/kelime_ara.php");
//   //   var veri = {"ingilizce":aramaKelimesi};
//   //   var cevap = await http.post(url, body: veri);
//   //   return parseKelimelerCevap(cevap.body);
//   // }
//
//   @override
//   void initState() {
//     super.initState();
//     // kelimeEkle();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           centerTitle: true,
//           title: aramaYapiliyorMu ?
//           TextField(
//             decoration: InputDecoration(hintText: "Aramak icin bir sey giriniz", hintStyle: TextStyle(color: Colors.white)),
//             onChanged: (aramaSonucu){
//               print("Arama sonucu: $aramaSonucu");
//               setState(() {
//                 aramaKelimesi = aramaSonucu;
//               });
//             },
//           )
//               : Text("Sozluk Uygulamasi", style: TextStyle(color: Colors.white),),
//           actions: [ aramaYapiliyorMu ?
//           IconButton(
//               onPressed: (){
//                 setState(() {
//                   aramaYapiliyorMu = false;
//                   aramaKelimesi = "";
//                 });
//               },
//               icon: Icon(Icons.cancel)
//           )
//               : IconButton(
//               onPressed: (){
//                 setState(() {
//                   aramaYapiliyorMu = true;
//                 });
//               },
//               icon: Icon(Icons.search)
//           )
//           ],
//         ),
//         body: StreamBuilder<DatabaseEvent>(
//           stream: refKelimeler.onValue,
//           builder: (BuildContext context,AsyncSnapshot<DatabaseEvent> event){
//             if(event.hasData){
//               var kelimeler = <Kelimeler>[];
//               var gelenDegerler = event.data!.snapshot.value as dynamic;
//               if(gelenDegerler != null){
//                 gelenDegerler.forEach((key, nesne) {
//                   var gelenKelime = Kelimeler.fromJson(key, nesne);
//
//                   if(aramaYapiliyorMu){
//                     if(gelenKelime.ingilizce.contains(aramaKelimesi)){
//                       kelimeler.add(gelenKelime);
//                     }
//                   }else{
//                     kelimeler.add(gelenKelime);
//                   }
//                 });
//               }
//               return ListView.builder(
//                 itemCount: kelimeler!.length ?? 0,
//                 itemBuilder: (context, indeks){
//                   var kelime = kelimeler[indeks];
//                   return GestureDetector(
//                     onTap: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(kelime: kelime,)));
//                     },
//                     child: SizedBox(
//                       height: 50,
//                       child: Card(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text(kelime.ingilizce, style: TextStyle(fontWeight: FontWeight.bold),),
//                             Text(kelime.turkce)
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }else{
//               return Center(
//                 child: Column(
//                   children: [
//                     Text("No data")
//                   ],
//                 ),
//               );
//             }
//           },
//         )
//     );
//   }
// }
//
// class DetaySayfa extends StatefulWidget {
//   Kelimeler kelime;
//   DetaySayfa({required this.kelime});
//
//   @override
//   State<DetaySayfa> createState() => _DetaySayfaState();
// }
//
// class _DetaySayfaState extends State<DetaySayfa> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           centerTitle: true,
//           title: Text("Detay Sayfa", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text(widget.kelime.ingilizce, style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.red),),
//               Text(widget.kelime.turkce, style: TextStyle(fontSize: 30.0),),
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class Kelimeler{
//   String kelime_id;
//   String ingilizce;
//   String turkce;
//
//   Kelimeler(this.kelime_id, this.ingilizce, this.turkce);
//   factory Kelimeler.fromJson(String key, Map<String, dynamic> json){
//     return Kelimeler(key, json["ingilizce"] as String, json["turkce"] as String);
//   }
// }


//endregion

// Notlar uygulamasi
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: Anasayfa(),
//     );
//   }
// }
//
// class Anasayfa extends StatefulWidget {
//   @override
//   State<Anasayfa> createState() => _AnasayfaState();
// }
//
// class _AnasayfaState extends State<Anasayfa> {
//
//   List<Notlar> parseNotlarCevap(String cevap){
//     return NotlarCevap.fromJson(json.decode(cevap)).notlar;
//   }
//
//   Future<List<Notlar>> tumNotlar() async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/notlar/tum_notlar.php");
//     var cevap = await http.get(url);
//     return parseNotlarCevap(cevap.body);
//   }
//
//   Future<bool> uygulamayiKapat() async{
//     await exit(0);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back,color: Colors.white,),
//           onPressed: (){
//             uygulamayiKapat();
//           },
//         ),
//         centerTitle: true,
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Notlar Uygulamasi", style: TextStyle(color: Colors.white),),
//             FutureBuilder<List<Notlar>>(
//                 future: tumNotlar(),
//                 builder: (context, snapshot){
//                   if(snapshot.hasData){
//                     var notlar = snapshot!.data;
//                     double ortalama = 0.0;
//
//                     if(!notlar!.isEmpty){
//                       double toplam = 0.0;
//                       for(var n in notlar){
//                         toplam += (int.parse(n.not1) + int.parse(n.not1)) / 2;
//                       }
//                       ortalama = toplam / notlar.length;
//                     }
//
//                     return Text("Ortalama : ${ortalama.toInt()}", style: TextStyle(color: Colors.white));
//                   }else{
//                     return Text("Ortalama : 0", style: TextStyle(color: Colors.white));
//                   }
//                 }
//             ),
//           ],
//         ),
//       ),
//       body: WillPopScope(
//         onWillPop: uygulamayiKapat,
//         child: FutureBuilder<List<Notlar>>(
//           future: tumNotlar(),
//           builder: (context, snapshot){
//             if(snapshot.hasData){
//               var notlar = snapshot.data;
//               return ListView.builder(
//                 itemCount: notlar!.length,
//                 itemBuilder: (contex,indeks){
//                   var not = notlar[indeks];
//                   return GestureDetector(
//                     onTap: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => NotDetaySayfa(not: not,)));
//                     },
//                     child: Card(
//                       child: SizedBox(
//                         height: 50,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text(not.ders_adi, style: TextStyle(fontWeight: FontWeight.bold),),
//                             Text(not.not1.toString()),
//                             Text(not.not2.toString()),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }else{
//               return Center();
//             }
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           Navigator.push(context, MaterialPageRoute(builder: (context) => NotKayit()));
//         },
//         tooltip: 'Not Ekle',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
//
// class NotKayit extends StatefulWidget {
//   const NotKayit({super.key});
//
//   @override
//   State<NotKayit> createState() => _NotKayitState();
// }
//
// class _NotKayitState extends State<NotKayit> {
//
//   var tfDersAdi = TextEditingController();
//   var tfnot1 = TextEditingController();
//   var tfnot2 = TextEditingController();
//
//   Future<void> kayit(String ders_adi, int not1, int not2)  async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/notlar/insert_not.php");
//     var veri = {"ders_adi":ders_adi, "not1":not1.toString(), "not2":not2.toString()};
//     var cevap = await http.post(url, body: veri);
//     print("eklendi | cevap : ${cevap.body}");
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.white,),
//           onPressed: (){
//             Navigator.pop(context);
//           },
//         ),
//         centerTitle: true,
//         title: Text("Not Kayit", style: TextStyle(color: Colors.white),),
//       ),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.only(left: 50.0, right: 50.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               TextField(
//                 controller: tfDersAdi,
//                 decoration: InputDecoration(hintText: "Ders Adi"),
//               ),
//               TextField(
//                 controller: tfnot1,
//                 decoration: InputDecoration(hintText: "1. Not"),
//               ),
//               TextField(
//                 controller: tfnot2,
//                 decoration: InputDecoration(hintText: "2. Not"),
//               )
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: (){
//           kayit(tfDersAdi.text, int.parse(tfnot1.text), int.parse(tfnot2.text));
//         },
//         tooltip: 'Not Ekle',
//         icon: Icon(Icons.save),
//         label: Text("Kaydet"),
//
//       ),
//     );
//   }
// }
//
// class NotDetaySayfa extends StatefulWidget {
//   Notlar not;
//   NotDetaySayfa({required this.not});
//
//   @override
//   State<NotDetaySayfa> createState() => _NotDetaySayfaState();
// }
//
// class _NotDetaySayfaState extends State<NotDetaySayfa> {
//
//   var tfDersAdi = TextEditingController();
//   var tfnot1 = TextEditingController();
//   var tfnot2 = TextEditingController();
//
//   Future<void> sil(int not_id) async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/notlar/delete_not.php");
//     var veri = {"not_id":not_id.toString()};
//     var cevap = await http.post(url, body: veri);
//     print("silindi | cevap : ${cevap.body}");
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//   }
//
//   Future<void> guncelle (int not_id, String ders_adi, int not1, int not2) async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/notlar/update_not.php");
//     var veri = {"not_id":not_id.toString(),"ders_adi":ders_adi, "not1":not1.toString(), "not2":not2.toString()};
//     var cevap = await http.post(url, body: veri);
//     print("guncellendi | cevap : ${cevap.body}");
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     var not = widget.not;
//     tfDersAdi.text = not.ders_adi;
//     tfnot1.text = not.not1.toString();
//     tfnot2.text = not.not2.toString();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.white,),
//           onPressed: (){
//             Navigator.pop(context);
//           },
//         ),
//         centerTitle: true,
//
//         title: Text("Not Detay", style: TextStyle(color: Colors.white),),
//         actions: [
//           ElevatedButton(
//               onPressed: (){
//                 sil(int.parse(widget.not.not_id));
//               },
//               child: Text("Sil", style: TextStyle(color: Colors.red),)
//           ),
//           ElevatedButton(
//               onPressed: (){
//                 guncelle(int.parse(widget.not.not_id), tfDersAdi.text, int.parse(tfnot1.text), int.parse(tfnot2.text));
//               },
//               child: Text("Guncelle", style: TextStyle(color: Colors.red),)
//           )
//         ],
//       ),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.only(left: 50.0, right: 50.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               TextField(
//                 controller: tfDersAdi,
//                 decoration: InputDecoration(hintText: "Ders Adi"),
//               ),
//               TextField(
//                 controller: tfnot1,
//                 decoration: InputDecoration(hintText: "1. Not"),
//               ),
//               TextField(
//                 controller: tfnot2,
//                 decoration: InputDecoration(hintText: "2. Not"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Notlar{
//   String not_id;
//   String ders_adi;
//   String not1;
//   String not2;
//   Notlar(this.not_id, this.ders_adi, this.not1, this.not2);
//   factory Notlar.fromJson(Map<String, dynamic> json){
//     return Notlar(json["not_id"] as String, json["ders_adi"] as String, json["not1"] as String, json["not2"] as String);
//   }
// }
//
// class NotlarCevap{
//   int success;
//   List<Notlar> notlar;
//
//   NotlarCevap(this.success, this.notlar);
//   factory NotlarCevap.fromJson(Map<String, dynamic> json){
//     var jsonArray = json["notlar"] as List;
//     List<Notlar> notlar = jsonArray.map((jsonArrayNesnesi) => Notlar.fromJson(jsonArrayNesnesi)).toList();
//     return NotlarCevap(json["success"] as int , notlar);
//   }
// }
//endregion

// Notlar Uygulamasi - Firebase
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: Anasayfa(),
//     );
//   }
// }
//
// class Anasayfa extends StatefulWidget {
//   @override
//   State<Anasayfa> createState() => _AnasayfaState();
// }
//
// class _AnasayfaState extends State<Anasayfa> {
//
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   notEkle();
//   // }
//   //
//
//   var refNotlar = FirebaseDatabase.instance.ref().child("notlar");
//
//   // Future<void> notEkle() async{
//   //   var bilgi = HashMap<String, dynamic>();
//   //   bilgi["ders_adi"] = "Tarih";
//   //   bilgi["not1"] = "40";
//   //   bilgi["not2"] = "90";
//   //   bilgi["not_id"] = "";
//   //   refNotlar.push().set(bilgi);
//   // }
//
//   Future<bool> uygulamayiKapat() async{
//     await exit(0);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back,color: Colors.white,),
//           onPressed: (){
//             uygulamayiKapat();
//           },
//         ),
//         centerTitle: true,
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Notlar Uygulamasi", style: TextStyle(color: Colors.white),),
//             StreamBuilder<DatabaseEvent>(
//                 stream: refNotlar.onValue,
//                 builder: (context, event){
//                   if(event.hasData){
//                     var notlar = <Notlar>[];
//
//                     // var gelenDegerler = event.data!.snapshot.value as dynamic;
//                     // if(gelenDegerler != null){
//                     //   gelenDegerler.forEach((key, nesne){
//                     //     var gelenNot = Notlar.fromJson(key, nesne);
//                     //     notlar.add(gelenNot);
//                     //   });
//                     // }
//
//                     var gelenDegerler = event.data!.snapshot.value as dynamic;
//                     if(gelenDegerler != null){
//                       gelenDegerler.forEach((key, nesne) {
//                         var gelenNot = Notlar.fromJson(nesne);
//                         notlar.add(gelenNot);
//                         print("*********** \nKisi Key: $key \nDers Adi: ${gelenNot.ders_adi} \nNot 1: ${gelenNot.not1} \nNot 2: ${gelenNot.not2}");
//                       });
//                     }
//
//
//                     double ortalama = 0.0;
//
//                     if(!notlar!.isEmpty){
//                       double toplam = 0.0;
//                       for(var n in notlar){
//                         toplam += (n.not1 + n.not2) / 2;
//                       }
//                       ortalama = toplam / notlar.length;
//                     }
//
//                     return Text("Ortalama : ${ortalama.toInt()}", style: TextStyle(color: Colors.white));
//                   }else{
//                     return Text("Ortalama : 0", style: TextStyle(color: Colors.white));
//                   }
//                 }
//             ),
//           ],
//         ),
//       ),
//       body: WillPopScope(
//         onWillPop: uygulamayiKapat,
//         child: StreamBuilder<DatabaseEvent>(
//           stream: refNotlar.onValue,
//           builder: (context, event){
//             if(event.hasData){
//               var notlar = <Notlar>[];
//               var gelenDegerler = event.data!.snapshot.value as dynamic;
//               if(gelenDegerler != null){
//                 gelenDegerler.forEach((key, nesne){
//                   var gelenNot = Notlar.fromJson(nesne);
//                   notlar.add(gelenNot);
//                 });
//               }
//               return ListView.builder(
//                 itemCount: notlar!.length,
//                 itemBuilder: (contex,indeks){
//                   var not = notlar[indeks];
//                   return GestureDetector(
//                     onTap: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => NotDetaySayfa(not: not,)));
//                     },
//                     child: Card(
//                       child: SizedBox(
//                         height: 50,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text(not.ders_adi, style: TextStyle(fontWeight: FontWeight.bold),),
//                             Text(not.not1.toString()),
//                             Text(not.not2.toString()),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }else{
//               return Center();
//             }
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           Navigator.push(context, MaterialPageRoute(builder: (context) => NotKayit()));
//         },
//         tooltip: 'Not Ekle',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
//
// class NotKayit extends StatefulWidget {
//   const NotKayit({super.key});
//
//   @override
//   State<NotKayit> createState() => _NotKayitState();
// }
//
// class _NotKayitState extends State<NotKayit> {
//
//   var tfDersAdi = TextEditingController();
//   var tfnot1 = TextEditingController();
//   var tfnot2 = TextEditingController();
//   var refNotlar = FirebaseDatabase.instance.ref().child("notlar");
//   Future<void> kayit(String ders_adi, int not1, int not2)  async{
//     var bilgi = HashMap<String, dynamic>();
//     bilgi["not_id"] = "";
//     bilgi["ders_adi"] = ders_adi;
//     bilgi["not1"] = not1.toString();
//     bilgi["not2"] = not2.toString();
//     refNotlar.push().set(bilgi);
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.white,),
//           onPressed: (){
//             Navigator.pop(context);
//           },
//         ),
//         centerTitle: true,
//         title: Text("Not Kayit", style: TextStyle(color: Colors.white),),
//       ),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.only(left: 50.0, right: 50.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               TextField(
//                 controller: tfDersAdi,
//                 decoration: InputDecoration(hintText: "Ders Adi"),
//               ),
//               TextField(
//                 controller: tfnot1,
//                 decoration: InputDecoration(hintText: "1. Not"),
//               ),
//               TextField(
//                 controller: tfnot2,
//                 decoration: InputDecoration(hintText: "2. Not"),
//               )
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: (){
//           kayit(tfDersAdi.text, int.parse(tfnot1.text), int.parse(tfnot2.text));
//         },
//         tooltip: 'Not Ekle',
//         icon: Icon(Icons.save),
//         label: Text("Kaydet"),
//
//       ),
//     );
//   }
// }
//
// class NotDetaySayfa extends StatefulWidget {
//   Notlar not;
//   NotDetaySayfa({required this.not});
//
//   @override
//   State<NotDetaySayfa> createState() => _NotDetaySayfaState();
// }
//
// class _NotDetaySayfaState extends State<NotDetaySayfa> {
//
//   var tfDersAdi = TextEditingController();
//   var tfnot1 = TextEditingController();
//   var tfnot2 = TextEditingController();
//   var refNotlar = FirebaseDatabase.instance.ref().child("notlar");
//
//   Future<void> sil(String not_id) async{
//     refNotlar.child(not_id).remove();
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//   }
//
//   Future<void> guncelle (String not_id, String ders_adi, int not1, int not2) async{
//     var bilgi = HashMap<String, dynamic>();
//     bilgi["ders_adi"] = ders_adi;
//     bilgi["not1"] = not1.toString();
//     bilgi["not2"] = not2.toString();
//     refNotlar.child(not_id).update(bilgi);
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     var not = widget.not;
//     tfDersAdi.text = not.ders_adi;
//     tfnot1.text = not.not1.toString();
//     tfnot2.text = not.not2.toString();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.white,),
//           onPressed: (){
//             Navigator.pop(context);
//           },
//         ),
//         centerTitle: true,
//
//         title: Text("Not Detay", style: TextStyle(color: Colors.white),),
//         actions: [
//           ElevatedButton(
//               onPressed: (){
//                 sil(widget.not.not_id);
//               },
//               child: Text("Sil", style: TextStyle(color: Colors.red),)
//           ),
//           ElevatedButton(
//               onPressed: (){
//                 guncelle(widget.not.not_id, tfDersAdi.text, int.parse(tfnot1.text), int.parse(tfnot2.text));
//               },
//               child: Text("Guncelle", style: TextStyle(color: Colors.red),)
//           )
//         ],
//       ),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.only(left: 50.0, right: 50.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               TextField(
//                 controller: tfDersAdi,
//                 decoration: InputDecoration(hintText: "Ders Adi"),
//               ),
//               TextField(
//                 controller: tfnot1,
//                 decoration: InputDecoration(hintText: "1. Not"),
//               ),
//               TextField(
//                 controller: tfnot2,
//                 decoration: InputDecoration(hintText: "2. Not"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Notlar{
//   String not_id;
//   String ders_adi;
//   int not1;
//   int not2;
//
//   Notlar(this.not_id, this.ders_adi, this.not1, this.not2);
//
//   factory Notlar.fromJson(Map<dynamic, dynamic> json){
//     return Notlar(json["not_id"] as String ,json["ders_adi"] as String, json["not1"] as int, json["not2"] as int);
//   }
// }
//
// class Kisiler{
//   String kisi_ad;
//   int kisi_yas;
//   Kisiler(this.kisi_ad, this.kisi_yas);
//   factory Kisiler.fromJson(Map<String, dynamic> json){
//     return Kisiler(json["kisi_ad"] as String, json["kisi_yas"] as int);
//   }
// }
//endregion

// Filmler Uygulamasi - Http
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: Anasayfa(),
//     );
//   }
// }
//
// class Anasayfa extends StatefulWidget {
//   @override
//   State<Anasayfa> createState() => _AnasayfaState();
// }
//
// class _AnasayfaState extends State<Anasayfa> {
//
//   List<Kategoriler> parseKategorilerCevap(String cevap){
//     return KategorilerCevap.fromJson(json.decode(cevap)).kategoriler;
//   }
//
//   Future<List<Kategoriler>> tumKategoriler() async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/filmler/tum_kategoriler.php");
//     var cevap = await http.get(url);
//     return parseKategorilerCevap(cevap.body);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           centerTitle: true,
//           title: Text("Kategoriler", style: TextStyle(color: Colors.white),),
//         ),
//         body: FutureBuilder<List<Kategoriler>>(
//           future: tumKategoriler(),
//           builder: (context, snapshot){
//             if(snapshot.hasData){
//               var kategoriler = snapshot.data;
//               return ListView.builder(
//                 itemCount: kategoriler!.length,
//                 itemBuilder: (context, indeks){
//                   var kategori = kategoriler[indeks];
//                   return GestureDetector(
//                     onTap: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => FilmlerSayfa(kategori: kategori,)));
//                     },
//                     child: Card(
//                       child: SizedBox(
//                         height: 50,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(kategori.kategori_ad)
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }else{
//               return Center(
//                 child: Text("No data"),
//               );
//             }
//           },
//         )
//     );
//   }
// }
//
// class FilmlerSayfa extends StatefulWidget {
//   Kategoriler kategori;
//   FilmlerSayfa({required this.kategori});
//
//   @override
//   State<FilmlerSayfa> createState() => _FilmlerSayfaState();
// }
//
// class _FilmlerSayfaState extends State<FilmlerSayfa> {
//
//   List<Filmler> parseFilmlerCevap(String cevap){
//     return FilmlerCevap.fromJson(json.decode(cevap)).filmler;
//   }
//
//   Future<List<Filmler>> tumFilmler(int kategori_id) async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/filmler/filmler_by_kategori_id.php");
//     var veri = {"kategori_id":kategori_id.toString()};
//     var cevap = await http.post(url, body: veri);
//     return parseFilmlerCevap(cevap.body);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           centerTitle: true,
//           title: Text("Filmler: ${widget.kategori.kategori_ad}", style: TextStyle(color: Colors.white),),
//         ),
//         body: FutureBuilder(
//           future: tumFilmler(int.parse(widget.kategori.kategori_id)),
//           builder: (context, snapshot){
//             if(snapshot.hasData){
//               var filmler = snapshot.data;
//               return GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: 2 / 3.5
//                 ),
//                 itemCount: filmler!.length,
//                 itemBuilder: (context, indeks){
//                   var film = filmler[indeks];
//                   return GestureDetector(
//                     onTap: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(film: film,)));
//                     },
//                     child: Card(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Image.network("http://kasimadalan.pe.hu/filmler/resimler/${film.film_resim}"),
//                           ),
//                           Text(film.film_ad, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }else{
//               return Center();
//             }
//           },
//         )
//     );
//   }
// }
//
// class DetaySayfa extends StatefulWidget {
//   Filmler film;
//   DetaySayfa({required this.film});
//
//   @override
//   State<DetaySayfa> createState() => _DetaySayfaState();
// }
//
// class _DetaySayfaState extends State<DetaySayfa> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           centerTitle: true,
//           title: Text(widget.film.film_ad, style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Image.network("http://kasimadalan.pe.hu/filmler/resimler/${widget.film.film_resim}"),
//               ),
//               Text(widget.film.film_yil.toString(), style: TextStyle(fontSize: 30.0),),
//               Text (widget.film.film_ad, style: TextStyle(fontSize: 30.0
//               ),)
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class Kategoriler{
//   String kategori_id;
//   String kategori_ad;
//   Kategoriler(this.kategori_id, this.kategori_ad);
//   factory Kategoriler.fromJson(Map<String, dynamic> json){
//     return Kategoriler(json["kategori_id"] as String, json["kategori_ad"] as String);
//   }
// }
//
// class KategorilerCevap{
//   int success;
//   List<Kategoriler> kategoriler;
//
//   KategorilerCevap(this.success, this.kategoriler);
//   factory KategorilerCevap.fromJson(Map<String, dynamic> json) {
//     var jsonArray = json["kategoriler"] as List;
//     List<Kategoriler> kategoriler = jsonArray.map((jsonArrayNesnesi) => Kategoriler.fromJson(jsonArrayNesnesi)).toList();
//     return KategorilerCevap(json["success"] as int, kategoriler);
//   }
// }
//
// class Yonetmenler{
//   String yonetmen_id;
//   String yonetmen_ad;
//   Yonetmenler(this.yonetmen_id, this.yonetmen_ad);
//   factory Yonetmenler.fromJson(Map<String, dynamic> json){
//     return Yonetmenler(json["yonetmen_id"] as String, json["yonetmen_ad"] as String);
//   }
// }
//
// class Filmler{
//   String film_id;
//   String film_ad;
//   String film_yil;
//   String film_resim;
//   Kategoriler kategori;
//   Yonetmenler yonetmen;
//   Filmler(this.film_id, this.film_ad, this.film_yil, this.film_resim,
//       this.kategori, this.yonetmen);
//
//   factory Filmler.fromJson(Map<String, dynamic> json){
//     return Filmler(
//         json["film_id"] as String,
//         json["film_ad"] as String,
//         json["film_yil"] as String,
//         json["film_resim"] as String,
//         Kategoriler.fromJson(json["kategori"]),
//         Yonetmenler.fromJson(json["yonetmen"]));
//   }
// }
//
// class FilmlerCevap{
//   int success;
//   List<Filmler> filmler;
//
//   FilmlerCevap(this.success, this.filmler);
//   factory FilmlerCevap.fromJson(Map<String, dynamic> json){
//     var jsonArray = json["filmler"] as List;
//     List<Filmler> filmler = jsonArray.map((jsonArrayNesnesi) => Filmler.fromJson(jsonArrayNesnesi)).toList();
//     return FilmlerCevap(json["success"] as int, filmler);
//   }
// }

//endregion

// Filmler Uygulamasi - Firebase
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: Anasayfa(),
//     );
//   }
// }
//
// class Anasayfa extends StatefulWidget {
//   @override
//   State<Anasayfa> createState() => _AnasayfaState();
// }
//
// class _AnasayfaState extends State<Anasayfa> {
//
//   var refKategoriler = FirebaseDatabase.instance.ref().child("kategoriler");
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           centerTitle: true,
//           title: Text("Kategoriler", style: TextStyle(color: Colors.white),),
//         ),
//         body: StreamBuilder<DatabaseEvent>(
//           stream: refKategoriler.onValue,
//           builder: (context, event){
//             if(event.hasData){
//               var kategoriler = <Kategoriler>[];
//               var gelenDegerler = event.data!.snapshot.value as dynamic;
//               if(gelenDegerler != null){
//                 gelenDegerler.forEach((key, nesne){
//                   var gelenKategori = Kategoriler.fromJson(key, nesne);
//                   kategoriler.add(gelenKategori);
//                 });
//               }
//               return ListView.builder(
//                 itemCount: kategoriler!.length,
//                 itemBuilder: (context, indeks){
//                   var kategori = kategoriler[indeks];
//                   return GestureDetector(
//                     onTap: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => FilmlerSayfa(kategori: kategori,)));
//                     },
//                     child: Card(
//                       child: SizedBox(
//                         height: 50,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(kategori.kategori_ad)
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }else{
//               return Center();
//             }
//           },
//         )
//     );
//   }
// }
//
// class FilmlerSayfa extends StatefulWidget {
//   Kategoriler kategori;
//   FilmlerSayfa({required this.kategori});
//
//   @override
//   State<FilmlerSayfa> createState() => _FilmlerSayfaState();
// }
//
// class _FilmlerSayfaState extends State<FilmlerSayfa> {
//
//   var refFilmler = FirebaseDatabase.instance.ref().child("filmler");
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           centerTitle: true,
//           title: Text("Filmler: ${widget.kategori.kategori_ad}", style: TextStyle(color: Colors.white),),
//         ),
//         body: StreamBuilder<DatabaseEvent>(
//           stream: refFilmler.orderByChild("kategori_ad").equalTo(widget.kategori.kategori_ad).onValue,
//           builder: (context, event){
//             if(event.hasData){
//               var filmler = <Filmler>[];
//               var gelenDegerler = event.data!.snapshot.value as dynamic;
//               if(gelenDegerler != null){
//                 gelenDegerler.forEach((key, nesne){
//                   var gelenFilm = Filmler.fromJson(key, nesne);
//                   filmler.add(gelenFilm);
//                 });
//               }
//
//               return GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: 2 / 3.5
//                 ),
//                 itemCount: filmler!.length,
//                 itemBuilder: (context, indeks){
//                   var film = filmler[indeks];
//                   return GestureDetector(
//                     onTap: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(film: film,)));
//                     },
//                     child: Card(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Image.network("http://kasimadalan.pe.hu/filmler/resimler/${film.film_resim}"),
//                           ),
//                           Text(film.film_ad, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }else{
//               return Center();
//             }
//           },
//         )
//     );
//   }
// }
//
// class DetaySayfa extends StatefulWidget {
//   Filmler film;
//   DetaySayfa({required this.film});
//
//   @override
//   State<DetaySayfa> createState() => _DetaySayfaState();
// }
//
// class _DetaySayfaState extends State<DetaySayfa> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           centerTitle: true,
//           title: Text(widget.film.film_ad, style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Image.network("http://kasimadalan.pe.hu/filmler/resimler/${widget.film.film_resim}"),
//               ),
//               Text(widget.film.film_yil.toString(), style: TextStyle(fontSize: 30.0),),
//               Text (widget.film.film_ad, style: TextStyle(fontSize: 30.0
//               ),)
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class Kategoriler{
//   String kategori_id;
//   String kategori_ad;
//   Kategoriler(this.kategori_id, this.kategori_ad);
//   factory Kategoriler.fromJson(String key,Map<dynamic, dynamic> json){
//     return Kategoriler(key, json["kategori_ad"] as String);
//   }
// }
//
// class Yonetmenler{
//   String yonetmen_id;
//   String yonetmen_ad;
//   Yonetmenler(this.yonetmen_id, this.yonetmen_ad);
// }
//
// class Filmler{
//   String film_id;
//   String film_ad;
//   int film_yil;
//   String film_resim;
//   String kategori_ad;
//   String yonetmen_ad;
//   Filmler(this.film_id, this.film_ad, this.film_yil, this.film_resim,
//       this.kategori_ad, this.yonetmen_ad);
//
//   factory Filmler.fromJson(String key,Map<dynamic, dynamic> json){
//     return Filmler(json["film_id"] as String, json["film_ad"] as String, json["film_yil"] as int, json["film_resim"] as String, json["kategori_ad"] as String, json["yonetmen_ad"] as String);
//   }
// }
//endregion

// KIsiler Uygulamasi - Http
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: Anasayfa(),
//     );
//   }
// }
//
// class Anasayfa extends StatefulWidget {
//   @override
//   State<Anasayfa> createState() => _AnasayfaState();
// }
//
// class _AnasayfaState extends State<Anasayfa> {
//
//   bool aramaYapiliyorMu = false;
//   String aramaKelimesi = "";
//
//   List<Kisiler> parseKisilerCevap(String cevap){
//     return KisilerCevap.fromJson(json.decode(cevap)).kisiler;
//   }
//
//   Future<List<Kisiler>> tumKisiler() async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/kisiler/tum_kisiler.php");
//     var cevap = await http.get(url);
//     return parseKisilerCevap(cevap.body);
//   }
//
//   Future<List<Kisiler>> aramaYap(String aramaKelimesi) async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php");
//     var veri = {"kisi_ad":aramaKelimesi};
//     var cevap = await http.post(url, body: veri);
//     return parseKisilerCevap(cevap.body);
//   }
//
//   Future<void> Sil(int kisi_id) async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/kisiler/delete_kisiler.php");
//     var veri = {"kisi_id":kisi_id.toString()};
//     var cevap = await http.post(url, body: veri);
//     print("cevap : ${cevap.body}");
//     setState(() {});
//   }
//
//   Future<bool> Exit() async{
//     await exit(0);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         centerTitle: true,
//         leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white, onPressed: () {Exit();}),
//         title: aramaYapiliyorMu ?
//         TextField(
//           style: TextStyle(color: Colors.white),
//           decoration: InputDecoration(
//               hintText: "Arama icin bir sey yazin",
//               hintStyle: TextStyle(color: Colors.white),
//               labelStyle: TextStyle(color: Colors.white)
//           ),
//           onChanged: (aramaSonucu){
//             print(aramaSonucu);
//             setState(() {
//               aramaKelimesi = aramaSonucu;
//             });
//           },
//         )
//             :Text("Kisiler Uygulamasi", style: TextStyle(color: Colors.white),),
//         actions: [ aramaYapiliyorMu ?
//         IconButton(
//             onPressed: (){
//               setState(() {
//                 aramaYapiliyorMu = false;
//                 aramaKelimesi = "";
//               });
//             },
//             icon: Icon(Icons.cancel)
//         )
//             : IconButton(
//             onPressed: (){
//               setState(() {
//                 aramaYapiliyorMu = true;
//               });
//             },
//             icon: Icon(Icons.search)
//         ),
//         ],
//       ),
//       body: WillPopScope(
//         onWillPop: Exit,
//         child: FutureBuilder<List<Kisiler>>(
//           future: aramaYapiliyorMu ? aramaYap(aramaKelimesi) : tumKisiler(),
//           builder: (context, snapshot){
//             if(snapshot.hasData){
//               var kisiler = snapshot.data;
//               return ListView.builder(
//                 itemCount: kisiler!.length,
//                 itemBuilder: (context, i){
//                   var kisi = kisiler[i];
//                   return GestureDetector(
//                     onTap: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(kisi: kisi,)));
//                     },
//                     child: Card(
//                       child: SizedBox(
//                         height: 50,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text(kisi.kisi_ad, style: TextStyle(fontWeight: FontWeight.bold),),
//                             Text(kisi.kisi_tel,),
//                             IconButton(
//                               icon: Icon(Icons.delete),
//                               onPressed: (){
//                                 Sil(int.parse(kisi.kisi_id));
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }else{
//               return Center();
//             }
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(context, MaterialPageRoute(builder: (context) => KayitSayfasi()));
//         },
//         tooltip: 'Kisi ekleme',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
//
// class DetaySayfa extends StatefulWidget {
//   Kisiler kisi;
//   DetaySayfa({required this.kisi});
//
//   @override
//   State<DetaySayfa> createState() => _DetaySayfaState();
// }
//
// class _DetaySayfaState extends State<DetaySayfa> {
//
//   var tfKisiAdi = TextEditingController();
//   var tfKisiTel = TextEditingController();
//
//   Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/kisiler/update_kisiler.php");
//     var veri = {"kisi_id":kisi_id.toString(),"kisi_ad":kisi_ad,"kisi_tel":kisi_tel};
//     var cevap = await http.post(url, body: veri);
//     print("cevap : ${cevap.body}");
//     setState(() {});
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     var kisi = widget.kisi;
//     tfKisiAdi.text = kisi.kisi_ad;
//     tfKisiTel.text = kisi.kisi_tel;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         centerTitle: true,
//         leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white, onPressed: () {Navigator.pop(context);}),
//         title: Text("Kisi Detay", style: TextStyle(color: Colors.white),),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 50, right: 50),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               TextField(
//                 controller: tfKisiAdi,
//                 decoration: InputDecoration(
//                     hintText: "Kisi Ad"
//                 ),
//               ),
//               TextField(
//                 controller: tfKisiTel,
//                 decoration: InputDecoration(
//                     hintText: "Kisi tel"
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {
//           print("Kisi eklendi");
//           guncelle(int.parse(widget.kisi.kisi_id), tfKisiAdi.text, tfKisiTel.text);
//         },
//         tooltip: 'Guncelle',
//         icon: Icon(Icons.update),
//         label: Text("Guncelle"),
//       ),
//     );
//   }
// }
//
// class KayitSayfasi extends StatefulWidget {
//   const KayitSayfasi({super.key});
//
//   @override
//   State<KayitSayfasi> createState() => _KayitSayfasiState();
// }
//
// class _KayitSayfasiState extends State<KayitSayfasi> {
//
//   var tfKisiAdi = TextEditingController();
//   var tfKisiTel = TextEditingController();
//
//   Future<void> kayit(String kisi_ad, String kisi_tel) async{
//     var url = Uri.parse("http://kasimadalan.pe.hu/kisiler/insert_kisiler.php");
//     var veri = {"kisi_ad":kisi_ad, "kisi_tel":kisi_tel};
//     var cevap = await http.post(url, body: veri);
//     print("cevap : ${cevap.body}");
//     setState(() {});
//     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         centerTitle: true,
//         leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white, onPressed: () {Navigator.pop(context);}),
//         title: Text("Kisi Kayit", style: TextStyle(color: Colors.white),),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 50, right: 50),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               TextField(
//                 controller: tfKisiAdi,
//                 decoration: InputDecoration(
//                     hintText: "Kisi Ad"
//                 ),
//               ),
//               TextField(
//                 controller: tfKisiTel,
//                 decoration: InputDecoration(
//                     hintText: "Kisi tel"
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: (){
//           print("Kisi kaydedildi");
//           kayit(tfKisiAdi.text, tfKisiTel.text);
//         },
//         label: Text("Kaydet"),
//         icon: Icon(Icons.save),
//       ),
//     );
//   }
// }
//
// class Kisiler{
//   String kisi_id;
//   String kisi_ad;
//   String kisi_tel;
//   Kisiler(this.kisi_id, this.kisi_ad, this.kisi_tel);
//   factory Kisiler.fromJson(Map<String, dynamic> json){
//     return Kisiler(json["kisi_id"] as String, json["kisi_ad"] as String, json["kisi_tel"] as String);
//   }
// }
//
// class KisilerCevap{
//   int success;
//   List<Kisiler> kisiler;
//   KisilerCevap(this.success, this.kisiler);
//   factory KisilerCevap.fromJson(Map<String, dynamic> json){
//     var jsonArray = json["kisiler"] as List;
//     List<Kisiler> kisiler = jsonArray.map((jsonArrayNesnesi) => Kisiler.fromJson(jsonArrayNesnesi)).toList();
//     return KisilerCevap(json["success"] as int, kisiler);
//
//   }
// }
//endregion

// Kisiler Uygulamasi - Firebase
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: Anasayfa(),
//     );
//   }
// }
//
// class Anasayfa extends StatefulWidget {
//   @override
//   State<Anasayfa> createState() => _AnasayfaState();
// }
//
// class _AnasayfaState extends State<Anasayfa> {
//
//   bool aramaYapiliyorMu = false;
//   String aramaKelimesi = "";
//
//   var refKisiler = FirebaseDatabase.instance.ref().child("kisiler");
//
//   Future<void> Sil(int kisi_id) async{
//     refKisiler.child(kisi_id.toString()).remove();
//   }
//
//   Future<bool> Exit() async{
//     await exit(0);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         centerTitle: true,
//         leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white, onPressed: () {Exit();}),
//         title: aramaYapiliyorMu ?
//         TextField(
//           style: TextStyle(color: Colors.white),
//           decoration: InputDecoration(
//               hintText: "Arama icin bir sey yazin",
//               hintStyle: TextStyle(color: Colors.white),
//               labelStyle: TextStyle(color: Colors.white)
//           ),
//           onChanged: (aramaSonucu){
//             print(aramaSonucu);
//             setState(() {
//               aramaKelimesi = aramaSonucu;
//             });
//           },
//         )
//             :Text("Kisiler Uygulamasi", style: TextStyle(color: Colors.white),),
//         actions: [ aramaYapiliyorMu ?
//         IconButton(
//             onPressed: (){
//               setState(() {
//                 aramaYapiliyorMu = false;
//                 aramaKelimesi = "";
//               });
//             },
//             icon: Icon(Icons.cancel)
//         )
//             : IconButton(
//             onPressed: (){
//               setState(() {
//                 aramaYapiliyorMu = true;
//               });
//             },
//             icon: Icon(Icons.search)
//         ),
//         ],
//       ),
//       body: WillPopScope(
//         onWillPop: Exit,
//         child: StreamBuilder<DatabaseEvent>(
//           stream: refKisiler.onValue,
//           builder: (context, event){
//             if(event.hasData){
//               var kisiler = <Kisiler>[];
//               var gelenDegerler = event.data!.snapshot.value as dynamic;
//               if(gelenDegerler != null){
//                 gelenDegerler.forEach((key, nesne){
//                   var gelenKisi = Kisiler.fromJson(key, nesne);
//                   if(aramaYapiliyorMu){
//                     if(gelenKisi.kisi_ad.contains(aramaKelimesi)){
//                       kisiler.add(gelenKisi);
//                     }
//                   }else{
//                     kisiler.add(gelenKisi);
//                   }
//                 });
//               }
//               return ListView.builder(
//                 itemCount: kisiler!.length,
//                 itemBuilder: (context, i){
//                   var kisi = kisiler[i];
//                   return GestureDetector(
//                     onTap: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(kisi: kisi,)));
//                     },
//                     child: Card(
//                       child: SizedBox(
//                         height: 50,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text(kisi.kisi_ad, style: TextStyle(fontWeight: FontWeight.bold),),
//                             Text(kisi.kisi_tel,),
//                             IconButton(
//                               icon: Icon(Icons.delete),
//                               onPressed: (){
//                                 Sil(int.parse(kisi.kisi_id));
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }else{
//               return Center();
//             }
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(context, MaterialPageRoute(builder: (context) => KayitSayfasi()));
//         },
//         tooltip: 'Kisi ekleme',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
//
// class DetaySayfa extends StatefulWidget {
//   Kisiler kisi;
//   DetaySayfa({required this.kisi});
//
//   @override
//   State<DetaySayfa> createState() => _DetaySayfaState();
// }
//
// class _DetaySayfaState extends State<DetaySayfa> {
//
//   var tfKisiAdi = TextEditingController();
//   var tfKisiTel = TextEditingController();
//   var refKisiler = FirebaseDatabase.instance.ref().child("kisiler");
//
//   Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async{
//     var bilgi = HashMap<String, dynamic>();
//     bilgi["kisi_ad"] = kisi_ad;
//     bilgi["kisi_tel"] = kisi_tel;
//     refKisiler.child(kisi_id.toString()).update(bilgi);
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     var kisi = widget.kisi;
//     tfKisiAdi.text = kisi.kisi_ad;
//     tfKisiTel.text = kisi.kisi_tel;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         centerTitle: true,
//         leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white, onPressed: () {Navigator.pop(context);}),
//         title: Text("Kisi Detay", style: TextStyle(color: Colors.white),),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 50, right: 50),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               TextField(
//                 controller: tfKisiAdi,
//                 decoration: InputDecoration(
//                     hintText: "Kisi Ad"
//                 ),
//               ),
//               TextField(
//                 controller: tfKisiTel,
//                 decoration: InputDecoration(
//                     hintText: "Kisi tel"
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {
//           print("Kisi eklendi");
//           guncelle(int.parse(widget.kisi.kisi_id), tfKisiAdi.text, tfKisiTel.text);
//         },
//         tooltip: 'Guncelle',
//         icon: Icon(Icons.update),
//         label: Text("Guncelle"),
//       ),
//     );
//   }
// }
//
// class KayitSayfasi extends StatefulWidget {
//   const KayitSayfasi({super.key});
//
//   @override
//   State<KayitSayfasi> createState() => _KayitSayfasiState();
// }
//
// class _KayitSayfasiState extends State<KayitSayfasi> {
//
//   var tfKisiAdi = TextEditingController();
//   var tfKisiTel = TextEditingController();
//   var refKisiler = FirebaseDatabase.instance.ref().child("kisiler");
//
//   Future<void> kayit(String kisi_ad, String kisi_tel) async{
//     var bilgi = HashMap<String, dynamic>();
//     bilgi["kisi_id"] = "";
//     bilgi["kisi_ad"] = kisi_ad;
//     bilgi["kisi_tel"] = kisi_tel;
//     refKisiler.push().set(bilgi);
//     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         centerTitle: true,
//         leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white, onPressed: () {Navigator.pop(context);}),
//         title: Text("Kisi Kayit", style: TextStyle(color: Colors.white),),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 50, right: 50),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               TextField(
//                 controller: tfKisiAdi,
//                 decoration: InputDecoration(
//                     hintText: "Kisi Ad"
//                 ),
//               ),
//               TextField(
//                 controller: tfKisiTel,
//                 decoration: InputDecoration(
//                     hintText: "Kisi tel"
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: (){
//           print("Kisi kaydedildi");
//           kayit(tfKisiAdi.text, tfKisiTel.text);
//         },
//         label: Text("Kaydet"),
//         icon: Icon(Icons.save),
//       ),
//     );
//   }
// }
//
// class Kisiler{
//   String kisi_id;
//   String kisi_ad;
//   String kisi_tel;
//   Kisiler(this.kisi_id, this.kisi_ad, this.kisi_tel);
//   factory Kisiler.fromJson(String key, Map<String, dynamic> json){
//     return Kisiler(key, json["kisi_ad"] as String, json["kisi_tel"] as String);
//   }
// }
//endregion

// First
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.lightBlueAccent,
//         centerTitle: true,
//         title: Text("Anasayfa", style: TextStyle(color: Colors.white),),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [],
//         ),
//       )
//     );
//   }
// }
//endregion