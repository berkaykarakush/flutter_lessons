// import 'dart:math';
// import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

// Animasyon
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
// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//
//   late AnimationController animationController;
//
//   @override
//   void initState() {
//     super.initState();
//     // 3s
//     animationController = AnimationController(duration: Duration(milliseconds: 3000), vsync: this);
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     animationController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       backgroundColor: Colors.deepPurple,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Icon(Icons.cloud, size: 124, color: Colors.white,),
//             Text("Hava Durumu", style: TextStyle(fontSize: 40, color: Colors.white),),
//             SizedBox(
//               width: 250,
//               height: 50,
//               child: ElevatedButton(
//                 onPressed: (){
//
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.orange
//                 ),
//                 child: Text("Basla", style: TextStyle(color: Colors.white, fontSize: 18),)
//               ),
//             )
//           ],
//         ),
//       )
//     );
//   }
// }
//endregion

// Alhpa Animasyon
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
// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//
//   late AnimationController animationController;
//   late Animation<double> alpaAnimasyonDegerleri;
//
//
//   @override
//   void initState() {
//     super.initState();
//     // 3s
//     animationController = AnimationController(duration: Duration(milliseconds: 3000), vsync: this);
//     alpaAnimasyonDegerleri = Tween(begin: 1.0, end: 0.0).animate(animationController)..
//     addListener(() {
//       setState(() { });
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     animationController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         backgroundColor: Colors.deepPurple,
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Opacity(
//                 opacity: alpaAnimasyonDegerleri.value,
//                 child: Icon(Icons.cloud, size: 124, color: Colors.white,)
//               ),
//               Text("Hava Durumu", style: TextStyle(fontSize: 40, color: Colors.white),),
//               SizedBox(
//                 width: 250,
//                 height: 50,
//                 child: ElevatedButton(
//                     onPressed: (){
//                       animationController.forward();
//                     },
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.orange
//                     ),
//                     child: Text("Basla", style: TextStyle(color: Colors.white, fontSize: 18),)
//                 ),
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Scale Animasyon
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
// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//
//   late AnimationController animationController;
//   late Animation<double> scaleAnimasyonDegerleri;
//
//   @override
//   void initState() {
//     super.initState();
//     // 3s
//     animationController = AnimationController(duration: Duration(milliseconds: 3000), vsync: this);
//     scaleAnimasyonDegerleri = Tween(begin: 128.0, end: 258.0).animate(animationController)..
//     addListener(() {
//       setState(() { });
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     animationController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         backgroundColor: Colors.deepPurple,
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Icon(Icons.cloud, size: scaleAnimasyonDegerleri.value, color: Colors.white),
//               Text("Hava Durumu", style: TextStyle(fontSize: 40, color: Colors.white),),
//               SizedBox(
//                 width: 250,
//                 height: 50,
//                 child: ElevatedButton(
//                     onPressed: (){
//
//                     },
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.orange
//                     ),
//                     child: Text("Basla", style: TextStyle(color: Colors.white, fontSize: 18),)
//                 ),
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Rotate Animasyon
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
// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//
//   late AnimationController animationController;
//   late Animation<double> rotateAnimasyonDegerleri;
//
//   @override
//   void initState() {
//     super.initState();
//     // 3s
//     animationController = AnimationController(duration: Duration(milliseconds: 3000), vsync: this);
//     rotateAnimasyonDegerleri = Tween(begin: 0.0, end: pi/2).animate(animationController)..
//       addListener(() {
//       setState(() { });
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     animationController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         backgroundColor: Colors.deepPurple,
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Icon(Icons.cloud, size: 124, color: Colors.white,),
//               Transform.rotate(
//                 angle: rotateAnimasyonDegerleri.value,
//                 child: Text("Hava Durumu", style: TextStyle(fontSize: 40, color: Colors.white),)),
//               SizedBox(
//                 width: 250,
//                 height: 50,
//                 child: ElevatedButton(
//                     onPressed: (){
//                       animationController.forward();
//                     },
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.orange
//                     ),
//                     child: Text("Basla", style: TextStyle(color: Colors.white, fontSize: 18),)
//                 ),
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Translate Animasyon
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
// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//
//   late AnimationController animationController;
//   late Animation<double> translateAnimasyonDegerleri;
//
//   @override
//   void initState() {
//     super.initState();
//     // 3s
//     animationController = AnimationController(duration: Duration(milliseconds: 3000), vsync: this);
//     translateAnimasyonDegerleri = Tween(begin: 0.0, end: 50.0).animate(animationController)..
//     addListener(() {
//       setState(() { });
//     });
//
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     animationController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         backgroundColor: Colors.deepPurple,
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Icon(Icons.cloud, size: 124, color: Colors.white,),
//               Transform.translate(
//                 offset: Offset(0.0, translateAnimasyonDegerleri.value),
//                 child: Text("Hava Durumu", style: TextStyle(fontSize: 40, color: Colors.white),)),
//               SizedBox(
//                 width: 250,
//                 height: 50,
//                 child: ElevatedButton(
//                     onPressed: (){
//                       animationController.forward();
//                     },
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.orange
//                     ),
//                     child: Text("Basla", style: TextStyle(color: Colors.white, fontSize: 18),)
//                 ),
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Diger Animasyon Ozellikleri
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
// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//
//   late AnimationController animationController;
//   late Animation<double> translateAnimasyonDegerleri;
//
//   @override
//   void initState() {
//     super.initState();
//     // 3s
//     animationController = AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
//     translateAnimasyonDegerleri = Tween(begin: 0.0, end: 25.0).animate(CurvedAnimation(parent: animationController, curve: Curves.easeOutSine))..
//     addListener(() {
//       setState(() { });
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     animationController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         backgroundColor: Colors.deepPurple,
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Icon(Icons.cloud, size: 124, color: Colors.white,),
//               Transform.translate(
//                   offset: Offset(0.0, translateAnimasyonDegerleri.value),
//                   child: Text("Hava Durumu", style: TextStyle(fontSize: 40, color: Colors.white),)),
//               SizedBox(
//                 width: 250,
//                 height: 50,
//                 child: ElevatedButton(
//                     onPressed: (){
//                       animationController.repeat(reverse: true);
//                     },
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.orange
//                     ),
//                     child: Text("Basla", style: TextStyle(color: Colors.white, fontSize: 18),)
//                 ),
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Coklu Animasyon olusturma
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
// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//
//   late AnimationController animationController;
//   late Animation<double> translateAnimasyonDegerleri;
//   late Animation<double> scaleAnimasyonDegerleri;
//
//   @override
//   void initState() {
//     super.initState();
//     // 3s
//     animationController = AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
//     translateAnimasyonDegerleri = Tween(begin: 0.0, end: 25.0).animate(CurvedAnimation(parent: animationController, curve: Curves.easeOutSine))
//       ..addListener(() {
//       setState(() { });
//     });
//
//     scaleAnimasyonDegerleri = Tween(begin: 35.0, end: 50.0).animate(animationController)
//       ..addListener(() {
//       setState(() { });
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     animationController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         backgroundColor: Colors.deepPurple,
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Icon(Icons.cloud, size: 124, color: Colors.white,),
//               Transform.translate(
//                   offset: Offset(0.0, translateAnimasyonDegerleri.value),
//                   child: Text("Hava Durumu", style: TextStyle(fontSize: scaleAnimasyonDegerleri.value, color: Colors.white),)),
//               SizedBox(
//                 width: 250,
//                 height: 50,
//                 child: ElevatedButton(
//                     onPressed: (){
//                       animationController.repeat(reverse: true);
//                     },
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.orange
//                     ),
//                     child: Text("Basla", style: TextStyle(color: Colors.white, fontSize: 18),)
//                 ),
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Animasyonlu fab uygulamasi
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
// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//   late AnimationController animationController;
//   late Animation<double> scaleAnimasyonDegerleri;
//   late Animation<double> rotateAnimasyonDegerleri;
//   bool fabDurum = false;
//
//   @override
//   void initState() {
//     super.initState();
//     // 2s
//     animationController = AnimationController(duration: Duration(milliseconds: 200), vsync: this);
//
//     scaleAnimasyonDegerleri = Tween(begin: 0.0, end: 1.0).animate(animationController)
//     ..addListener(() {
//       setState(() { });
//     });
//
//     rotateAnimasyonDegerleri = Tween(begin: 0.0, end: pi/4).animate(animationController)
//       ..addListener(() {
//         setState(() { });
//       });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     animationController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//
//           ],
//         ),
//         ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Transform.scale(
//             scale: scaleAnimasyonDegerleri.value,
//             child: FloatingActionButton(
//               onPressed: (){
//
//                 print("Fab 1 tiklandi");
//               },
//               tooltip: 'Fab 1',
//               child: Icon(Icons.add),
//               backgroundColor: Colors.red,
//             ),
//           ),
//           Transform.scale(
//             scale: scaleAnimasyonDegerleri.value,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: FloatingActionButton(
//                 onPressed: (){
//                 print("Fab 2 tiklandi");
//                 },
//                 tooltip: 'Fab 2',
//                 child: Icon(Icons.camera),
//                 backgroundColor: Colors.orange,
//               ),
//             ),
//           ),
//           Transform.rotate(
//             angle: rotateAnimasyonDegerleri.value,
//             child: FloatingActionButton(
//               onPressed: (){
//                 print("Fab Main tiklandi");
//                 if(fabDurum){
//                   animationController.reverse();
//                   fabDurum = false;
//                 }else{
//                   animationController.forward();
//                   fabDurum = true;
//                 }
//               },
//               tooltip: 'Fab 3',
//               child: Icon(Icons.photo),
//               backgroundColor: Colors.yellow,
//             ),
//           ),
//         ],
//       )
//     );
//   }
// }
//endregion