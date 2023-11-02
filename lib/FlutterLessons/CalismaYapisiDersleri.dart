// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }

// setState() methodu
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
//
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   int sayac = 0;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 child: Text("Tikla"),
//                 onPressed: (){
//                   setState(() {
//                     sayac += 1;
//                   });
//                 },
//               ),
//               Text("Sonuc: $sayac"),
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Stateless Widget
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
//       home: Sayfa1(),
//     );
//   }
// }
//
// class Sayfa1 extends StatelessWidget {
//   const Sayfa1({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Stateless Sayfa"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Merhaba")
//           ],
//         ),
//       ),
//     );
//   }
// }
//endregion

// Stateful Widget
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
//       home: Sayfa2(),
//     );
//   }
// }
//
// class Sayfa2 extends StatefulWidget {
//   const Sayfa2({super.key});
//
//   @override
//   State<Sayfa2> createState() => _Sayfa2State();
// }
//
// class _Sayfa2State extends State<Sayfa2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Stateful Sayfa"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Merhaba")
//           ],
//         ),
//       ),
//     );
//   }
// }


//endregion

// Sayfalar Arasi Gecis
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
//
// class Anasayfa extends StatefulWidget {
//   @override
//   State<Anasayfa> createState() => _AnasayfaState();
// }
//
// class _AnasayfaState extends State<Anasayfa> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text("Anasayfa"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//                 child: Text("Sayfa A'ya git"),
//                 onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaA()));
//                 },
//             ),
//           ],
//         ),
//       )
//     );
//   }
// }
//
// class SayfaA extends StatefulWidget {
//   const SayfaA({super.key});
//
//   @override
//   State<SayfaA> createState() => _SayfaAState();
// }
//
// class _SayfaAState extends State<SayfaA> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Sayfa A"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 child: Text("Sayfa B'ya git"),
//                 onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaB()));
//                 },
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class SayfaB extends StatefulWidget {
//   const SayfaB({super.key});
//
//   @override
//   State<SayfaB> createState() => _SayfaBState();
// }
//
// class _SayfaBState extends State<SayfaB> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Sayfa B"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 child: Text("Geldigi sayfaya don"),
//                 onPressed: (){
//                   Navigator.pop(context);
//                 },
//               ),
//               ElevatedButton(
//                 child: Text("Anasayfaya don"),
//                 onPressed: (){
//                   Navigator.of(context).popUntil((route) => route.isFirst);
//                 },
//               ),
//               ElevatedButton(
//                 child: Text("Anasayfaya gecis yap"),
//                 onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//                 },
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }



//endregion

// Geri Donus Tuslarini Override Etme
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
//
// class Anasayfa extends StatefulWidget {
//   @override
//   State<Anasayfa> createState() => _AnasayfaState();
// }
//
// class _AnasayfaState extends State<Anasayfa> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Anasayfa"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 child: Text("Sayfa A'ya git"),
//                 onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaA()));
//                 },
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class SayfaA extends StatefulWidget {
//   const SayfaA({super.key});
//
//   @override
//   State<SayfaA> createState() => _SayfaAState();
// }
//
// class _SayfaAState extends State<SayfaA> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Sayfa A"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 child: Text("Sayfa B'ya git"),
//                 onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaB()));
//                 },
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class SayfaB extends StatefulWidget {
//   const SayfaB({super.key});
//
//   @override
//   State<SayfaB> createState() => _SayfaBState();
// }
//
// class _SayfaBState extends State<SayfaB> {
//
//   Future<bool> geriDonusTusu(BuildContext context) async{
//     print("Geri donus tusu tiklandi");
//     Navigator.of(context).popUntil((route) => route.isFirst);
//     return true;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Sayfa B"),
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back),
//             onPressed: (){
//               print("AppBar geri tusu tiklandi");
//               // Navigator.pop(context); // son sayfaya geri doner
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa())); // anasayfaya gecis yapar
//              },
//           ),
//         ),
//         body: WillPopScope(
//           onWillPop: () => geriDonusTusu(context),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   child: Text("Geldigi sayfaya don"),
//                   onPressed: (){
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ElevatedButton(
//                   child: Text("Anasayfaya don"),
//                   onPressed: (){
//                     Navigator.of(context).popUntil((route) => route.isFirst);
//                   },
//                 ),
//                 ElevatedButton(
//                   child: Text("Anasayfaya gecis yap"),
//                   onPressed: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//                   },
//                 ),
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }
//endregion

// Sayfalar Arasi Veri Transferi - Yontem 1
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
//
// class Anasayfa extends StatefulWidget {
//   @override
//   State<Anasayfa> createState() => _AnasayfaState();
// }
//
// class _AnasayfaState extends State<Anasayfa> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Anasayfa"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 child: Text("Sayfa A'ya git"),
//                 onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaA(isim: "Ahmet",yas: 18,boy: 1.78,bekarMi: true,)));
//                 },
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class SayfaA extends StatefulWidget {
//   String isim;
//   int yas;
//   double boy;
//   bool bekarMi;
//   SayfaA({required this.isim,required this.yas,required this.boy,required this.bekarMi});
//
//   @override
//   State<SayfaA> createState() => _SayfaAState();
// }
//
// class _SayfaAState extends State<SayfaA> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Sayfa A"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 child: Text("Sayfa B'ya git"),
//                 onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaB()));
//                 },
//               ),
//               Text("Isim : ${widget.isim} \n Yas: ${widget.yas} \n Boy: ${widget.boy} \n BekarMi: ${widget.bekarMi} ")
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class SayfaB extends StatefulWidget {
//   const SayfaB({super.key});
//
//   @override
//   State<SayfaB> createState() => _SayfaBState();
// }
//
// class _SayfaBState extends State<SayfaB> {
//
//   Future<bool> geriDonusTusu(BuildContext context) async{
//     print("Geri donus tusu tiklandi");
//     Navigator.of(context).popUntil((route) => route.isFirst);
//     return true;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Sayfa B"),
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back),
//             onPressed: (){
//               print("AppBar geri tusu tiklandi");
//               // Navigator.pop(context); // son sayfaya geri doner
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa())); // anasayfaya gecis yapar
//             },
//           ),
//         ),
//         body: WillPopScope(
//           onWillPop: () => geriDonusTusu(context),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   child: Text("Geldigi sayfaya don"),
//                   onPressed: (){
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ElevatedButton(
//                   child: Text("Anasayfaya don"),
//                   onPressed: (){
//                     Navigator.of(context).popUntil((route) => route.isFirst);
//                   },
//                 ),
//                 ElevatedButton(
//                   child: Text("Anasayfaya gecis yap"),
//                   onPressed: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//                   },
//                 ),
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }
//endregion

// Sayfalar Arasi Veri Transfer - Yontem 2
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
//
// class Anasayfa extends StatefulWidget {
//   @override
//   State<Anasayfa> createState() => _AnasayfaState();
// }
//
// class _AnasayfaState extends State<Anasayfa> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Anasayfa"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 child: Text("Sayfa A'ya git"),
//                 onPressed: (){
//                   var kisi = Kisiler(isim: "Ahmet", yas: 18, boy: 1.78, bekarMi: true)
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaA(kisi: kisi,)));
//                 },
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class SayfaA extends StatefulWidget {
//   Kisiler kisi;
//   SayfaA({required this.kisi});
//
//   @override
//   State<SayfaA> createState() => _SayfaAState();
// }
//
// class _SayfaAState extends State<SayfaA> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Sayfa A"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 child: Text("Sayfa B'ya git"),
//                 onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaB()));
//                 },
//               ),
//               Text("Isim : ${widget.kisi.isim} \n Yas: ${widget.kisi.yas} \n Boy: ${widget.kisi.boy} \n BekarMi: ${widget.kisi.bekarMi} ")
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class SayfaB extends StatefulWidget {
//   const SayfaB({super.key});
//
//   @override
//   State<SayfaB> createState() => _SayfaBState();
// }
//
// class _SayfaBState extends State<SayfaB> {
//
//   Future<bool> geriDonusTusu(BuildContext context) async{
//     print("Geri donus tusu tiklandi");
//     Navigator.of(context).popUntil((route) => route.isFirst);
//     return true;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Sayfa B"),
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back),
//             onPressed: (){
//               print("AppBar geri tusu tiklandi");
//               // Navigator.pop(context); // son sayfaya geri doner
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa())); // anasayfaya gecis yapar
//             },
//           ),
//         ),
//         body: WillPopScope(
//           onWillPop: () => geriDonusTusu(context),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   child: Text("Geldigi sayfaya don"),
//                   onPressed: (){
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ElevatedButton(
//                   child: Text("Anasayfaya don"),
//                   onPressed: (){
//                     Navigator.of(context).popUntil((route) => route.isFirst);
//                   },
//                 ),
//                 ElevatedButton(
//                   child: Text("Anasayfaya gecis yap"),
//                   onPressed: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//                   },
//                 ),
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }
//
// class Kisiler{
//   String isim;
//   int yas;
//   double boy;
//   bool bekarMi;
//   Kisiler({required this.isim,required this.yas,required this.boy,required this.bekarMi});
// }
//endregion

// Back Stack Kullanimi
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
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Anasayfa"),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               ElevatedButton(
//                  child: Text("Oyuna Basla"),
//                   onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => OyunEkrani()));
//                   },
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class OyunEkrani extends StatefulWidget {
//
//   @override
//   State<OyunEkrani> createState() => _OyunEkraniState();
// }
//
// class _OyunEkraniState extends State<OyunEkrani> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Oyun Ekrani"),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               ElevatedButton(
//                 child: Text("Oyuna Bitti"),
//                 onPressed: () {
//                   //kendisini back stack'ten siler
//                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SonucEkrani()));
//                 },
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class SonucEkrani extends StatefulWidget {
//
//   @override
//   State<SonucEkrani> createState() => _SonucEkraniState();
// }
//
// class _SonucEkraniState extends State<SonucEkrani> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Sonuc Ekrani"),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//
//             ],
//           ),
//         )
//     );
//   }
// }


//endregion

// Yasam Dongusu
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
// class _AnasayfaState extends State<Anasayfa> with WidgetsBindingObserver{
//
//   @override
//   void initState() {
//     super.initState();
//     print("initState() calisti");
//     WidgetsBinding.instance!.addObserver(this);
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     WidgetsBinding.instance!.removeObserver(this);
//   }
//
//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     if(state == AppLifecycleState.inactive)
//       print("inactive() calisti");
//     if(state == AppLifecycleState.paused)
//       print("paused() calisti");
//     if(state == AppLifecycleState.resumed)
//       print("resumed() calisti");
//     if(state == AppLifecycleState.detached)
//       print("detached() calisti");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print("build calisti");
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Yasam Dongusu"),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               ElevatedButton(
//                   onPressed: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaA()));
//                   },
//                   child: Text("Tikla")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class SayfaA extends StatefulWidget {
//   const SayfaA({super.key});
//
//   @override
//   State<SayfaA> createState() => _SayfaAState();
// }
//
// class _SayfaAState extends State<SayfaA> {
//   @override
//   void deactivate() {
//     super.deactivate();
//     print("Sayfa A: deactive() calisti");
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     print("Sayfa A: dispose() calisti");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(
//       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       title: Text("Sayfa A"),
//     ),
//     body: Center(
//       child: Column(
//         children: [
//
//         ],
//       ),
//     )
//     );
//   }
// }

//endregion

// Widget Kodlama Teknikleri
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
// class _AnasayfaState extends State<Anasayfa> with WidgetsBindingObserver{
//
//   bool kontrol = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Kodlama Teknikleri"),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               // Visibility(
//                   // visible: kontrol, //gorunur / gorunmez durum icin kullanilir
//                   // child: Text(kontrol ? "Dogru" : "Yanlis", // true ise dogru false ise yanlis yazar
//                   //     style: TextStyle(
//                   //       color: kontrol ? Colors.green : Colors.red,
//                   //       fontSize: kontrol ? 20 : 50,
//                   //       fontWeight: kontrol ? FontWeight.normal : FontWeight.bold
//                   //     ),
//                   // ),
//                 // )
//               // ),
//               ((){
//                 if(kontrol) {
//                   return Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.done),
//                       Text("Dogru")
//                     ],
//                   );
//                 }
//                 else{
//                   return Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.cancel),
//                       Text("Yanlis")
//                     ],
//                   );
//                 }
//               }()),
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       kontrol = true;
//                     });
//                   },
//                   child: Text("Durum 1")
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       kontrol = false;
//                     });
//                   },
//                   child: Text("Durum 2")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }

//endregion

// FutureBuilder Kullanimi
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
//
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   Future<int> faktoriyelHesapla(int sayi) async{
//     int sonuc = 1;
//     for(var i=1; i<=sayi; i++)
//       sonuc *= i;
//
//     return sonuc;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               FutureBuilder<int>(
//                   future: faktoriyelHesapla(5),
//                   builder: (context, snapshot){
//                     if(snapshot.hasError)
//                       print("Hata Sonucu: ${snapshot.error}");
//
//                     if(snapshot.hasData)
//                       return Text("Sonuc: ${snapshot.data}");
//                     else
//                       return Text("Gosterilecek veri yok");
//                   }
//               )
//             ],
//           ),
//         )
//     );
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
//
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text("Baslik"),
//       ),
//       body: Text("Merhaba")
//     );
//   }
// }
//endregion
