import 'dart:collection';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as Path;
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(MyApp());
}

// Shared Preferences
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
//   Future<void> veriKaydi() async{
//     var sp = await SharedPreferences.getInstance();
//     sp.setString("ad", "ahmet");
//     sp.setInt("yas", 18);
//     sp.setDouble("boy", 1.78);
//     sp.setBool("bekarMi", true);
//
//     var arkadasListe = <String>[];
//     arkadasListe.add("Ece");
//     arkadasListe.add("Ali");
//     sp.setStringList("arkadasListe", arkadasListe);
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Text("Anasayfa"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                   onPressed: (){
//                     veriKaydi();
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaBir()));
//                   },
//                   child: Text("Gecis yap")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class SayfaBir extends StatefulWidget {
//   const SayfaBir({super.key});
//
//   @override
//   State<SayfaBir> createState() => _SayfaBirState();
// }
//
// class _SayfaBirState extends State<SayfaBir> {
//
//   Future<void> veriOku() async{
//     var sp = await SharedPreferences.getInstance();
//
//     String ad = sp.getString("ad") ?? "isim yok";
//     int yas = sp.getInt("yas") ?? 99;
//     double boy = sp.getDouble("boy") ?? 9.99;
//     bool bekarMi = sp.getBool("bekarMi") ?? false;
//
//     var arkadasListe = sp.getStringList("arkadasListe") ?? null;
//
//     print("Ad: $ad \t Yas: $yas \t Boy: $boy \t Bekar mi : $bekarMi \t");
//
//     for(var a in arkadasListe!){
//       print("Arkadas: $a");
//     }
//   }
//
//   Future<void> veriSil() async{
//     var sp = await SharedPreferences.getInstance();
//     sp.remove("ad");
//   }
//
//   Future<void> veriGuncelle() async{
//     var sp = await SharedPreferences.getInstance();
//     sp.setInt("yas", 100);
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     // veriSil();
//     veriGuncelle();
//     veriOku();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Text("Sayfa Bir"),
//         ),
//         body: Center()
//     );
//   }
// }

//endregion

// Sayac uygulamasi
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
//   int sayac = 0;
//   Future<void> sayacKontrol() async{
//     var sp = await SharedPreferences.getInstance();
//     sayac = sp.getInt("sayac") ?? 0;
//
//     setState(() {
//       sayac += 1;
//     });
//
//     sp.setInt("sayac", sayac);
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     sayacKontrol();
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Text("Baslik"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("$sayac"),
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Login Uygulamasi
//region
// class MyApp extends StatelessWidget {
//
//   Future<bool> oturumKontrol() async{
//     var sp = await SharedPreferences.getInstance();
//     String spUsername = sp.getString("username") ?? "username not found";
//     String spPassword = sp.getString("password") ?? "password not found";
//     if(spUsername == "admin" && spPassword == "123"){
//       return true;
//     }else{
//       return false;
//     }
//   }
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
//       home: FutureBuilder<bool>(
//         future: oturumKontrol(),
//         builder: (context, snapshot){
//           if(snapshot.hasData){
//             bool gecisIzni = snapshot.data!;
//             return gecisIzni ? Anasayfa() : LoginEkrani();
//           }else{
//             return Container();
//           }
//         },
//       ),
//     );
//   }
// }
//
// class LoginEkrani extends StatefulWidget {
//   @override
//   State<LoginEkrani> createState() => _LoginEkraniState();
// }
//
// class _LoginEkraniState extends State<LoginEkrani> {
//
//   var tfUsername = TextEditingController();
//   var tfPassword = TextEditingController();
//   var scaffoldKey = GlobalKey<ScaffoldState>();
//
//   Future<void> girisKontrol() async{
//     var un = tfUsername.text;
//     var p = tfPassword.text;
//
//     if(un == "admin" && p == "123"){
//       var sp = await SharedPreferences.getInstance();
//       sp.setString("username", un);
//       sp.setString("password", p);
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Anasayfa(),));
//     }else{
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Hatali giris")));
//     }
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         key: scaffoldKey,
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: Text("Login Screen"),
//         ),
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextField(
//                   controller: tfUsername,
//                   decoration: InputDecoration(
//                       hintText: "Username"
//                   ),
//                 ),
//                 TextField(
//                   controller: tfPassword,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                       hintText: "Password"
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 20),
//                   child: ElevatedButton(
//                     onPressed: (){
//                       girisKontrol();
//                     },
//                     child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.blue
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }
//
// class Anasayfa extends StatefulWidget {
//   const Anasayfa({super.key});
//
//   @override
//   State<Anasayfa> createState() => _AnasayfaState();
// }
//
// class _AnasayfaState extends State<Anasayfa> {
//
//   late String spUsername;
//   late String spPassword;
//
//   Future<void> oturumBilgisiOku() async{
//     var sp = await SharedPreferences.getInstance();
//
//     setState(() {
//       spUsername = sp.getString("username") ?? "username not found";
//       spPassword = sp.getString("password") ?? "password not found";
//     });
//   }
//
//   Future<void> cikisYap() async{
//     var sp = await SharedPreferences.getInstance();
//     sp.remove("username");
//     sp.remove("password");
//     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginEkrani()));
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     oturumBilgisiOku();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           centerTitle: true,
//           title: Text("Home Page"),
//           actions: [
//             IconButton(
//                 onPressed: (){
//                   cikisYap();
//                 },
//                 icon: Icon(Icons.exit_to_app)
//             )
//           ],
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Username: $spUsername", style: TextStyle(fontSize: 30.0),),
//               Text("Password: $spPassword", style: TextStyle(fontSize: 30.0),)
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Dosya Islemleri - path_provider
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
//   var tfgirdi = TextEditingController();
//
//   Future<void> veriYaz() async{
//     var ad = await getApplicationDocumentsDirectory();
//     var uygulamaDosyaYolu = await ad.path;
//     var dosya = File("$uygulamaDosyaYolu/dosyam.txt");
//     dosya.writeAsString(tfgirdi.text);
//     tfgirdi.text = "";
//   }
//
//   Future<void> veriOku() async{
//     try{
//       var ad = await getApplicationDocumentsDirectory();
//       var uygulamaDosyaYolu = await ad.path;
//       var dosya = File("$uygulamaDosyaYolu/dosyam.txt");
//       String okunanVeri = await dosya.readAsString();
//       tfgirdi.text = okunanVeri;
//     }catch(e){
//       e.toString();
//     }
//   }
//
//   Future<void> veriSil() async{
//     var ad = await getApplicationDocumentsDirectory();
//     var uygulamaDosyaYolu = await ad.path;
//     var dosya = File("$uygulamaDosyaYolu/dosyam.txt");
//
//     if(dosya.existsSync()){
//       dosya.delete();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           centerTitle: true,
//           title: Text("Dosya Islemleri", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   controller: tfgirdi,
//                   decoration: InputDecoration(
//                     hintText: "Veri giriniz"
//                   ),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton(
//                     onPressed: (){
//                       veriYaz();
//                     },
//                     child: Text("Yaz")
//                   ),
//                   ElevatedButton(
//                     onPressed: (){
//                       veriOku();
//                     },
//                     child: Text("Oku")
//                   ),
//                   ElevatedButton(
//                     onPressed: (){
//                       veriSil();
//                     },
//                     child: Text("Sil")
//                   )
//                 ],
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// SQLite islemleri
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
//   Future<void> kisileriGoster() async{
//     var liste = await Kisilerdao().tumKisiler();
//     for(Kisiler k in liste){
//       print("*******");
//       print("Kisi id: ${k.kisiId}");
//       print("Kisi ad: ${k.kisiAd}");
//       print("Kisi yas: ${k.kisiYas}");
//     }
//   }
//
//   Future<void> ekle() async{
//     await Kisilerdao().kisiEkle("Sedat", 34);
//   }
//
//   Future<void> sil() async{
//     await Kisilerdao().kisiSil(4);
//   }
//
//   Future<void> guncelle() async{
//     await Kisilerdao().kisiGuncelle(2, "Guncellenmis - Zeynep", 33);
//   }
//
//   Future<void> kayitKontrol() async{
//     int sonuc = await Kisilerdao().kayitKontrol("ahmet");
//     print("veritabaninda ahmet sayisi : $sonuc");
//   }
//
//   Future<void> kisiGetir() async{
//     var kisi = await Kisilerdao().kisiGetir(1);
//     print("*******Kisi Getir*******");
//     print("Kisi Id: ${kisi.kisiId}");
//     print("Kisi Ad: ${kisi.kisiAd}");
//     print("Kisi Yas: ${kisi.kisiYas}");
//   }
//
//   Future<void> aramaYap() async{
//     var liste = await Kisilerdao().kisiArama("z");
//     for(Kisiler k in liste){
//       print("**********Kisi Arama*************");
//       print("Kisi id: ${k.kisiId}");
//       print("Kisi ad: ${k.kisiAd}");
//       print("Kisi yas: ${k.kisiYas}");
//     }
//   }
//
//   Future<void> rasgele() async{
//     var liste = await Kisilerdao().rasgeleIkiKisiGetir();
//     print("**********Rasgele iki kisi getir**********");
//     for(Kisiler k in liste){
//       print("Kisi id: ${k.kisiId} \t ad :${k.kisiAd} \t yas: ${k.kisiYas}");
//     }
//   }
//   @override
//   void initState() {
//     super.initState();
//     // ekle();
//     // sil();
//     // guncelle();
//     // kayitKontrol();
//     // kisiGetir();
//     // kisileriGoster();
//     // aramaYap();
//     rasgele();
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
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
//   int kisiId;
//   String kisiAd;
//   int kisiYas;
//   Kisiler(this.kisiId, this.kisiAd, this.kisiYas);
// }
//
// class VeritabaniYardimicisi{
//   static final String veritabaniAdi = "rehber.db";
//
//   static Future<Database> veritabaniErisim() async{
//     String veritabaniYolu = join(await getDatabasesPath(), veritabaniAdi);
//     if(await databaseExists(veritabaniYolu)){
//       print("Veritabani zaten var kopyalamaya gerek yok");
//     }else{
//       ByteData data = await rootBundle.load("veritabani/$veritabaniAdi");
//       List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
//       await File(veritabaniYolu).writeAsBytes(bytes, flush: true);
//       print("Veritabani kopyalandi.");
//     }
//
//     return openDatabase(veritabaniYolu);
//   }
// }
//
// class Kisilerdao{
//   Future<List<Kisiler>> tumKisiler() async{
//     var db = await VeritabaniYardimicisi.veritabaniErisim();
//     List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM kisiler");
//     return List.generate(maps.length, (i){
//       var satir = maps[i];
//       return Kisiler(satir["kisiId"], satir["kisiAd"], satir["kisiYas"]);
//     });
//   }
//
//   Future<void> kisiEkle(String kisiAd, int kisiYas) async{
//     var db = await VeritabaniYardimicisi.veritabaniErisim();
//     var bilgiler = Map<String, dynamic>();
//     bilgiler["kisiAd"] = kisiAd;
//     bilgiler["kisiYas"] = kisiYas;
//     await db.insert("kisiler", bilgiler);
//   }
//
//   Future<void> kisiSil(int kisiId) async{
//     var db = await VeritabaniYardimicisi.veritabaniErisim();
//     await db.delete("kisiler", where: "kisiId = ?", whereArgs: [kisiId]);
//   }
//
//   Future<void> kisiGuncelle(int kisiId, String kisiAd, int kisiYas) async{
//     var db = await VeritabaniYardimicisi.veritabaniErisim();
//     var bilgiler = Map<String, dynamic>();
//     bilgiler["kisiAd"] = kisiAd;
//     bilgiler["kisiYas"] = kisiYas;
//
//     await db.update("kisiler", bilgiler, where: "kisiId=?", whereArgs: [kisiId]);
//   }
//
//   Future<int> kayitKontrol(String kisiAd) async{
//     var db = await VeritabaniYardimicisi.veritabaniErisim();
//     List<Map<String, dynamic>> maps = await db.rawQuery("SELECT count(*) AS sonuc FROM kisiler WHERE kisiAd='$kisiAd'");
//     return maps[0]["sonuc"];
//   }
//
//   Future<Kisiler> kisiGetir(int kisiId) async{
//     var db = await VeritabaniYardimicisi.veritabaniErisim();
//     List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM kisiler WHERE kisiId=$kisiId");
//     var satir = maps[0];
//     return Kisiler(satir["kisiId"], satir["kisiAd"], satir["kisiYas"]);
//   }
//
//   Future<List<Kisiler>> kisiArama(String aramaKelimesi) async{
//     var db = await VeritabaniYardimicisi.veritabaniErisim();
//     List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM kisiler WHERE kisiAd LIKE '%$aramaKelimesi%'");
//     return List.generate(maps.length, (i){
//       var satir = maps[i];
//       return Kisiler(satir["kisiId"], satir["kisiAd"], satir["kisiYas"]);
//     });
//   }
//
//   Future<List<Kisiler>> rasgeleIkiKisiGetir() async{
//     var db = await VeritabaniYardimicisi.veritabaniErisim();
//     List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM kisiler ORDER BY RANDOM() LIMIT 2");
//     return List.generate(maps.length, (i){
//       var satir = maps[i];
//       return Kisiler(satir["kisiId"], satir["kisiAd"], satir["kisiYas"]);
//     });
//   }
// }
//endregion

// Foreign Key Iceren Tablo Calismasi
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
//   Future<void> goster() async{
//     var fimler = await Filmlerdao().tumFilmer();
//     for(var film in fimler){
//       print("Film id: ${film.filmId} | Film ad: ${film.filmAd} | Film yil: ${film.filmYil} | Film resim: ${film.filmResim} | Film kategori: ${film.kategori.kategoriAd} | Film yonetmen: ${film.yonetmen.yonetmenAd}");
//     }
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     goster();
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
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
// class VeritabaniYardimicisi{
//   static final String veritabaniAdi = "filmler.sqlite";
//
//   static Future<Database> veritabaniErisim() async{
//     String veritabaniYolu = join(await getDatabasesPath(), veritabaniAdi);
//     if(await databaseExists(veritabaniYolu)){
//       print("Veritabani zaten var kopyalamaya gerek yok");
//     }else{
//       ByteData data = await rootBundle.load("veritabani/$veritabaniAdi");
//       List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
//       await File(veritabaniYolu).writeAsBytes(bytes, flush: true);
//       print("Veritabani kopyalandi.");
//     }
//
//     return openDatabase(veritabaniYolu);
//   }
// }
//
// class Kategoriler{
//   int kategoriId;
//   String kategoriAd;
//   Kategoriler(this.kategoriId, this.kategoriAd);
// }
//
// class Yonetmenler{
//   int yonetmenId;
//   String yonetmenAd;
//   Yonetmenler(this.yonetmenId, this.yonetmenAd);
// }
//
// class Filmler{
//   int filmId;
//   String filmAd;
//   int filmYil;
//   String filmResim;
//   Kategoriler kategori;
//   Yonetmenler yonetmen;
//   Filmler(this.filmId, this.filmAd, this.filmYil, this.filmResim, this.kategori, this.yonetmen);
// }
//
// class Filmlerdao{
//   Future<List<Filmler>> tumFilmer() async{
//     var db = await VeritabaniYardimicisi.veritabaniErisim();
//     List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM filmler, kategoriler, yonetmenler WHERE filmler.kategoriId=kategoriler.kategoriId and filmler.yonetmenId=yonetmenler.yonetmenId");
//     return List.generate(maps.length, (i){
//       var satir = maps[i];
//       var k = Kategoriler(satir["kategoriId"], satir["kategoriAd"]);
//       var y = Yonetmenler(satir["yonetmenId"], satir["yonetmenAd"]);
//       var f = Filmler(satir["filmId"], satir["filmAd"], satir["filmYil"], satir["filmResim"], k, y);
//       return f;
//     });
//   }
// }
//endregion

// Bayrak Quiz Uygulamasi
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
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//         useMaterial3: true,
//       ),
//       home: Ansayfa(),
//     );
//   }
// }
//
// class Ansayfa extends StatefulWidget {
//   @override
//   State<Ansayfa> createState() => _AnsayfaState();
// }
//
// class _AnsayfaState extends State<Ansayfa> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           centerTitle: true,
//           title: Text("Anasayfa", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text("Quiz'e Hosgeldiniz", style: TextStyle(fontSize: 30.0),),
//               SizedBox(
//                 width: 250,
//                 height: 50,
//                 child: ElevatedButton(
//                   onPressed: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => QuizEkrani()));
//                   },
//                   child: Text("Basla", style: TextStyle(color: Colors.white),),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class QuizEkrani extends StatefulWidget {
//   const QuizEkrani({super.key});
//
//   @override
//   State<QuizEkrani> createState() => _QuizEkraniState();
// }
//
// class _QuizEkraniState extends State<QuizEkrani> {
//
//   var sorular = <Bayraklar>[];
//   var yanlisSecenekler = <Bayraklar>[];
//   late Bayraklar dogruSoru;
//   var tumSecenekler = HashSet<Bayraklar>();
//
//   int soruSayac = 0;
//   int dogruSayac = 0;
//   int yanlisSayac = 0;
//
//   String bayrakResimAdi = "placeholder.jpeg";
//   String buttonAText = "";
//   String buttonBText = "";
//   String buttonCText = "";
//   String buttonDText = "";
//
//   @override
//   void initState() {
//     super.initState();
//     sorulariAl();
//   }
//
//   Future<void> sorulariAl() async{
//     sorular = await Bayraklardao().rasgeleBesSoruGetir();
//     soruYukle();
//   }
//
//   Future<void> soruYukle() async{
//     dogruSoru = sorular[soruSayac];
//     bayrakResimAdi = dogruSoru.Resim;
//     yanlisSecenekler = await Bayraklardao().rasgeleUcYanlisCevapGetir(dogruSoru.Id);
//
//     tumSecenekler.clear();
//     tumSecenekler.add(dogruSoru);
//     tumSecenekler.add(yanlisSecenekler[0]);
//     tumSecenekler.add(yanlisSecenekler[1]);
//     tumSecenekler.add(yanlisSecenekler[2]);
//
//     buttonAText = tumSecenekler.elementAt(0).Ad;
//     buttonBText = tumSecenekler.elementAt(1).Ad;
//     buttonCText = tumSecenekler.elementAt(2).Ad;
//     buttonDText = tumSecenekler.elementAt(3).Ad;
//
//     setState(() {
//
//     });
//   }
//
//   void soruSayacKontrol(){
//     soruSayac += 1;
//     if(soruSayac != 5){
//       soruYukle();
//     }else{
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SonucEkrani(dogruSayisi: 3,)));
//     }
//   }
//
//   void dogruKontrol(String buttonText){
//     if(dogruSoru.Ad == buttonText){
//       dogruSayac += 1;
//      }else{
//       yanlisSayac +=1 ;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           centerTitle: true,
//           title: Text("Quiz Ekrani", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Text("Dogru: $dogruSayac", style: TextStyle(fontSize: 19.0),),
//                   Text("Yanlis: $yanlisSayac", style: TextStyle(fontSize: 19.0),),
//                 ],
//               ),
//               soruSayac != 5 ? Text("${soruSayac + 1}. Soru", style: TextStyle(fontSize: 30.0),):
//               Text("5. Soru", style: TextStyle(fontSize: 30.0),),
//               Image.asset("images/$bayrakResimAdi"),
//               SizedBox(
//                 height: 50,
//                 width: 250,
//                 child: ElevatedButton(
//                   onPressed: (){
//                     dogruKontrol(buttonAText);
//                     soruSayacKontrol();
//                   },
//                   child: Text(buttonAText, style: TextStyle(color: Colors.white),),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//                 width: 250,
//                 child: ElevatedButton(
//                   onPressed: (){
//                     dogruKontrol(buttonBText);
//                     soruSayacKontrol();
//                   },
//                   child: Text(buttonBText, style: TextStyle(color: Colors.white),),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//                 width: 250,
//                 child: ElevatedButton(
//                   onPressed: (){
//                     dogruKontrol(buttonCText);
//                     soruSayacKontrol();
//                   },
//                   child: Text(buttonCText, style: TextStyle(color: Colors.white),),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//                 width: 250,
//                 child: ElevatedButton(
//                   onPressed: (){
//                     dogruKontrol(buttonDText);
//                     soruSayacKontrol();
//                   },
//                   child: Text(buttonDText, style: TextStyle(color: Colors.white),),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class SonucEkrani extends StatefulWidget {
//   int dogruSayisi;
//   SonucEkrani({required this.dogruSayisi});
//
//   @override
//   State<SonucEkrani> createState() => _SonucEkraniState();
// }
//
// class _SonucEkraniState extends State<SonucEkrani> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           centerTitle: true,
//           title: Text("Sonuc Ekrani", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text("${widget.dogruSayisi} Dogru | ${5 - widget.dogruSayisi} Yanlis", style: TextStyle(fontSize: 20.0),),
//               Text("%${((widget.dogruSayisi*100)/5).toInt()} Basari", style: TextStyle(fontSize: 30.0, color: Colors.blue),),
//               SizedBox(
//                 height: 50,
//                 width: 250,
//                 child: ElevatedButton(
//                   onPressed: (){
//                     Navigator.pop(context);
//                   },
//                   child: Text("Tekrar Dene", style: TextStyle(color: Colors.white),),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue
//                   ),
//                 ),
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class Bayraklar{
//   int Id;
//   String Ad;
//   String Resim;
//   Bayraklar(this.Id, this.Ad, this.Resim);
// }
//
// class VeritabaniYardimcisi{
//   static final String veritabaniAdi = "bayrakquiz.sqlite";
//
//   static Future<Database> veritabaniErisim() async{
//     String veritabaniYolu = Path.join(await getDatabasesPath(), veritabaniAdi);
//     if(await databaseExists(veritabaniYolu)){
//       print("Veritabani zaten var.");
//     }else{
//       ByteData data = await rootBundle.load("veritabani/$veritabaniAdi");
//       List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
//       await File(veritabaniYolu).writeAsBytes(bytes, flush: true);
//       print("Veritabani kopyalandi");
//     }
//     return openDatabase(veritabaniYolu);
//   }
// }
//
// class Bayraklardao{
//   Future<List<Bayraklar>> rasgeleBesSoruGetir() async{
//     var db = await VeritabaniYardimcisi.veritabaniErisim();
//     List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM bayraklar ORDER BY RANDOM() LIMIT 5");
//     return List.generate(maps.length, (i){
//       var satir = maps[i];
//       return Bayraklar(satir["bayrak_id"], satir["bayrak_ad"], satir["bayrak_resim"]);
//     });
//
//   }
//
//   Future<List<Bayraklar>> rasgeleUcYanlisCevapGetir(int bayrak_id) async{
//     var db = await VeritabaniYardimcisi.veritabaniErisim();
//     List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM bayraklar WHERE bayrak_id != $bayrak_id ORDER BY RANDOM() LIMIT 3");
//     return List.generate(maps.length, (i){
//       var satir = maps[i];
//       return Bayraklar(satir["bayrak_id"], satir["bayrak_ad"], satir["bayrak_resim"]);
//     });
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
//   Future<List<Kelimeler>> tumKelimeler() async{
//     var kelimeler = await Kelimelerdao().tumKelimeler();
//     return kelimeler;
//   }
//
//   Future<List<Kelimeler>> aramaYap(String aramaKelimesi) async{
//     var kelimeler = await Kelimelerdao().kelimeAra(aramaKelimesi);
//     return kelimeler;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         centerTitle: true,
//         title: aramaYapiliyorMu ?
//           TextField(
//             decoration: InputDecoration(hintText: "Aramak icin bir sey giriniz", hintStyle: TextStyle(color: Colors.white)),
//             onChanged: (aramaSonucu){
//               print("Arama sonucu: $aramaSonucu");
//               setState(() {
//                 aramaKelimesi = aramaSonucu;
//               });
//             },
//           )
//         : Text("Sozluk Uygulamasi", style: TextStyle(color: Colors.white),),
//         actions: [ aramaYapiliyorMu ?
//           IconButton(
//               onPressed: (){
//                 setState(() {
//                   aramaYapiliyorMu = false;
//                   aramaKelimesi = "";
//                 });
//               },
//               icon: Icon(Icons.cancel)
//           )
//         : IconButton(
//             onPressed: (){
//               setState(() {
//                 aramaYapiliyorMu = true;
//               });
//             },
//             icon: Icon(Icons.search)
//           )
//         ],
//       ),
//       body: FutureBuilder<List<Kelimeler>>(
//         future: aramaYapiliyorMu ? aramaYap(aramaKelimesi) : tumKelimeler(),
//         builder: (context, snapshot){
//           if(snapshot.hasData){
//             var kelimeler = snapshot.data;
//             return ListView.builder(
//               itemCount: kelimeler!.length,
//               itemBuilder: (context, indeks){
//                 var kelime = kelimeler[indeks];
//                 return GestureDetector(
//                   onTap: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(kelime: kelime,)));
//                   },
//                   child: SizedBox(
//                     height: 50,
//                     child: Card(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Text(kelime.ingilizce, style: TextStyle(fontWeight: FontWeight.bold),),
//                           Text(kelime.turkce)
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             );
//           }else{
//             return Center();
//           }
//         },
//       )
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
//   int kelime_id;
//   String ingilizce;
//   String turkce;
//   Kelimeler({required this.kelime_id,required this.ingilizce,required this.turkce});
// }
//
// class Kelimelerdao{
//   Future<List<Kelimeler>> tumKelimeler() async{
//     var db = await VeritabaniYardimcisi.veritabaniErisim();
//     List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM kelimeler");
//
//     return List.generate(maps.length, (i){
//       var satir = maps[i];
//       return Kelimeler(kelime_id: satir["kelime_id"], ingilizce: satir["ingilizce"], turkce: satir["turkce"]);
//     });
//   }
//
//   Future<List<Kelimeler>> kelimeAra(String aramaKelimesi) async{
//     var db = await VeritabaniYardimcisi.veritabaniErisim();
//     List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM kelimeler WHERE ingilizce LIKE '%$aramaKelimesi%'");
//
//     return List.generate(maps.length, (i){
//       var satir = maps[i];
//       return Kelimeler(kelime_id: satir["kelime_id"], ingilizce: satir["ingilizce"], turkce: satir["turkce"]);
//     });
//   }
// }
//
// class VeritabaniYardimcisi{
//   static final String veritabaniAdi = "sozluk.sqlite";
//   static Future<Database> veritabaniErisim() async{
//     String veritabaniYolu = Path.join(await getDatabasesPath(), veritabaniAdi);
//
//     if(await databaseExists(veritabaniYolu)){
//       print("Veritabani kopyalandi");
//     }else{
//       ByteData data = await rootBundle.load("veritabani/$veritabaniAdi");
//       List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
//       await File(veritabaniYolu).writeAsBytes(bytes, flush: true);
//       print("Veritabani kopyalanmadi");
//     }
//     return openDatabase(veritabaniYolu);
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
//   Future<List<Notlar>> tumNotlar() async{
//     var notlar = await Notlardao().tumNotlar();
//     return notlar;
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
//      floatingActionButton: FloatingActionButton(
//        onPressed: (){
//          Navigator.push(context, MaterialPageRoute(builder: (context) => NotKayit()));
//        },
//        tooltip: 'Not Ekle',
//        child: Icon(Icons.add),
//      ),
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
//     await Notlardao().Ekle(ders_adi, not1, not2);
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
//     await Notlardao().Sil(not_id);
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//   }
//
//   Future<void> guncelle (int not_id, String ders_adi, int not1, int not2) async{
//     await Notlardao().Guncelle(not_id, ders_adi, not1, not2);
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
//             onPressed: (){
//               sil(widget.not.not_id);
//             },
//             child: Text("Sil", style: TextStyle(color: Colors.red),)
//           ),
//           ElevatedButton(
//             onPressed: (){
//               guncelle(widget.not.not_id, tfDersAdi.text, int.parse(tfnot1.text), int.parse(tfnot2.text));
//             },
//             child: Text("Guncelle", style: TextStyle(color: Colors.red),)
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
//   int not_id;
//   String ders_adi;
//   int not1;
//   int not2;
//   Notlar(this.not_id, this.ders_adi, this.not1, this.not2);
// }
//
// class VeritabaniYardimicisi{
//   static final String veritabaniAdi = "notuygulamasi.sqlite";
//
//   static Future<Database> veritabaniErisim() async{
//     String veritabaniYolu = Path.join(await getDatabasesPath(), veritabaniAdi);
//     if(await databaseExists(veritabaniYolu)){
//       print("Veritabani kopyalanmadi");
//     }else{
//       ByteData data = await rootBundle.load("veritabani/$veritabaniAdi");
//       List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
//       await File(veritabaniYolu).writeAsBytes(bytes, flush: true);
//       print("Veritabani kopyalandi");
//     }
//     return openDatabase(veritabaniYolu);
//   }
// }
//
// class Notlardao{
//   Future<List<Notlar>> tumNotlar() async{
//     var db = await VeritabaniYardimicisi.veritabaniErisim();
//     List<Map<String,dynamic>> maps = await db.rawQuery("SELECT * FROM notlar");
//     return List.generate(maps.length, (i){
//       var satir = maps[i];
//       return Notlar(satir["not_id"], satir["ders_adi"], satir["not1"], satir["not2"]);
//     });
//   }
//
//   Future<void> Ekle(String ders_adi, int not1, int not2) async{
//     var db = await VeritabaniYardimicisi.veritabaniErisim();
//     var bilgiler = Map<String, dynamic>();
//     bilgiler["ders_adi"] = ders_adi;
//     bilgiler["not1"] = not1;
//     bilgiler["not2"] = not2;
//     await db.insert("notlar", bilgiler);
//   }
//
//   Future<void> Guncelle(int not_id, String ders_adi, int not1, int not2) async{
//     var db = await VeritabaniYardimicisi.veritabaniErisim();
//     var bilgiler = Map<String, dynamic>();
//     bilgiler["ders_adi"] = ders_adi;
//     bilgiler["not1"] = not1;
//     bilgiler["not2"] = not2;
//     await db.update("notlar", bilgiler, where: "not_id=?",whereArgs: [not_id]);
//   }
//
//   Future<void> Sil(int not_id) async{
//     var db = await VeritabaniYardimicisi.veritabaniErisim();
//     await db.delete("notlar", where: "not_id=?",whereArgs: [not_id]);
//   }
// }
//endregion

// Filmler uygulamasi
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
//   Future<List<Kategoriler>> tumKategoriler() async{
//     var kategoriler = await Kategorilerdao().tumKategoriler();
//     return kategoriler;
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         centerTitle: true,
//         title: Text("Kategoriler", style: TextStyle(color: Colors.white),),
//       ),
//       body: FutureBuilder<List<Kategoriler>>(
//         future: tumKategoriler(),
//         builder: (context, snapshot){
//           if(snapshot.hasData){
//             var kategoriler = snapshot.data;
//             return ListView.builder(
//                itemCount: kategoriler!.length,
//               itemBuilder: (context, indeks){
//                  var kategori = kategoriler[indeks];
//                  return GestureDetector(
//                    onTap: (){
//                      Navigator.push(context, MaterialPageRoute(builder: (context) => FilmlerSayfa(kategori: kategori,)));
//                    },
//                    child: Card(
//                      child: SizedBox(
//                        height: 50,
//                        child: Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: [
//                            Text(kategori.kategori_ad)
//                          ],
//                        ),
//                      ),
//                    ),
//                  );
//               },
//             );
//           }else{
//             return Center();
//           }
//         },
//       )
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
//   Future<List<Filmler>> tumFilmler(int kategori_id) async{
//     var filmler = await Filmlerdao().tumFilmlerByKategoriId(kategori_id);
//     return filmler;
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
//           future: tumFilmler(widget.kategori.kategori_id),
//           builder: (context, snapshot){
//             if(snapshot.hasData){
//               var filmler = snapshot.data;
//               return GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: 2 / 3.5
//                   ),
//                 itemCount: filmler!.length,
//                 itemBuilder: (context, indeks){
//                     var film = filmler[indeks];
//                     return GestureDetector(
//                       onTap: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(film: film,)));
//                       },
//                       child: Card(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Image.asset("images/gates.jpeg"),
//                             ),
//                             Text(film.film_ad, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)
//                           ],
//                         ),
//                       ),
//                     );
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
//                 child: Image.asset("images/food.jpeg"),
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
//   int kategori_id;
//   String kategori_ad;
//   Kategoriler(this.kategori_id, this.kategori_ad);
// }
//
// class Yonetmenler{
//   int yonetmen_id;
//   String yonetmen_ad;
//   Yonetmenler(this.yonetmen_id, this.yonetmen_ad);
// }
//
// class Filmler{
//   int film_id;
//   String film_ad;
//   int film_yil;
//   String film_resim;
//   Kategoriler kategori;
//   Yonetmenler yonetmen;
//   Filmler(this.film_id, this.film_ad, this.film_yil, this.film_resim,
//       this.kategori, this.yonetmen);
// }
//
// class Filmlerdao{
//
//   Future<List<Filmler>> tumFilmlerByKategoriId(int kategori_id) async{
//     var db = await VeritabaniYardimicisi.veritabaniErisim();
//     List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM filmler, kategoriler, yonetmenler WHERE filmler.kategoriId = kategoriler.kategoriId AND filmler.yonetmenId = yonetmenler.yonetmenId");
//     return List.generate(maps.length, (i){
//       var satir = maps[i];
//       var k = Kategoriler(satir["kategoriId"], satir["kategoriAd"]);
//       var y = Yonetmenler(satir["yonetmenId"], satir["yonetmenAd"]);
//       var f = Filmler(satir["filmId"], satir["filmAd"], satir["filmYil"], satir["filmResim"], k, y);
//       return f;
//     });
//   }
// }
//
// class Kategorilerdao{
//
//   Future<List<Kategoriler>> tumKategoriler() async{
//     var db = await VeritabaniYardimicisi.veritabaniErisim();
//     List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM kategoriler");
//     return List.generate(maps.length, (i){
//       var satir = maps[i];
//       return Kategoriler(satir["kategoriId"], satir["kategoriAd"]);
//     });
//   }
//
// }
//
// class VeritabaniYardimicisi{
//   static final String veritabaniAdi = "filmler.sqlite";
//
//   static Future<Database> veritabaniErisim() async{
//     String veritabaniYolu = Path.join(await getDatabasesPath(), veritabaniAdi);
//     if(await databaseExists(veritabaniYolu)){
//       print("Veritabani kopyalanmadi");
//     }else{
//       ByteData data = await rootBundle.load("veritabani/$veritabaniAdi");
//       List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
//       await File(veritabaniYolu).writeAsBytes(bytes, flush: true);
//       print("Veritabani kopyalandi");
//     }
//     return openDatabase(veritabaniYolu);
//   }
// }
//endregion

// Rehber uygulamasi
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
//   Future<List<Kisiler>> tumKisiler() async{
//     var kisiler = await Kisilerdao().tumKisiler();
//     return kisiler;
//   }
//
//   Future<List<Kisiler>> aramaYap(String aramaKelimesi) async{
//     var kisiler = await Kisilerdao().kisiArama(aramaKelimesi);
//     return kisiler;
//   }
//
//   Future<void> Sil(int kisi_id) async{
//     await Kisilerdao().kisiSil(kisi_id);
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
//           TextField(
//             style: TextStyle(color: Colors.white),
//             decoration: InputDecoration(
//               hintText: "Arama icin bir sey yazin",
//               hintStyle: TextStyle(color: Colors.white),
//               labelStyle: TextStyle(color: Colors.white)
//             ),
//             onChanged: (aramaSonucu){
//               print(aramaSonucu);
//               setState(() {
//                 aramaKelimesi = aramaSonucu;
//               });
//             },
//           )
//           :Text("Kisiler Uygulamasi", style: TextStyle(color: Colors.white),),
//         actions: [ aramaYapiliyorMu ?
//           IconButton(
//               onPressed: (){
//                 setState(() {
//                   aramaYapiliyorMu = false;
//                   aramaKelimesi = "";
//                 });
//               },
//               icon: Icon(Icons.cancel)
//           )
//          : IconButton(
//             onPressed: (){
//               setState(() {
//                 aramaYapiliyorMu = true;
//               });
//             },
//             icon: Icon(Icons.search)
//           ),
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
//                                 Sil(kisi.kisi_id);
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
//     await Kisilerdao().kisiGuncelle(kisi_id, kisi_ad, kisi_tel);
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
//           guncelle(widget.kisi.kisi_id, tfKisiAdi.text, tfKisiTel.text);
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
//     await Kisilerdao().kisiEKle(kisi_ad, kisi_tel);
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
//                   hintText: "Kisi Ad"
//                 ),
//               ),
//               TextField(
//                 controller: tfKisiTel,
//                 decoration: InputDecoration(
//                   hintText: "Kisi tel"
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
//   int kisi_id;
//   String kisi_ad;
//   String kisi_tel;
//   Kisiler(this.kisi_id, this.kisi_ad, this.kisi_tel);
// }
//
// class Kisilerdao{
//
//   Future<List<Kisiler>> tumKisiler() async{
//     var db = await VeritabaniYardimcisi.veritabaniErisim();
//     List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM kisiler");
//     return List.generate(maps.length, (index){
//       var satir = maps[index];
//       return Kisiler(satir["kisi_id"], satir["kisi_ad"], satir["kisi_tel"]);
//     });
//   }
//
//   Future<List<Kisiler>> kisiArama(String aramaKelimesi) async{
//     var db = await VeritabaniYardimcisi.veritabaniErisim();
//     List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM kisiler WHERE kisi_ad LIKE '%$aramaKelimesi%'");
//     return List.generate(maps.length, (index){
//       var satir = maps[index];
//       return Kisiler(satir["kisi_id"], satir["kisi_ad"], satir["kisi_tel"]);
//     });
//   }
//
//   Future<void> kisiEKle(String kisi_ad, String kisi_tel) async{
//     var db = await VeritabaniYardimcisi.veritabaniErisim();
//     var bilgiler = Map<String, dynamic>();
//     bilgiler["kisi_ad"] = kisi_ad;
//     bilgiler["kisi_tel"] = kisi_tel;
//     await db.insert("kisiler", bilgiler);
//   }
//
//   Future<void> kisiGuncelle(int kisi_id, String kisi_ad, String kisi_tel) async{
//     var db = await VeritabaniYardimcisi.veritabaniErisim();
//     var bilgiler = Map<String, dynamic>();
//     bilgiler["kisi_ad"] = kisi_ad;
//     bilgiler["kisi_tel"] = kisi_tel;
//     await db.update("kisiler", bilgiler, where: "kisi_id=?",whereArgs: [kisi_id]);
//   }
//
//
//   Future<void> kisiSil(int kisi_id) async{
//     var db = await VeritabaniYardimcisi.veritabaniErisim();
//     await db.delete("kisiler", where: "kisi_id=?",whereArgs: [kisi_id]);
//   }
// }
//
// class VeritabaniYardimcisi{
//   static final String veritabaniAdi = "kisileruygulamasi.sqlite";
//
//   static Future<Database> veritabaniErisim() async{
//     String veritabaniYolu = Path.join(await getDatabasesPath(), veritabaniAdi);
//     if(await databaseExists(veritabaniYolu)){
//       print("Veritabani zaten var.");
//     }else{
//       ByteData data = await rootBundle.load("veritabani/$veritabaniAdi");
//       List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
//       await File(veritabaniYolu).writeAsBytes(bytes, flush: true);
//       print("Veritabani kopyalandi");
//     }
//     return openDatabase(veritabaniYolu);
//   }
// }

//endregion

// First
//region
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Anasayfa", style: TextStyle(color: Colors.white),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        )
    );
  }
}
//endregion