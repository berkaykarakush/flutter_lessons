// import 'package:flutter/material.dart';

// void main() {
  // runApp(const MyApp());
// }

// Form Kullanimi
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
//
//   @override
//   Widget build(BuildContext context) {
//
//     var formKey = GlobalKey<FormState>();
//     var tfKullaniciAdi = TextEditingController();
//     var tfSifre = TextEditingController();
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text("Baslik"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Form(
//                 key: formKey,
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       controller: tfKullaniciAdi,
//                       decoration: InputDecoration(hintText: "Kullanici Adi"),
//                       validator: (tfGirdisi){
//                         if(tfGirdisi!.isEmpty){
//                           return "Kullanici adi giriniz";
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       controller: tfSifre,
//                       obscureText: true,
//                       decoration: InputDecoration(hintText: "Sifre"),
//                       validator: (tfGirdisi){
//                         if(tfGirdisi!.isEmpty){
//                           return "Sifre giriniz";
//                         }
//
//                         if(tfGirdisi.length < 6){
//                           return "Sifreniz en 6 haneli olmalidir";
//                         }
//
//                         return null;
//                       },
//                     ),
//                     ElevatedButton(
//                       onPressed: (){
//                         bool kontrolSonucu = formKey.currentState!.validate();
//
//                         if(kontrolSonucu){
//                           String ka = tfKullaniciAdi.text;
//                           String s = tfSifre.text;
//                           print("Kullanici adi : $ka \n Sifre: $s");
//                         }
//                       },
//                       child: Text("Giris")
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       )
//     );
//   }
// }
//endregion

// AppBar Kullanimi
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
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("Baslik", style: TextStyle(color: Colors.white, fontSize: 36.0),),
//               Text("Alt Baslik", style: TextStyle(color: Colors.white, fontSize: 12.0),),
//
//             ],
//           ),
//           leading: IconButton(
//             tooltip: "Menu Icon",
//             icon: Icon(Icons.dehaze),
//             onPressed: (){
//               print("Menu icon tiklandi");
//             },
//           ),
//           actions: [
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.red,
//               ),
//               onPressed: (){
//                 print("Out clicked");
//               },
//               child: Text("Out", style: TextStyle(color: Colors.white,),)
//             ),
//             IconButton(
//               tooltip: "Info",
//               icon: Icon(Icons.info_outline),
//               onPressed: (){
//                 print("Info icon tiklandi");
//               },
//             ),
//             IconButton(
//               tooltip: "Popup Menu",
//               icon: Icon(Icons.more_vert),
//               onPressed: (){
//                 print("Popup menu tiklandi");
//               },
//             ),
//           ],
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// AppBar Popup Menu Ekleme
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
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("Baslik", style: TextStyle(color: Colors.white, fontSize: 36.0),),
//               Text("Alt Baslik", style: TextStyle(color: Colors.white, fontSize: 12.0),),
//
//             ],
//           ),
//           leading: IconButton(
//             tooltip: "Menu Icon",
//             icon: Icon(Icons.dehaze),
//             onPressed: (){
//               print("Menu icon tiklandi");
//             },
//           ),
//           actions: [
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.red,
//                 ),
//                 onPressed: (){
//                   print("Out clicked");
//                 },
//                 child: Text("Out", style: TextStyle(color: Colors.white,),)
//             ),
//             IconButton(
//               tooltip: "Info",
//               icon: Icon(Icons.info_outline),
//               onPressed: (){
//                 print("Info icon tiklandi");
//               },
//             ),
//             PopupMenuButton(
//               child: Icon(Icons.more_vert),
//               itemBuilder: (context) => [
//                 PopupMenuItem(
//                   value: 1,
//                   child: Text("Sil"),
//                 ),
//                 PopupMenuItem(
//                   value: 2,
//                   child: Text("Guncelle"),
//                 ),
//               ],
//               onSelected: (menuItemValue){
//                 if(menuItemValue == 1){
//                   print("Sil tiklandi");
//                 }
//
//                 if(menuItemValue == 2){
//                   print("Guncelle tiklandi");
//                 }
//               },
//             ),
//           ],
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// AppBar Arama Ozelligi
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
//   bool aramaYapiliyorMu = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: aramaYapiliyorMu ?
//           TextField(
//             decoration: InputDecoration(hintText: "Arama icin bir sey yazin"),
//             onChanged: (aramaSonucu){
//               print("Arama sonucu: $aramaSonucu");
//             },
//           )
//           : Text("AppBar Arama"),
//         actions: [
//           aramaYapiliyorMu ?
//          IconButton(
//            onPressed: (){
//              setState(() {
//                aramaYapiliyorMu = false;
//                print("Cancel");
//              });
//            },
//            icon: Icon(Icons.cancel)
//          )
//          : IconButton(
//               onPressed: (){
//                 setState(() {
//                   aramaYapiliyorMu = true;
//                   print("search");
//                 });
//               },
//               icon: Icon(Icons.search)
//           )
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//
//           ],
//         ),
//       )
//     );
//   }
// }
//endregion

// Card Kullanimi
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
//               SizedBox(
//                 width: 300,
//                 height: 200,
//                 child: Card(
//                   color: Colors.deepPurple,
//                   elevation: 10.0,
//                   shadowColor: Colors.deepPurple,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.only(bottomRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
//                     side: BorderSide(width: 1, color: Colors.pink)
//                   ),
//                   child: Center(
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(("Toplam Puan"), style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.star, color: Colors.amber,),
//                               Text("150",style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),)
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Sabit ListView Kullanimi
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
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           foregroundColor: Colors.white,
//           centerTitle: true,
//           title: Text("Title"),
//         ),
//         body: ListView(
//           children: [
//             ListTile(
//               leading: Icon(Icons.sunny),
//               title: Text("Sun"),
//               subtitle: Text("Sun subtitle"),
//               trailing: Icon(Icons.arrow_right),
//               onTap: (){
//                 print("Sun clicked");
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.brightness_1),
//               title: Text("Moon"),
//               subtitle: Text("Moon subtitle"),
//               trailing: Icon(Icons.arrow_right),
//               onTap: (){
//                 print("Moon clicked");
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.star),
//               title: Text("Star"),
//               subtitle: Text("Star subtitle"),
//               trailing: Icon(Icons.arrow_right),
//               onTap: (){
//                 print("Star clicked");
//               },
//             ),
//             GestureDetector(
//               onTap: (){
//                 print("Card clicked");
//               },
//               child: Card(
//                 child: SizedBox(
//                   height: 50,
//                   child: Row(
//                     children: [
//                       Text("Card Design"),
//                       Spacer(),
//                       Icon(Icons.more_vert)
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             GestureDetector(
//               onTap: (){
//                 print("Container clicked");
//               },
//               child: Container(
//                 height: 50,
//                 color: Colors.red,
//                 child: Text("Hello", style: TextStyle(color: Colors.white),),
//               ),
//             )
//           ],
//         )
//     );
//   }
// }
//endregion

// Sabit GridView Kullanimi
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
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: GridView.count(
//           crossAxisCount: 2,
//           childAspectRatio: 2 / 1,
//           children: [
//             GestureDetector(
//               onTap: (){
//                 print("Sun clicked");
//               },
//               child: Card(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.wb_sunny),
//                     Text("Sun"),
//                   ],
//                 ),
//               ),
//             ),
//             Card(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.brightness_1),
//                   Text("Moon"),
//                 ],
//               ),
//             ),
//             Card(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.start),
//                   Text("Star"),
//                 ],
//               ),
//             )
//           ],
//         )
//     );
//   }
// }
//endregion

// ListView.builder - Dinamik Liste Kullanimi
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
//   var ulkeler = ["Turkey", "Germany", "Nerherlands", "Italy", "Russian", "Hungary"];
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           centerTitle: true,
//           title: Text("Title", style: TextStyle(color: Colors.white),),
//         ),
//         body: SizedBox(
//           height: 100,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: ulkeler.length,
//             itemBuilder: (context, indeks){
//               return GestureDetector(
//                 onTap: (){
//                   print("${ulkeler[indeks]} clicked");
//                 },
//                 child: Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: SizedBox(
//                       width: 130,
//                       child: Row(
//                         children: [
//                           GestureDetector(
//                             onTap: (){
//                               print("${ulkeler[indeks]} text clicked");
//                             },
//                             child: Text(ulkeler[indeks])
//                           ),
//                           Spacer(),
//                           PopupMenuButton(
//                             icon: Icon(Icons.more_vert),
//                             itemBuilder: (context) => [
//                               PopupMenuItem(
//                                 value:  1,
//                                 child: Text("Select Country", style: TextStyle(color: Colors.red),
//                                 )
//                               ),
//                               PopupMenuItem(
//                                 value: 2,
//                                 child: Text("Go to the Page", style: TextStyle(color: Colors.red),
//                                 )
//                               ),
//                             ],
//                             onSelected: (menuItemValue){
//                               if(menuItemValue == 1){
//                                 print("${ulkeler[indeks]} button clicked");
//                               }
//                               if(menuItemValue == 2){
//                                 print("go to the ${ulkeler[indeks]} page");
//                                 Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(ulkeAdi: ulkeler[indeks],)));
//                               }
//                             },
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//     );
//   }
// }
// class DetailPage extends StatefulWidget {
//   String ulkeAdi = "";
//   DetailPage({required this.ulkeAdi});
//
//   @override
//   State<DetailPage> createState() => _DetailPageState();
// }
//
// class _DetailPageState extends State<DetailPage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         centerTitle: true,
//         title: Text("Detail", style: TextStyle(color: Colors.white),),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("${widget.ulkeAdi}", style: TextStyle(color: Colors.red),),
//           ],
//         ),
//       ),
//     );
//   }
// }

//endregion

// GridView.builder - Dinamik Liste Kullanimi
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
//   var ulkeler = ["Turkey","Germany","Italy","Russian","China"];
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Text("Baslik"),
//         ),
//         body: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 2 /1,
//           ),
//           itemCount: ulkeler.length,
//           itemBuilder: (context, indeks){
//             return GestureDetector(
//               onTap: (){
//                 print("${ulkeler[indeks]} - card tiklandi");
//               },
//               child: Card(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       GestureDetector(
//                           onTap: (){
//                             print("${ulkeler[indeks]} - Text tiklandi");
//                           },
//                           child: Text(ulkeler[indeks])
//                       ),
//                       Spacer(),
//                       PopupMenuButton(
//                         icon: Icon(Icons.more_vert),
//                         itemBuilder: (context) => [
//                           PopupMenuItem(
//                             value: 1,
//                             child: Text("Ulke Sec"),
//                           ),
//                           PopupMenuItem(
//                               value: 2,
//                               child: Text("Sayfaya git")
//                           )
//                         ],
//                         onSelected: (menuItemValue){
//                           if(menuItemValue == 1){
//                             print("${ulkeler[indeks]} - Ulke sec butonu tiklandi");
//                           }
//                           if(menuItemValue == 2){
//                             print("${ulkeler[indeks]} - Sayfaya gecisi tiklandi");
//                             Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(mesaj: ulkeler[indeks])));
//                           }
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         )
//     );
//   }
// }
//
// class DetaySayfa extends StatefulWidget {
//   String mesaj;
//   DetaySayfa({required this.mesaj});
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
//           backgroundColor: Colors.red,
//           title: Text("Baslik"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("${widget.mesaj}", style: TextStyle(color: Colors.red),),
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// FutureBuilder ile Listeleme Islemi
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
//   Future<List<String>> verileriGetir() async{
//     var ulkeListesi = ["Turkey","Germany","Italy","Russian","China"];
//     return ulkeListesi;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Text("Baslik"),
//         ),
//         body: FutureBuilder<List<String>>(
//           future: verileriGetir(),
//           builder: (context, snapshot){
//             if(snapshot.hasData){
//               var ulkeListesi = snapshot.data;
//
//               return ListView.builder(
//                 itemCount: ulkeListesi!.length,
//                 itemBuilder: (context, indeks){
//                   return Card(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: SizedBox(
//                         height: 50,
//                         child: Row(
//                           children: [
//                             Text(ulkeListesi[indeks]),
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
//endregion

// Yemek Uygulamasi
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
//   Future<List<Yemekler>> yemekleriGetir() async{
//     var yemekListesi = <Yemekler>[];
//     var y1 = Yemekler(1, "Kofte", "food.jpeg", 15.99);
//     var y2 = Yemekler(2, "Ayran", "food.jpeg", 2.0);
//     var y3 = Yemekler(3, "Fanta", "food.jpeg", 3.0);
//     var y4 = Yemekler(4, "Makarna", "food.jpeg", 14.99);
//     var y5 = Yemekler(5, "Kadayif", "food.jpeg", 8.50);
//     var y6 = Yemekler(6, "Baklava", "food.jpeg", 15.99);
//
//     yemekListesi.add(y1);
//     yemekListesi.add(y2);
//     yemekListesi.add(y3);
//     yemekListesi.add(y4);
//     yemekListesi.add(y5);
//     yemekListesi.add(y6);
//
//     return yemekListesi;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.orange,
//           centerTitle: true,
//           title: Text("Yemekler", style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.white),),
//         ),
//         body: FutureBuilder<List<Yemekler>>(
//           future: yemekleriGetir(),
//           builder: (context, snapshot){
//             if(snapshot.hasData){
//               var yemekListesi = snapshot.data;
//               return ListView.builder(
//                 itemCount: yemekListesi!.length,
//                 itemBuilder: (context, indeks){
//                   var yemek = yemekListesi[indeks];
//                   return GestureDetector(
//                     onTap: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(yemek: yemek,)));
//                     },
//                     child: Card(
//                       child: Row(
//                         children: [
//                           SizedBox(
//                             width: 150,
//                             height: 150,
//                             child: Image.asset("images/${yemek.yemekResimAdi}")
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(yemek.yemekAdi, style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
//                                 SizedBox(
//                                   height: 50,
//                                 ),
//                                 Text("${yemek.yemekFiyati} \u{20BA}", style: TextStyle(color: Colors.blue,fontSize: 25.0),),
//                               ],
//                             ),
//                           ),
//                           Spacer(),
//                           Icon(Icons.keyboard_arrow_right),
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
//   Yemekler yemek;
//   DetaySayfa({required this.yemek});
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
//           backgroundColor: Colors.orange,
//           title: Text(widget.yemek.yemekAdi, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Image.asset("images/${widget.yemek.yemekResimAdi}"),
//               Text("${widget.yemek.yemekFiyati} \u{20BA}", style: TextStyle(color: Colors.blue, fontSize: 20),),
//               ElevatedButton(
//                 onPressed: (){
//                   print("${widget.yemek.yemekAdi} siparis verildi");
//                 },
//                 child: Text("Siparis Ver", style: TextStyle(color: Colors.white),),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.orange
//                 ),
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//
//
// class Yemekler{
//   int yemekId;
//   String yemekAdi;
//   String yemekResimAdi;
//   double yemekFiyati;
//
//   Yemekler(this.yemekId, this.yemekAdi, this.yemekResimAdi, this.yemekFiyati);
// }
//endregion

// Film Uygulamasi
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
//   Future<List<Filmler>> filmleriGetir() async{
//     var filmListesi = <Filmler>[];
//     var f1 = Filmler(filmId: 1 ,filmAdi: "Anadoluda", filmResimAdi: "jobs.jpeg", filmFiyat: 11.99);
//     var f2 = Filmler(filmId: 2 ,filmAdi: "Django", filmResimAdi: "jobs.jpeg", filmFiyat: 12.99);
//     var f3 = Filmler(filmId: 3 ,filmAdi: "Inception", filmResimAdi: "jobs.jpeg", filmFiyat: 13.99);
//     var f4 = Filmler(filmId: 4 ,filmAdi: "Interstellar", filmResimAdi: "jobs.jpeg", filmFiyat: 14.99);
//     var f5 = Filmler(filmId: 5 ,filmAdi: "The Hateful Eight", filmResimAdi: "jobs.jpeg", filmFiyat: 25.99);
//     var f6 = Filmler(filmId: 6 ,filmAdi: "The Pianist", filmResimAdi: "jobs.jpeg", filmFiyat: 16.99);
//
//     filmListesi.add(f1);
//     filmListesi.add(f2);
//     filmListesi.add(f3);
//     filmListesi.add(f4);
//     filmListesi.add(f5);
//     filmListesi.add(f6);
//
//     return filmListesi;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.deepPurple,
//           centerTitle: true,
//           title: Text("Filmler", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),),
//         ),
//         body: FutureBuilder<List<Filmler>>(
//             future: filmleriGetir(),
//             builder: (context, snapshot){
//               if(snapshot.hasData){
//                 var filmlerListesi = snapshot.data;
//                 return GridView.builder(
//                   itemCount: filmlerListesi!.length,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: 2 / 3.5,
//                   ),
//                   itemBuilder: (context, indeks){
//                     var film = filmlerListesi[indeks];
//
//                     return GestureDetector(
//                       onTap: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(film: film)));
//                       },
//                       child: Card(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Image.asset("images/${film.filmResimAdi}"),
//                             ),
//                             Text(film.filmAdi, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
//                             Text("${film.filmFiyat} \u{20BA}", style: TextStyle(color: Colors.deepPurple, fontSize: 15.0, fontWeight: FontWeight.bold),),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               }else{
//                 return Center();
//               }
//             }
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
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.deepPurple,
//           title: Text("${widget.film.filmAdi}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Image.asset("images/${widget.film.filmResimAdi}"),
//               Text("${widget.film.filmFiyat} \u{20BA}", style: TextStyle(color: Colors.deepPurple, fontSize: 20.0, fontWeight: FontWeight.bold),),
//               SizedBox(
//                 height: 50,
//                 width: 200,
//                 child: ElevatedButton(
//                     onPressed: (){
//                       print("${widget.film.filmAdi} kiralandi");
//                     },
//                     child: Text("Kirala", style: TextStyle(color: Colors.deepPurple, fontSize: 16.0, fontWeight: FontWeight.bold),),
//                 ),
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//
//
// class Filmler{
//   int filmId;
//   String filmAdi;
//   String filmResimAdi;
//   double filmFiyat;
//
//   Filmler({required this.filmId,required this.filmAdi,required this.filmResimAdi,required this.filmFiyat});
// }
//endregion

//TabBarView Kullanimi
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
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.red,
//             title: Text("Baslik"),
//             bottom: TabBar(
//               tabs: [
//                 Tab(text: "Bir",),
//                 Tab(text: "Iki", icon: Icon(Icons.looks_two, ),),
//                 Tab(text: "Uc", icon: Icon(Icons.looks_3, color: Colors.cyanAccent,),),
//               ],
//               indicatorColor: Colors.white,
//               labelColor: Colors.green,
//               unselectedLabelColor: Colors.white,
//             ),
//           ),
//           body: TabBarView(
//             children: [
//               Sayfa1(),
//               Sayfa2(),
//               Sayfa3()
//             ],
//           )
//       ),
//     );
//   }
// }
//
// class Sayfa1 extends StatefulWidget {
//   const Sayfa1({super.key});
//
//   @override
//   State<Sayfa1> createState() => _Sayfa1State();
// }
//
// class _Sayfa1State extends State<Sayfa1> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("Sayfa Bir", style: TextStyle(color: Colors.black54, fontSize: 30.0),),
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
//     return Center(
//       child: Text("Sayfa Iki", style: TextStyle(color: Colors.black54, fontSize: 30.0),),
//     );
//   }
// }
//
// class Sayfa3 extends StatefulWidget {
//   const Sayfa3({super.key});
//
//   @override
//   State<Sayfa3> createState() => _Sayfa3State();
// }
//
// class _Sayfa3State extends State<Sayfa3> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("Sayfa Uc", style: TextStyle(color: Colors.black54, fontSize: 30.0),),
//     );
//   }
// }

//endregion

// BottomNavigationBar Kullanimi
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
//   var sayfaListesi = [Sayfa1(), Sayfa2(), Sayfa3()];
//   int secilenIndeks = 0;
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black54,
//         title: Text("Title", style: TextStyle(color: Colors.white),),
//         centerTitle: true,
//       ),
//       body: sayfaListesi[secilenIndeks],
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.looks_one),
//             label: "Bir"
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.looks_two),
//             label: "Iki"
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.looks_3),
//             label: "Uc"
//           )
//         ],
//         backgroundColor: Colors.black54,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.black,
//         currentIndex: secilenIndeks,
//         onTap: (indeks){
//           setState(() {
//             secilenIndeks = indeks;
//           });
//         },
//       ),
//     );
//   }
// }
//
// class Sayfa1 extends StatefulWidget {
//   const Sayfa1({super.key});
//
//   @override
//   State<Sayfa1> createState() => _Sayfa1State();
// }
//
// class _Sayfa1State extends State<Sayfa1> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("Sayfa 1", style: TextStyle(color: Colors.black54, fontSize: 35.0, fontWeight: FontWeight.bold),),
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
//     return Center(
//       child: Text("Sayfa 2", style: TextStyle(color: Colors.black54, fontSize: 35.0, fontWeight: FontWeight.bold),),
//     );
//   }
// }
//
// class Sayfa3 extends StatefulWidget {
//   const Sayfa3({super.key});
//
//   @override
//   State<Sayfa3> createState() => _Sayfa3State();
// }
//
// class _Sayfa3State extends State<Sayfa3> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("Sayfa 3", style: TextStyle(color: Colors.black54, fontSize: 35.0, fontWeight: FontWeight.bold),),
//     );
//   }
// }
//endregion

// Drawer Kullanimi
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
//   var sayfaListesi = [SayfaBir(), SayfaIki(), SayfaUc()];
//
//   int secilenIndeks = 0;
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black54,
//         title: Text("Baslik"),
//       ),
//       body: sayfaListesi[secilenIndeks],
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero, //basligin yukariya yapismasini saglar
//           children: [
//             DrawerHeader(
//               child: Text("Baslik Tasarimi", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),),
//               decoration: BoxDecoration(
//                 color: Colors.black54
//               ),
//             ),
//             ListTile(
//               title: Text("Sayfa bir"),
//               onTap: (){
//                 setState(() {
//                   secilenIndeks = 0;
//                 });
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: Text("Sayfa iki"),
//               onTap: (){
//                 setState(() {
//                   secilenIndeks = 1;
//                 });
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: Text("Sayfa uc"),
//               onTap: (){
//                 setState(() {
//                   secilenIndeks = 2;
//                 });
//                 Navigator.pop(context);
//               },
//             )
//           ],
//         ),
//       ),
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
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("Sayfa bir", style: TextStyle(color: Colors.red, fontSize: 45.0),),
//     );
//   }
// }
//
// class SayfaIki extends StatefulWidget {
//   const SayfaIki({super.key});
//
//   @override
//   State<SayfaIki> createState() => _SayfaIkiState();
// }
//
// class _SayfaIkiState extends State<SayfaIki> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("Sayfa iki", style: TextStyle(color: Colors.red,  fontSize: 45.0),),
//     );
//   }
// }
//
// class SayfaUc extends StatefulWidget {
//   const SayfaUc({super.key});
//
//   @override
//   State<SayfaUc> createState() => _SayfaUcState();
// }
//
// class _SayfaUcState extends State<SayfaUc> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("Sayfa uc", style: TextStyle(color: Colors.red,  fontSize: 45.0),),
//     );
//   }
// }
//endregion

