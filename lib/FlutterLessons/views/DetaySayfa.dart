// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_lessons/FlutterLessons/views/Anasayfa.dart';
// import 'package:flutter_lessons/cubit/KisiDetayCubit.dart';
// import '../entity/Kisiler.dart';
//
// class DetaySayfa extends StatefulWidget {
//   Kisiler kisi;
//   DetaySayfa({required this.kisi});
//
//   @override
//   State<DetaySayfa> createState() => _DetaySayfaState();
// }
//
// class _DetaySayfaState extends State<DetaySayfa> {
//   var tfKisiAd = TextEditingController();
//   var tfKisiTel = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//     var kisi = widget.kisi;
//     tfKisiAd.text = kisi.kisi_ad;
//     tfKisiTel.text = kisi.kisi_tel;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           centerTitle: true,
//           title: Text("Detay Sayfa", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.only(left: 50, right: 50),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 TextField(controller: tfKisiAd, decoration: InputDecoration(hintText: "Kisi Ad"),),
//                 TextField(controller: tfKisiTel, decoration: InputDecoration(hintText: "Kisi Tel"),),
//                 ElevatedButton(
//                     onPressed: (){
//                       context.read<KisiDetayCubit>().guncelle(int.parse(widget.kisi.kisi_id),tfKisiAd.text, tfKisiTel.text);
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
