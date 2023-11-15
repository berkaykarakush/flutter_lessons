// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:mobx/mobx.dart';
// import 'package:provider/provider.dart';

// part 'main.g.dart';
// class SayacModel = SayacModelBase with _$SayacModel;

// void main() {
//   runApp(MyApp());
// }

// setState yapisi
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
//             children: [
//               Text("Sonuc: $sayac"),
//               ElevatedButton(
//                   onPressed: (){
//                     setState(() {
//                       sayac += 1;
//                     });
//                   },
//                   child: Text("Click")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//endregion

// Provider
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => SayacModel()),
//
//       ],
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: Anasayfa(),
//       ),
//     );
//   }
// }
//
// class Anasayfa extends StatelessWidget {
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
//           children: [
//             Consumer<SayacModel>(
//               builder: (context, sayacModelNesne, child){
//                 return Text("${sayacModelNesne.sayaciOku()}");
//               },
//             ),
//             ElevatedButton(
//               onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => IkinciSayfa()));
//               },
//               child: Text("Gecis Yap")
//             )
//           ],
//         ),
//       )
//     );
//   }
// }
//
// class IkinciSayfa extends StatelessWidget {
//   const IkinciSayfa({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           centerTitle: true,
//           title: Text("Ikinci Sayfa", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Consumer<SayacModel>(
//                 builder: (context, sayacModelNesne, child){
//                   return Text("${sayacModelNesne.sayaciOku()}");
//                 },
//               ),
//               Consumer<SayacModel>(
//                 builder: (context, sayacModelNesne, child){
//                   return ElevatedButton(
//                       onPressed: (){
//                         sayacModelNesne.sayaciArttir();
//                         Navigator.push(context, MaterialPageRoute(builder: (context) => IkinciSayfa()));
//                       },
//                       child: Text("Sayac Arttir")
//                   );
//                 },
//               ),
//               Consumer<SayacModel>(
//                 builder: (context, sayacModelNesne, child){
//                   return ElevatedButton(
//                       onPressed: (){
//                         sayacModelNesne.sayaciAzalt(1);
//                         Navigator.push(context, MaterialPageRoute(builder: (context) => IkinciSayfa()));
//                       },
//                       child: Text("Sayac Azalt")
//                   );
//                 },
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class SayacModel extends ChangeNotifier{
//   int sayac = 0;
//
//   int sayaciOku(){
//     return sayac;
//   }
//
//   void sayaciArttir(){
//     sayac += 1;
//     notifyListeners();
//   }
//
//   void sayaciAzalt(int miktar){
//     sayac -= miktar;
//     notifyListeners();
//   }
//
// }

//endregion

// Mobx
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
// class Anasayfa extends StatelessWidget {
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
//           children: [
//             Text(""),
//             ElevatedButton(
//               onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => IkinciSayfa()));
//               },
//               child: Text("Gecis Yap")
//             )
//           ],
//         ),
//       )
//     );
//   }
// }
//
// class IkinciSayfa extends StatelessWidget {
//
//   var sayacModelNesne = SayacModel();
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           centerTitle: true,
//           title: Text("Ikinci Sayfa", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Observer(builder: (_){
//                 return Text("${sayacModelNesne.sayac}");
//               }),
//               ElevatedButton(
//                 onPressed: (){
//                   sayacModelNesne.sayacArttir();
//                 },
//                 child: Text("Sayac Arttir")
//               ),
//               ElevatedButton(
//                 onPressed: (){
//                   sayacModelNesne.sayacAzalt();
//                 },
//                 child: Text("Sayac Azalt")
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
//
// abstract class SayacModelBase with Store{
//   @observable
//   int sayac = 0;
//
//   @action
//   void sayacArttir(){
//     sayac +=1;
//   }
//
//   @action
//   void sayacAzalt(){
//     sayac -= 1;
//   }
// }

//endregion

// Bloc
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (context) => SayacCubit(),),
//       ],
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         debugShowCheckedModeBanner: false, // appbar uzerindeki etiketin kaldirilmasini saglar
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: Anasayfa(),
//       ),
//     );
//   }
// }
//
// class Anasayfa extends StatelessWidget {
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
//               BlocBuilder<SayacCubit, int>(
//                 builder: (context, sayacDegeri){
//                   return Text("$sayacDegeri");
//                 },
//               ),
//               ElevatedButton(
//                 onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => IkinciSayfa()));
//                 },
//                 child: Text("Gecis Yap")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class IkinciSayfa extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           centerTitle: true,
//           title: Text("Ikinci sayfa", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               BlocBuilder<SayacCubit, int>(
//                 builder: (context, sayacDeger){
//                   return Text("$sayacDeger");
//                 },
//               ),
//               ElevatedButton(
//                   onPressed: (){
//                     context.read<SayacCubit>().sayaciAzalt(2);
//                   },
//                   child: Text("Sayac azalt")
//               ),
//               ElevatedButton(
//                   onPressed: (){
//                     context.read<SayacCubit>().sayacArttir();
//                   },
//                   child: Text("Sayac arttir")
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class SayacCubit extends Cubit<int>{
//   SayacCubit() : super(0);
//
//   void sayacArttir(){
//     int sayac = state + 1;
//     emit(sayac);
//   }
//
//   void sayaciAzalt(int miktar){
//     int sayac = state - miktar;
//     emit(sayac);
//   }
//
// }
//endregion

