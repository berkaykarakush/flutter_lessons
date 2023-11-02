// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// void main() {
//   runApp(const MyApp());
// }

// Text - Button - TextField Kullanimi
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
//     var tfController = TextEditingController();
//     String alinanVeri = "";
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextField(
//                 controller: tfController,
//                 decoration: InputDecoration(
//                   hintText: "Yazi giriniz"
//                 ),
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       alinanVeri = tfController.text;
//                     });
//                   },
//                   child: Text("Veriyi Al")
//               ),
//               Text("Gelen Veri :$alinanVeri");
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// ElevatedButton ve TextButton
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
//     var tfController = TextEditingController();
//     String alinanVeri = "";
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text("Baslik"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//              ElevatedButton(
//                onPressed: () {
//
//                },
//                child: Text("Elevated Button", style: TextStyle(color: Colors.white),),
//                style: ElevatedButton.styleFrom(
//                  backgroundColor: Colors.teal,
//                  shadowColor: Colors.black,
//                  elevation: 10,
//                  shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.all(Radius.circular(10)),
//                    side: BorderSide(color: Colors.red)
//                  )
//                ),
//              ),
//               TextButton(
//                 onPressed: () {
//
//                 },
//                 child: Text("Text Button", style: TextStyle(color: Colors.white),),
//                 style: TextButton.styleFrom(
//                   backgroundColor: Colors.teal,
//                   shadowColor: Colors.black,
//                   elevation: 10,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(10)),
//                     side: BorderSide(color: Colors.red)
//                   )
//                 ),
//               )
//         ],
//       ),
//     )
//     );
//   }
// }
//endregion

// Text Ozellestirme
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
//     var tfController = TextEditingController();
//     String alinanVeri = "";
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Text Button",
//                 style: TextStyle(
//                     color: Colors.white,
//                     backgroundColor: Colors.green,
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold
//                 ),
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// TextField Ozellesitrme
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
//     var tfController = TextEditingController();
//     String alinanVeri = "";
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextField(
//                 controller: tfController,
//                 obscureText: true,
//                 keyboardType: TextInputType.datetime,
//                 textAlign: TextAlign.center,
//                 maxLength: 4,
//                 style: TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                   hintText: "Yazi giriniz",
//                   hintStyle: TextStyle(
//                     color: Colors.yellow,
//                     fontSize: 20
//                   ),
//                   labelText: "Email",
//                   labelStyle: TextStyle(
//                     color: Colors.red,
//                     fontSize: 20
//                   ),
//                   filled: true,
//                   fillColor: Colors.green,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(10.0))
//                   ),
//                   prefixIcon: Icon(Icons.print),
//                 ),
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Floating Action Button Kullanimi
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
//     var tfController = TextEditingController();
//     String alinanVeri = "";
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextField(
//                 controller: tfController,
//                 obscureText: true,
//                 keyboardType: TextInputType.datetime,
//                 textAlign: TextAlign.center,
//                 maxLength: 4,
//                 style: TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                   hintText: "Yazi giriniz",
//                   hintStyle: TextStyle(
//                       color: Colors.yellow,
//                       fontSize: 20
//                   ),
//                   labelText: "Email",
//                   labelStyle: TextStyle(
//                       color: Colors.red,
//                       fontSize: 20
//                   ),
//                   filled: true,
//                   fillColor: Colors.green,
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(10.0))
//                   ),
//                   prefixIcon: Icon(Icons.print),
//                 ),
//               ),
//               FloatingActionButton(
//                 onPressed: (){
//                   print("Fab 2 tiklandi");
//                 },
//                 tooltip: "Fab2",
//                 child: Icon(Icons.print),
//                 backgroundColor: Colors.green,
//                 foregroundColor: Colors.white,
//               )
//             ],
//           ),
//         ),
//       // FloatingActionButton
//       //region
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: (){
//       //     print("Fab tiklandi");
//       //   },
//       //   tooltip: "Fab1",
//       //   child: Icon(Icons.audiotrack),
//       //   backgroundColor: Colors.deepPurple,
//       //   foregroundColor: Colors.pinkAccent,
//       // ),
//       //endregion
//
//       // FloatingActionButton.etended
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: (){
//           print("Fab tiklandi");
//         },
//         label: Text("Fab"),
//         tooltip: "Fab1",
//         icon: Icon(Icons.audiotrack),
//         backgroundColor: Colors.deepPurple,
//         foregroundColor: Colors.pinkAccent,
//       ),
//     );
//   }
// }
//endregion

// Swich Widget Kullanimi
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
//     bool switchKontrol = false;
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text("Baslik"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Switch(
//                 value: switchKontrol,
//                 activeTrackColor: Colors.lightGreenAccent,
//                 activeColor: Colors.green,
//                 inactiveTrackColor: Colors.black,
//                 inactiveThumbColor: Colors.black54,
//                 onChanged: (veri){
//                   setState(() {
//                     switchKontrol = veri;
//                   });
//                   print("Swich: $veri");
//                 }
//             ),
//             ElevatedButton(
//                 onPressed: (){
//                   print("Switch Durum: $switchKontrol");
//                 },
//                 child: Text("Goster")
//             )
//           ],
//         ),
//       )
//     );
//   }
// }
//endregion

// ToggleButtons Kullanimi
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
//   var toggleDurumlar = [false, true, false];
//   int secilenToggleIndeks = 0;
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
//             children: [
//               ToggleButtons(
//                 children: [
//                   Icon(Icons.looks_one),
//                   Icon(Icons.looks_two),
//                   Icon(Icons.looks_3)
//                 ],
//                 isSelected: toggleDurumlar,
//                 color: Colors.pink,
//                 selectedColor: Colors.deepPurple,
//                 fillColor: Colors.yellow,
//                 onPressed: (int secilenIndeks){
//                     secilenToggleIndeks = secilenIndeks;
//                     print("${secilenToggleIndeks+1}. toggle secildi");
//
//                     setState(() {
//                       toggleDurumlar[secilenIndeks] = !toggleDurumlar[secilenIndeks];
//                     });
//                 },
//               ),
//               ElevatedButton(
//                   onPressed: (){
//                     print("En son ${secilenToggleIndeks}. toggle secildi");
//                   },
//                   child: Text("Goster")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// CheckBox Widget Kullanimi
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
//   bool kotlinDurum = false;
//   bool dartDurum = false;
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
//             children: [
//               CheckboxListTile(
//                 title: Text("Kotlin"),
//                 controlAffinity: ListTileControlAffinity.leading,
//                 value: kotlinDurum,
//                 checkColor: Colors.red,
//                 activeColor: Colors.deepPurple,
//                 onChanged: (bool? veri){
//                   print("Kotlin secildi: $veri");
//                   setState(() {
//                     kotlinDurum = veri!;
//                   });
//                   },
//               ),
//               CheckboxListTile(
//                 title: Text("Dart"),
//                 value: dartDurum,
//                 controlAffinity: ListTileControlAffinity.leading,
//                 onChanged: (bool? veri){
//                   print("Dart secildi: $veri");
//
//                   setState(() {
//                     dartDurum = veri!;
//                   });
//                 },
//               ),
//               ElevatedButton(
//                   onPressed: (){
//                     print("Kotlin Durum: $kotlinDurum");
//                     print("Dart Durum: $dartDurum");
//                   },
//                   child: Text("Goster")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Radio Button Kullanimi
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
//     int radioDeger = 0;
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               RadioListTile(
//                   value: 1,
//                   groupValue: radioDeger,
//                   activeColor: Colors.red,
//
//                   onChanged: (int? veri ){
//                     setState(() {
//                       radioDeger = veri!;
//                     });
//                     print("Fenerbahce secildi");
//                   }
//               ),
//               RadioListTile(
//                   value: 2,
//                   groupValue: radioDeger,
//                   onChanged: (int? veri){
//                     setState(() {
//                       radioDeger = veri!;
//                     });
//                     print("Galatasaray secildi");
//                   }
//               ),
//               ElevatedButton(
//                   onPressed: (){
//                     if(radioDeger == 1){
//                       print("Button : Fenerbahce secildi");
//                     }
//
//                     if(radioDeger == 2){
//                       print("Buton: Galarasaray secildi");
//                     }
//
//                   },
//                   child: Text("Goster")
//               )
//
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// ProgressBar Kullanimi
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
//     bool progressVarGorunum = false;
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               Visibility(
//                 visible: progressVarGorunum,
//                 child: CircularProgressIndicator(
//                   valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurple),
//                 ),
//               ),
//               ElevatedButton(
//                   onPressed: (){
//                     setState(() {
//                       progressVarGorunum = true;
//                     });
//                   },
//                   child: Text("Basla")
//               ),
//               ElevatedButton(
//                 onPressed: (){
//                   setState(() {
//                     progressVarGorunum = false;
//                   });
//                 },
//                 child: Text("Dur")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Slider Kullanimi
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
//   double ilerleme = 50.0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Sonuc: ${ilerleme.toInt()}"),
//               Slider(
//                   max: 100.0,
//                   min: 0.0,
//                   activeColor: Colors.indigo,
//                   inactiveColor: Colors.red,
//                   value: ilerleme,
//                   onChanged: (double? i){
//                     setState(() {
//                       ilerleme = i!;
//                     });
//                   },
//               ),
//               ElevatedButton(
//                   onPressed: (){
//                     print("Ilerleme: ${ilerleme.toInt()}");
//                   },
//                   child: Text("Goster")
//               )
//               ],
//               )
//           ),
//     );
//   }
// }
//endregion

// Webview Kullanimi
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
//   late WebViewController controller;
//
//   @override
//   void initState() {
//     super.initState();
//     controller = WebViewController()
//     ..setJavaScriptMode(JavaScriptMode.unrestricted)
//     ..loadRequest(Uri.parse("https://flutter.dev/"));
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
//         body: WebViewWidget(controller: controller,)
//     );
//   }
// }
//endregion

// Image.asset() - Lokal resim
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
//     String resimAdi = "gates.jpeg";
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset('images/$resimAdi'),
//               ElevatedButton(
//                   onPressed: (){
//                     setState(() {
//                       resimAdi = "gates.jpeg";
//                       print("resim 1");
//                     });
//                   },
//                   child: Text("resim 1")
//               ),
//               ElevatedButton(
//                   onPressed: (){
//                     setState(() {
//                       resimAdi = "jobs.jpeg";
//                       print("resim 2");
//                     });
//                   },
//                   child: Text("Resim 2")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion


// Image.network() - Internet erisim
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
//   String resimAdi = "200";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.network("https://picsum.photos/$resimAdi"),
//               ElevatedButton(
//                   onPressed: (){
//                     setState(() {
//                       resimAdi = "201";
//                     });
//                   },
//                   child: Text("Resim 1")
//               ),
//               ElevatedButton(
//                   onPressed: (){
//                     setState(() {
//                       resimAdi = "202";
//                     });
//                   },
//                   child: Text("Resim 2")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// FadeInImage.assetNetwork() - Internet resim
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
//   String resimAdi = "200";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               FadeInImage.assetNetwork(
//                   placeholder: "images/food.jpeg",
//                   image: "https://picsum.photos/$resimAdi"
//               ),
//               ElevatedButton(
//                   onPressed: (){
//                     setState(() {
//                       resimAdi = "201";
//                     });
//                   },
//                   child: Text("Resim 1")
//               ),
//               ElevatedButton(
//                   onPressed: (){
//                     setState(() {
//                       resimAdi = "202";
//                     });
//                   },
//                   child: Text("Resim 2")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// ScrollView Kullanimi
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
//   String resimAdi = "200";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   color: Colors.red,
//                   width: 300,
//                   height: 500,
//                 ),
//                 Container(
//                   width: 300,
//                   height: 500,
//                   color: Colors.indigo,
//                 ),
//                 Container(
//                   width: 300,
//                   height: 500,
//                   color: Colors.pink,
//                 )
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }
//endregion

// TimePicker Kullanimi
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
//   var tfTarih = TextEditingController();
//   var tfSaat = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextField(
//                   controller: tfSaat,
//                   decoration: InputDecoration(
//                     hintText: "Saat giriniz"
//                   ),
//                   onTap: (){
//                     showTimePicker(
//                         context: context,
//                         initialTime: TimeOfDay.fromDateTime(DateTime.now()),
//                     ).then((alinanSaat) {
//                       setState(() {
//                         tfSaat.text = "${alinanSaat!.hour}:${alinanSaat!.minute}";
//                       });
//                     });
//                   },
//                 ),
//                 TextField(
//                   controller: tfTarih,
//                   decoration: InputDecoration(
//                       hintText: "Tarih giriniz"
//                   ),
//                   onTap: (){
//                     showDatePicker(
//                       context: context,
//                       initialDate: DateTime.now(),
//                       firstDate: DateTime(2000),
//                       lastDate: DateTime(2050)
//                     ).then((alinanTarih) {
//                       setState(() {
//                         tfTarih.text = "${alinanTarih!.day}/${alinanTarih!.month}/${alinanTarih!.year}";
//                       });
//                     });
//                   },
//                 )
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }
//endregion

// DropDowmButton Kullanimi
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
//   var ulkeler = <String>[];
//   String secilenUlke = "Turkey";
//
//   @override
//   void initState() {
//     super.initState();
//     ulkeler.addAll({"Turkey","Italy","Netherlands","USA","Australia","Germany","Portugal","Argentina","China","Russian"});
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
//             children: [
//               DropdownButton<String>(
//                 value: secilenUlke,
//                 items: ulkeler.map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text("Ulke: $value", style: TextStyle(color: Colors.deepPurple, fontSize: 20.0),),
//                   );
//                 }).toList(),
//                 icon: Icon(Icons.arrow_drop_down),
//                 onChanged: (String? secilenVeri){
//                   setState(() {
//                     secilenUlke = secilenVeri!;
//                   });
//                 },
//
//               ),
//               Text("Selected Country: $secilenUlke"),
//               ElevatedButton(
//                   onPressed: (){
//                     print("Last selected country: $secilenUlke");
//                   },
//                   child: Text("Show")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Gesture Detector
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
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               GestureDetector(
//                 onTap: (){
//                   print("Container tiklanildi");
//                 },
//                 onDoubleTap: (){
//                   print("Container cift tiklanildi");
//                 },
//                 onLongPress: (){
//                   print("Container uzerine uzun basildi");
//                 },
//                 child: Container(width: 200, height: 200, color: Colors.red,)
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Sayi Tahmun Uygulamasi
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
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: Text("Anasayfa"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text("Tahmin Oyunu", style: TextStyle(color: Colors.black54, fontSize: 36.0),),
//               Image.asset("images/dice.png"),
//               SizedBox(
//                 width: 200,
//                 height: 50,
//                 child: ElevatedButton(
//                   onPressed: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => TahminEkrani()));
//                   },
//                   child: Text("Oyun Basla"),
//                   style: ElevatedButton.styleFrom(
//                     foregroundColor: Colors.white,
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
// class TahminEkrani extends StatefulWidget {
//   const TahminEkrani({super.key});
//
//   @override
//   State<TahminEkrani> createState() => _TahminEkraniState();
// }
//
// class _TahminEkraniState extends State<TahminEkrani> {
//
//   var tfTahmin = TextEditingController();
//   int rasgeleSayi = 0;
//   int kalanHak = 5;
//   String yonlendirme = "";
//
//   @override
//   void initState() {
//     super.initState();
//     rasgeleSayi = Random().nextInt(100);// 0 - 100
//     print("Rastgele Sayi: $rasgeleSayi");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: Text("Tahmin Ekrani"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text("Kalan Hak: $kalanHak", style: TextStyle(color: Colors.pink, fontSize: 30.0),),
//               Text("Yardim: $yonlendirme", style: TextStyle(color: Colors.black54, fontSize: 24.0),),
//               Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: TextField(
//                   controller: tfTahmin,
//                   keyboardType: TextInputType.number,
//                   textAlign: TextAlign.center,
//                   decoration: InputDecoration(
//                     labelText: "Tahmin",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(10.0))
//                     )
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 200,
//                 height: 50,
//                 child: ElevatedButton(
//                   onPressed: (){
//
//                     setState(() {
//                       kalanHak -= 1;
//                     });
//                     int tahmin = int.parse(tfTahmin.text);
//                     if(tahmin == rasgeleSayi){
//                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SonucEkrani(sonuc: true,)));
//                       return;
//                     }
//
//                     if(tahmin > rasgeleSayi){
//                       setState(() {
//                         yonlendirme = "Tahmini azalt";
//                       });
//                     }
//
//                     if(tahmin < rasgeleSayi){
//                       setState(() {
//                         yonlendirme = "Tahmini arttir";
//                       });
//                     }
//
//                     if(kalanHak == 0){
//                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SonucEkrani(sonuc: false,)));
//                     }
//
//                     tfTahmin.text = "";
//
//                   },
//                   child: Text("Tahmin et"),
//                   style: ElevatedButton.styleFrom(
//                       foregroundColor: Colors.white,
//                       backgroundColor: Colors.pink
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
// class SonucEkrani extends StatefulWidget {
//   bool sonuc;
//   SonucEkrani({required this.sonuc});
//
//   @override
//   State<SonucEkrani> createState() => _SonucEkraniState();
// }
//
// class _SonucEkraniState extends State<SonucEkrani> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: Text("Sonuc Ekrani"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               widget.sonuc ? Image.asset("images/happy.jpeg", width: 200, height: 200,) : Image.asset("images/sad.jpeg",width: 200, height: 200,),
//               Text(widget.sonuc ? "Kazandiniz" : "Kaybettiniz", style: TextStyle(color: Colors.black54, fontSize: 36.0),),
//               SizedBox(
//                 width: 200,
//                 height: 50,
//                 child: ElevatedButton(
//                   onPressed: (){
//                     Navigator.pop(context);
//                   },
//                   child: Text("Tekrar Dene"),
//                   style: ElevatedButton.styleFrom(
//                       foregroundColor: Colors.white,
//                       backgroundColor: Colors.blue
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
