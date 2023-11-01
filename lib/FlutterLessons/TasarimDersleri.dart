// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// Row Kullanimi
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Row(
//           children: [
//             Container(width: 80, height: 80, color: Colors.red,),
//             Container(width: 50, height: 50, color: Colors.blue,),
//             Container(width: 100, height: 100, color: Colors.green,)
//           ],
//         )
//     );
//   }
// }
//endregion

// Column Kullanimi
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
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
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text("Baslik"),
//       ),
//       body: Column(
//         children: [
//           Text("Merhaba"),
//           Container(width: 100, height: 90, color: Colors.red,),
//           Container(width: 100, height: 90, color: Colors.blue,),
//           Container(width: 100, height: 90, color: Colors.green,)
//         ],
//       )
//     );
//   }
// }
//endregion

// Stack Kullanimi
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
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
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Stack(
//           children: [
//             Container(width: 100, height: 90, color: Colors.red,),
//             Container(width: 100, height: 90, color: Colors.blue,),
//             Container(width: 100, height: 90, color: Colors.green,),
//             Text("Merhaba")
//           ],
//         )
//     );
//   }
// }
//endregion

// Karisik kullanim
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
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
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         // body: Row(
//         //   children: [
//         //     Container(width: 100, height: 100, color: Colors.red,),
//         //     Container(width: 100, height: 100, color: Colors.blue,),
//         //     Column(
//         //       children: [
//         //         Container(width: 100, height: 100, color: Colors.green,),
//         //         Container(width: 100, height: 100, color: Colors.yellow,)
//         //       ],
//         //     )
//         //   ],
//         // )
//       //   body: Column(
//       //   children: [
//       //     Container(width: 100, height: 100, color: Colors.red,),
//       //     Container(width: 100, height: 100, color: Colors.blue,),
//       //     Row(
//       //       children: [
//       //         Container(width: 100, height: 100, color: Colors.green,),
//       //         Container(width: 100, height: 100, color: Colors.yellow,)
//       //     ],
//       //   )
//       // ],
//       // )
//         body: Stack(
//           children: [
//             Container(width: 400, height: 400, color: Colors.red,),
//             Row(
//               children: [
//                 Container(width: 100, height: 100, color: Colors.white,),
//                 Container(width: 100, height: 100, color: Colors.blue,),
//                 Column(
//                   children: [
//                     Container(width: 100, height: 100, color: Colors.green,),
//                     Container(width: 100, height: 100, color: Colors.yellow,)
//                   ],
//                 )
//               ],
//             )
//           ],
//         )
//     );
//   }
// }
//endregion

// Container Kullanimi
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Row(
//           children: [
//             Container(
//               margin: const EdgeInsets.only(top: 30.0, left: 5.0),
//               width: 80,
//               height: 80,
//               child: Text("Merhaba"),
//               decoration: BoxDecoration(
//                 color: Colors.red,
//                 border: Border.all(
//                   color: Colors.blue,
//                   width: 3.0
//                 ),
//                 borderRadius: BorderRadius.all(Radius.circular(10.0))
//               ),
//             )
//           ],
//         )
//     );
//   }
// }
//endregion

// MainAxisAlignemnt Ozelligi
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(width: 100, height: 100, color: Colors.red,),
//             Container(width: 100, height: 100, color: Colors.blue,),
//             Container(width: 100, height: 100, color: Colors.green,)
//           ],
//         )
//     );
//   }
// }
//endregion

// CrossAxisAlignment Ozelligi
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(width: 100, height: 100, color: Colors.red,),
//             Container(width: 100, height: 100, color: Colors.blue,),
//             Container(width: 100, height: 100, color: Colors.green,)
//           ],
//         )
//     );
//   }
// }
//endregion

// MainAxisSize Ozelligi
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(width: 100, height: 100, color: Colors.red,),
//             Container(width: 100, height: 100, color: Colors.blue,),
//             Container(width: 100, height: 100, color: Colors.green,)
//           ],
//         )
//     );
//   }
// }
//endregion

// Center Ozelligi
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(width: 100, height: 100, color: Colors.red,),
//             Container(width: 100, height: 100, color: Colors.blue,),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.green,
//               child: Center(
//                   child: Text("Merhaba")),
//             )
//           ],
//         )
//     );
//   }
// }
//endregion

// Align Ozelligi
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Row(
//           children: [
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.red,
//               child: Align(
//                 alignment: Alignment.centerRight,
//                 child: Text("Merhaba")
//               ),
//             )
//           ],
//         )
//     );
//   }
// }
//endregion

// SizedBox Ozelligi
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Row(
//           children: [
//             Container(width: 100,height: 100,color: Colors.red,),
//             SizedBox(width: 100,height: 200,),
//             SizedBox(
//               width: 200,
//               height: 400,
//               child: Container(width: 100,height: 100,color: Colors.blue,),
//             )
//           ],
//         )
//     );
//   }
// }
//endregion

// Spacer Ozelligi
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Column(
//           children: [
//             Container(width: 100,height: 100,color: Colors.red,),
//             Spacer(flex: 30,),
//             Container(width: 100,height: 100,color: Colors.green,),
//             Spacer(flex: 30,),
//             Container(width: 100,height: 100,color: Colors.blue,)
//           ],
//         )
//     );
//   }
// }
//endregion

// Padding Ozelligi
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(width: 100,height: 100,color: Colors.red,),
//             ),
//             Container(width: 100,height: 100,color: Colors.green,),
//             Container(width: 100,height: 100,color: Colors.blue,)
//           ],
//         )
//     );
//   }
// }
//endregion

// Expanded Ozelligi
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Row(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Expanded(
//                 flex: 30,
//                 child: Container(width: 100,height: 100,color: Colors.red,)
//             ),
//             Expanded(
//                 flex: 70,
//                 child: Container(width: 100,height: 100,color: Colors.green,)
//             )
//           ],
//         )
//     );
//   }
// }
//endregion

// Ozellestirilmis Widget Olusturma
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
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
//               MaviKare(),
//               SizedBox(height: 20,),
//               KirmiziKare(),
//               SizedBox(height: 20,),
//               Yazi("Merhaba", 20.0)
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class MaviKare extends StatelessWidget
// {
//   @override
//   Widget build(BuildContext context) {
//     return Container(width: 50, height: 50, color: Colors.blue,);
//   }
// }
// class KirmiziKare extends StatelessWidget
// {
//   @override
//   Widget build(BuildContext context) {
//     return Container(width: 50, height: 50, color: Colors.red,);
//   }
// }
//
// class Yazi extends StatelessWidget {
//   String icerik;
//   double yaziBoyutu;
//
//   Yazi(this.icerik, this.yaziBoyutu);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(icerik, style: TextStyle(fontSize: yaziBoyutu),);
//   }
// }




//endregion

// Resim Ekleme
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
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
//               Image.asset("images/image.jpeg"),
//               Text("yemek")
//             ],
//           ),
//         )
//     );
//   }
// }

//endregion

// Coklu Ekran Destegi - Yontem 1
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: LayoutBuilder(
//           builder: (BuildContext context, BoxConstraints constratins) {
//             if(constratins.maxWidth < 600) {
//               return TelefonTasarim();
//             }
//             else {
//               return TabletTasarim();
//             }
//           },
//         )
//     );
//   }
// }
//
// class TabletTasarim extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset("images/jobs.jpeg"),
//           Text("Steve Jobs", style: TextStyle(fontSize: 30.0),)
//         ],
//       ),
//     );
//   }
// }
// class TelefonTasarim extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset("images/gates.jpeg"),
//           Text("Bill Gates", style: TextStyle(fontSize: 20.0),)
//         ],
//       ),
//     );
//   }
// }
//endregion

// Coklu Ekran Destegi - Yontem 2
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     var ekranBilgisi = MediaQuery.of(context);
//     final double ekranYuksekligi = ekranBilgisi.size.height;
//     final double ekranGenisligi = ekranBilgisi.size.width;
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(top: ekranYuksekligi / 100),
//               child: SizedBox(
//                   width: ekranGenisligi/2,
//                   height: ekranYuksekligi/5,
//                   child: Image.asset("images/gates.jpeg")),
//             ),
//             Container(width: ekranGenisligi, height: ekranYuksekligi/4, color: Colors.red),
//             Text("Merhaba",style: TextStyle(fontSize: ekranGenisligi/10),)
//           ],
//         )
//     );
//   }
// }
//endregion

// AppBar Renk Degisimi
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     var ekranBilgisi = MediaQuery.of(context);
//     final double ekranYuksekligi = ekranBilgisi.size.height;
//     final double ekranGenisligi = ekranBilgisi.size.width;
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Text("Baslik"),
//         ),
//         body: const Center()
//     );
//   }
// }
//endregion

// Uygulama - Ilham Ver
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     var ekranBilgisi = MediaQuery.of(context);
//     var ekranYuksekligi = ekranBilgisi.size.height;
//     var ekranGenisligi = ekranBilgisi.size.width;
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blueGrey,
//           title: Text("Ilham Ver"),
//         ),
//         body: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(top: ekranYuksekligi/100, bottom: ekranYuksekligi/100),
//               child: SizedBox(
//                   width: ekranGenisligi/4,
//                   child: Image.asset("images/jobs.jpeg")
//               ),
//             ),
//             Text("Steve Jobs", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold, fontSize: ekranGenisligi/25),),
//             Spacer(),
//             Padding(
//               padding: EdgeInsets.only(left: ekranGenisligi/100, right: ekranGenisligi/100),
//               child: Text("Dunyayi degistirecek insanlar, onu degistirebileceklerini dusunecek kadar cilgin olanlardir.",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontSize: ekranGenisligi/25),
//               ),
//             ),
//             Spacer(),
//             Padding(
//               padding: EdgeInsets.only(bottom: ekranYuksekligi/100),
//               child: SizedBox(
//                 width: ekranGenisligi/2,
//                 height: ekranYuksekligi/15,
//                 child: ElevatedButton(
//                   child: Text("Ilham ver", style: TextStyle(fontSize: ekranGenisligi/25),),
//                   onPressed: (){
//                     print("Ilham verildi");
//                   },
//                   style: ElevatedButton.styleFrom(
//                     foregroundColor: Colors.white, //  change text color of button
//                     backgroundColor: Colors.redAccent, // change background color of button
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         )
//     );
//   }
// }
//endregion

// Uygulama - Login Ekrani
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     var ekranBilgisi = MediaQuery.of(context);
//     var ekranYuksekligi = ekranBilgisi.size.height;
//     var ekranGenisligi = ekranBilgisi.size.width;
//
//     return Scaffold(
//         backgroundColor: Colors.deepPurple,
//         body: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(bottom: ekranYuksekligi/20),
//                   child: SizedBox(
//                       width: ekranGenisligi/4,
//                       height: ekranYuksekligi/6,
//                       child: Image.asset("images/logo.png")
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(ekranYuksekligi/30),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: "Kullanici Adi",
//                       filled: true,
//                       fillColor: Colors.white,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0))
//                       )
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(ekranYuksekligi/30),
//                   child: TextField(
//                     obscureText: true, // girilen karakterleri gizler
//                     decoration: InputDecoration(
//                         hintText: "Sifre",
//                         filled: true,
//                         fillColor: Colors.white,
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.all(Radius.circular(10.0))
//                         )
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(ekranYuksekligi / 30.0),
//                   child: SizedBox(
//                     width: ekranGenisligi / 1.2,
//                     height: ekranYuksekligi / 12,
//                     child: ElevatedButton(
//                         onPressed: (){
//                           print("Giris yapildi");
//                         },
//                         child: Text("Giris Yap", style: TextStyle(fontSize: ekranGenisligi / 25),),
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.white,
//                         foregroundColor: Colors.deepPurple
//                       ),
//                     ),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     print("Yardim calisti");
//                   },
//                   child: Text("Yardim ?",
//                     style: TextStyle(
//                       color: Colors.pink,
//                       fontWeight: FontWeight.bold,
//                       fontSize: ekranGenisligi / 30
//                     ),
//                   ),
//                 )
//               ],
//
//             ),
//           ),
//         )
//     );
//   }
// }
//endregion

// Uygulama - Yemek Tarifi
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
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     var ekranBilgisi = MediaQuery.of(context);
//     var ekranYuksekligi = ekranBilgisi.size.height;
//     var ekranGenisligi = ekranBilgisi.size.width;
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.orange,
//           title: Text("Yemek Tarifi"),
//       ),
//         body: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(
//                     width: ekranGenisligi,
//                     child: Image.asset("images/food.jpeg")
//                 ),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: SizedBox(
//                         height: ekranGenisligi / 8,
//                         child: TextButton(
//                             onPressed: () {print("Begenildi");},
//                             child: Yazi("Begen", ekranGenisligi / 25),
//                             style: TextButton.styleFrom(
//                               backgroundColor: Colors.orange // change background color of the button
//                             ),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: SizedBox(
//                         height: ekranGenisligi / 8,
//                         child: TextButton(
//                           onPressed: () {print("Yorum yapildi");},
//                           child: Yazi("Yorum Yap", ekranGenisligi / 25),
//                           style: TextButton.styleFrom(
//                               backgroundColor: Colors.deepOrangeAccent, // change background color of the button
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(ekranYuksekligi / 100),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Kofte",
//                         style: TextStyle(
//                           fontWeight:  FontWeight.bold,
//                           color: Colors.red,
//                           fontSize: ekranGenisligi / 20
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Yazi("Izgara uzerinde pisirme uygun", 20.0),
//                           Spacer(),
//                           Yazi("8 Agustos", ekranGenisligi / 25)
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(ekranYuksekligi / 100),
//                   child: Yazi("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Hendrerit dolor magna eget est lorem ipsum dolor sit amet. Ut eu sem integer vitae justo eget magna fermentum. Vivamus arcu felis bibendum ut tristique. Lectus arcu bibendum at varius. Neque convallis a cras semper auctor. Interdum velit laoreet id donec. Tincidunt dui ut ornare lectus sit amet est placerat in. Nam at lectus urna duis convallis convallis tellus. Nulla facilisi nullam vehicula ipsum a arcu. Quis hendrerit dolor magna eget. Amet consectetur adipiscing elit pellentesque habitant morbi tristique.", ekranGenisligi / 25),
//                 )
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }
//
// class Yazi extends StatelessWidget {
//   String icerik;
//   double yaziBoyutu;
//   Yazi(this.icerik, this.yaziBoyutu);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(icerik, style: TextStyle(fontSize: yaziBoyutu),);
//   }
// }

//endregion

// Uygulama - Icon Olusturma
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
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Baslik"),
//         ),
//         body: Text("Merhaba")
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
