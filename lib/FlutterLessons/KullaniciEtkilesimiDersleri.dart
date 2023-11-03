// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// Snack bar kullanimi
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
//             children: [
//               ElevatedButton(
//                 onPressed: (){
//                   ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text("Merhaba")
//                       ),
//                   );
//                 },
//                 child: Text("Varsayilan")
//               ),
//               ElevatedButton(
//                 onPressed: (){
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(
//                       content: Text("Merhaba"),
//                       action: SnackBarAction(
//                         label: "Evet",
//                         onPressed: (){
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(content: Text("Silindi")),
//                           );
//                         }
//                       ),
//                     )
//                   );
//                 },
//                 child: Text("Snackbar Action")
//               ),
//               ElevatedButton(
//                 onPressed: (){
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(
//                       content: Text("Internet baglantisi yok",style: TextStyle(color: Colors.indigoAccent),),
//                       backgroundColor: Colors.white,
//                       duration: Duration(seconds: 5),
//                       action: SnackBarAction(
//                           label: "Tekrar dene",
//                           textColor: Colors.red,
//                           onPressed: (){
//                             print("Tekrar denendi");
//                           }
//                       ),
//                     )
//                   );
//                 },
//                 child: Text("Snackbar ozel")
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// AlertDialog Kullanimi
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
//   var tfControl = TextEditingController();
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
//                   onPressed: (){
//                     showDialog(
//                         context: context,
//                         builder: (BuildContext context){
//                           return AlertDialog(
//                             title: Text("Baslik"),
//                             content: Text("Icerik"),
//                             actions: [
//                               ElevatedButton(
//                                   onPressed: (){
//                                     Navigator.pop(context);
//                                   },
//                                   child: Text("Cancel")
//                               ),
//                               ElevatedButton(
//                                   onPressed: (){
//                                     print("Tamam secildi");
//                                     Navigator.pop(context);
//                                   },
//                                   child: Text("Okey")
//                               ),
//                             ],
//                           );
//                         }
//                     );
//                   },
//                   child: Text("Basic Alert")
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     showDialog(
//                         context: context,
//                         builder: (BuildContext context){
//                           return AlertDialog(
//                             title: Text("Baslik", style: TextStyle(color: Colors.white),),
//                             backgroundColor: Colors.indigoAccent,
//                             content: SizedBox(
//                               height: 80,
//                               child: Column(
//                                 children: [
//                                   TextField(
//                                     controller: tfControl,
//                                     decoration: InputDecoration(
//                                       labelText: "Veri",
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             actions: [
//                               ElevatedButton(
//                                   onPressed: (){
//                                     Navigator.pop(context);
//                                   },
//                                   child: Text("Cancel", style: TextStyle(color: Colors.white))
//                               ),
//                               ElevatedButton(
//                                   onPressed: (){
//                                     String alinanVeri = tfControl.text;
//                                     print("Veri okundu: $alinanVeri");
//                                     tfControl.text = "";
//                                     Navigator.pop(context);
//                                   },
//                                   child: Text("Veri oku", style: TextStyle(color: Colors.white))
//                               ),
//                             ],
//                           );
//                         }
//                     );
//                   },
//                   child: Text("Custom Alert")
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// PopUp Kullanimi
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
//               PopupMenuButton(
//                 child: Icon(Icons.open_in_new),
//                 itemBuilder: (context) => [
//                   PopupMenuItem(
//                     value: 1,
//                     child: Text("Sil", style: TextStyle(color: Colors.red),)
//                   ),
//                   PopupMenuItem(
//                     value: 2,
//                     child: Text("Guncelle", style: TextStyle(color: Colors.indigoAccent),)
//                   ),
//                 ],
//                 onCanceled: (){
//                   print("Secim yapilmadi");
//                 },
//                 onSelected: (menuItemValue){
//                   if(menuItemValue == 1){
//                     print("Sil secildi");
//                   }
//                   if(menuItemValue == 2){
//                     print("Guncelle secildi");
//                   }
//                 },
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion
