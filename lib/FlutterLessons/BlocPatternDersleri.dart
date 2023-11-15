// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp(MyApp());
// }

// Bloc Pattern Kullanimi
//region
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (context) => AnasayfaCubit(),),
//       ],
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: MyHomePage(),
//       ),
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
//   var tfSayi1 = TextEditingController();
//   var tfSayi2 = TextEditingController();
//
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
//         child: Padding(
//           padding: const EdgeInsets.only(left: 50, right: 50),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               BlocBuilder<AnasayfaCubit, int>(
//                 builder: (context, sonuc){
//                   return Text(sonuc.toString());
//               }),
//               TextField(controller: tfSayi1, decoration: InputDecoration(hintText: "Sayi 1"),),
//               TextField(controller: tfSayi2, decoration: InputDecoration(hintText: "Sayi 2"),),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton(
//                     onPressed: (){
//                       String alinanSayi1 = tfSayi1.text;
//                       String alinanSayi2 = tfSayi2.text;
//                       context.read<AnasayfaCubit>().toplamaYap(alinanSayi1, alinanSayi2);
//                     },
//                     child: const Text("Toplama")
//                   ),
//                   ElevatedButton(
//                     onPressed: (){
//                       String alinanSayi1 = tfSayi1.text;
//                       String alinanSayi2 = tfSayi2.text;
//                       context.read<AnasayfaCubit>().carpmaYap(alinanSayi1, alinanSayi2);
//                     },
//                     child: const Text("Carpma")
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }
//
// class AnasayfaCubit extends Cubit<int>{
//   AnasayfaCubit() : super(0); //vasayilan deger
//   var mrepo = MatematikRepository();
//   void toplamaYap(String alinanSayi1, String alinanSayi2){
//     emit(mrepo.topla(alinanSayi1, alinanSayi2));
//   }
//
//   void carpmaYap(String alinanSayi1, String alinanSayi2){
//     emit(mrepo.carp(alinanSayi1, alinanSayi2));
//   }
// }
//
// class MatematikRepository{
//   int topla(String alinanSayi1, String alinanSayi2){
//     int sayi1 = int.parse(alinanSayi1);
//     int sayi2 = int.parse(alinanSayi2);
//     int toplam = sayi1 + sayi2;
//     return toplam;
//   }
//
//   int carp(String alinanSayi1, String alinanSayi2){
//     int sayi1 = int.parse(alinanSayi1);
//     int sayi2 = int.parse(alinanSayi2);
//     int carpim = sayi1 * sayi2;
//     return carpim;
//   }
// }
//endregion

