// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// void main() {
//   runApp(MyApp());
// }

// Konum alma islemi
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
// // AIzaSyDfeDvNRTT4rcku4SOZBoHQgrfrZDid9w0
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   double enlem = 0.0;
//   double boylam = 0.0;
//
//   Future<void> konumBilgisiAl() async{
//     var konum = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//     setState(() {
//       enlem = konum.latitude;
//       boylam = konum.longitude;
//     });
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
//             children: [
//               Text("Enlem :$enlem"),
//               Text("Boylam: $boylam"),
//               ElevatedButton(
//                 onPressed: (){
//                   konumBilgisiAl();
//                 },
//                 child: Text("Konum bilgisi al")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Harita Kullanimi
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
//   Completer<GoogleMapController> haritaKontrol = Completer();
//   var baslangicKonum = CameraPosition(target: LatLng(38.4710, 27.2177), zoom: 5,);
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
//             children: [
//               SizedBox(
//                 width: 400,
//                 height: 200,
//                 child: GoogleMap(
//                   initialCameraPosition: baslangicKonum,
//                   mapType: MapType.normal,
//                   onMapCreated: (GoogleMapController controller){
//                     haritaKontrol.complete(controller);
//                   },
//                 ),
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Konum Gecisi
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
//   Completer<GoogleMapController> haritaKontrol = Completer();
//   var baslangicKonum = CameraPosition(target: LatLng(38.4710, 27.2177), zoom: 5,);
//
//   Future<void> konumaGit() async{
//     GoogleMapController controller = await haritaKontrol.future;
//     var gidilecekKonum = CameraPosition(target: LatLng(41.0039643, 28.4517462), zoom: 8,);
//     controller.animateCamera(CameraUpdate.newCameraPosition(gidilecekKonum));
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
//             children: [
//               SizedBox(
//                 width: 400,
//                 height: 200,
//                 child: GoogleMap(
//                   initialCameraPosition: baslangicKonum,
//                   mapType: MapType.normal,
//                   onMapCreated: (GoogleMapController controller){
//                     haritaKontrol.complete(controller);
//                   },
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: (){
//                   konumaGit();
//                 },
//                 child: Text("Konuma git")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Marker Ekleme
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
//   Completer<GoogleMapController> haritaKontrol = Completer();
//   var baslangicKonum = CameraPosition(target: LatLng(38.4710, 27.2177), zoom: 5,);
//   List<Marker> isaretler = <Marker>[];
//   Future<void> konumaGit() async{
//     GoogleMapController controller = await haritaKontrol.future;
//
//     var gidilecekIsaret = Marker(
//       markerId: MarkerId("Id"),
//       position: LatLng(41.0039643, 28.4517462),
//       infoWindow: InfoWindow(title: "Istanbul", snippet: "Evim"),
//     );
//
//
//     setState(() {
//       isaretler.add(gidilecekIsaret);
//     });
//
//     var gidilecekKonum = CameraPosition(target: LatLng(41.0039643, 28.4517462), zoom: 8,);
//     controller.animateCamera(CameraUpdate.newCameraPosition(gidilecekKonum));
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
//             children: [
//               SizedBox(
//                 width: 400,
//                 height: 200,
//                 child: GoogleMap(
//                   initialCameraPosition: baslangicKonum,
//                   mapType: MapType.normal,
//                   markers: Set<Marker>.of(isaretler),
//                   onMapCreated: (GoogleMapController controller){
//                     haritaKontrol.complete(controller);
//                   },
//                 ),
//               ),
//               ElevatedButton(
//                   onPressed: (){
//                     konumaGit();
//                   },
//                   child: Text("Konuma git")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Marker Ozellestirme
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
//   late BitmapDescriptor konumIcon;
//   Completer<GoogleMapController> haritaKontrol = Completer();
//   var baslangicKonum = CameraPosition(target: LatLng(38.4710, 27.2177), zoom: 5,);
//   List<Marker> isaretler = <Marker>[];
//
//   iconOlustur(context){
//     ImageConfiguration configuration = createLocalImageConfiguration(context);
//     BitmapDescriptor.fromAssetImage(configuration, "images/food.jpeg").then((icon) {
//       konumIcon = icon;
//     });
//   }
//
//   Future<void> konumaGit() async{
//     GoogleMapController controller = await haritaKontrol.future;
//
//     var gidilecekIsaret = Marker(
//       markerId: MarkerId("Id"),
//       position: LatLng(41.0039643, 28.4517462),
//       infoWindow: InfoWindow(title: "Istanbul", snippet: "Evim"),
//       icon: konumIcon,
//     );
//
//
//     setState(() {
//       isaretler.add(gidilecekIsaret);
//     });
//
//     var gidilecekKonum = CameraPosition(target: LatLng(41.0039643, 28.4517462), zoom: 8,);
//     controller.animateCamera(CameraUpdate.newCameraPosition(gidilecekKonum));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     iconOlustur(context);
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           centerTitle: true,
//           title: Text("Anasayfa", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               SizedBox(
//                 width: 400,
//                 height: 200,
//                 child: GoogleMap(
//                   initialCameraPosition: baslangicKonum,
//                   mapType: MapType.normal,
//                   markers: Set<Marker>.of(isaretler),
//                   onMapCreated: (GoogleMapController controller){
//                     haritaKontrol.complete(controller);
//                   },
//                 ),
//               ),
//               ElevatedButton(
//                   onPressed: (){
//                     konumaGit();
//                   },
//                   child: Text("Konuma git")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

