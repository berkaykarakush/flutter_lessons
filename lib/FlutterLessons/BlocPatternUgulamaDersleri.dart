// views directory, entity directory, repo directory, sqlite directory, cubit directory

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_lessons/cubit/AnasayfaCubit.dart';
// import 'package:flutter_lessons/cubit/KisiDetayCubit.dart';
// import 'package:flutter_lessons/cubit/KisiKayitCubit.dart';
// import 'FlutterLessons/views/Anasayfa.dart';

// Firebase islemleri
//region
// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }
//endregion

// Bloc Pattern Uygulamasi

// Kisiler Uygulamasi
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (context) => KisiKayitCubit()),
//         BlocProvider(create: (context) => KisiDetayCubit()),
//         BlocProvider(create: (context) => AnasayfaCubit()),
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