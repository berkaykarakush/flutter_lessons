//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_lessons/FlutterLessons/views/Anasayfa.dart';
// import 'package:flutter_lessons/cubit/KisiKayitCubit.dart';
//
// class KayitSayfa extends StatefulWidget {
//   const KayitSayfa({super.key});
//
//   @override
//   State<KayitSayfa> createState() => _KayitSayfaState();
// }
//
// class _KayitSayfaState extends State<KayitSayfa> {
//
//   var tfKisiAd = TextEditingController();
//   var tfKisiTel = TextEditingController();
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           centerTitle: true,
//           title: Text("Kayit Sayfasi", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.only(right: 50, left: 50),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 TextField(controller: tfKisiAd, decoration: InputDecoration(hintText: "Kisi Ad"),),
//                 TextField(controller: tfKisiTel, decoration: InputDecoration(hintText: "Kisi Tel"),),
//                 ElevatedButton(
//                     onPressed: (){
//                       context.read<KisiKayitCubit>().kayit(tfKisiAd.text, tfKisiTel.text);
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
//                     },
//                     child: const Text("Kaydet")
//                 )
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }
