// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_lessons/FlutterLessons/views/DetaySayfa.dart';
// import 'package:flutter_lessons/FlutterLessons/views/KayitSayfasi.dart';
// import 'package:flutter_lessons/cubit/AnasayfaCubit.dart';
// import '../entity/Kisiler.dart';
//
// class Anasayfa extends StatefulWidget {
//   @override
//   State<Anasayfa> createState() => _AnasayfaState();
// }
//
// class _AnasayfaState extends State<Anasayfa> {
//   bool aramaYapiliyorMu = false;
//
//   @override
//   void initState() {
//     super.initState();
//     context.read<AnasayfaCubit>().tumKisiler();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           centerTitle: true,
//           title: aramaYapiliyorMu ?
//             TextField(
//               decoration: InputDecoration(hintText: "ara"),
//               onChanged: (aramaSonucu){
//                 context.read<AnasayfaCubit>().kisiara(aramaSonucu);
//               },)
//               : Text("Anasayfa", style: TextStyle(color: Colors.white),),
//           actions: [ aramaYapiliyorMu ?
//             IconButton(
//                 onPressed: (){
//                   setState(() {
//                     aramaYapiliyorMu = false;
//                   });
//                   context.read<AnasayfaCubit>().tumKisiler();
//                 },
//                 icon: Icon(Icons.cancel)
//             )
//            : IconButton(
//               onPressed: (){
//                 setState(() {
//                   aramaYapiliyorMu = true;
//                 });
//               },
//               icon: Icon(Icons.search)
//           )
//           ],
//         ),
//         body: BlocBuilder<AnasayfaCubit,List<Kisiler>>(
//           builder: (context, kisiler){
//             if(kisiler.isNotEmpty){
//               return ListView.builder(
//                 itemCount: kisiler!.length,
//                 itemBuilder: (context, index){
//                   var kisi = kisiler[index];
//                   return GestureDetector(
//                     onTap: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(kisi: kisi))).then((value){
//                         context.read<AnasayfaCubit>().tumKisiler();
//                       });
//                     },
//                     child: Card(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           children: [
//                             Text("${kisi.kisi_ad} ${kisi.kisi_tel}"),
//                             const Spacer(),
//                             IconButton(
//                               onPressed: (){
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   SnackBar(
//                                     content: Text("${kisi.kisi_ad} silinsin mi ?"),
//                                     action: SnackBarAction(
//                                       label: "Evet",
//                                       onPressed: (){
//                                         context.read<AnasayfaCubit>().sil(int.parse(kisi.kisi_id));
//                                         print("Kisi sil: ${kisi.kisi_id}");
//                                       },
//                                     ),
//                                   )
//                                 );
//                               },
//                               icon: Icon(Icons.delete_outline)
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }else{
//               return const Center();
//             }
//           },
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: (){
//             // var kisi = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "22222");
//             // Navigator.push(context, MaterialPageRoute(builder: (context) =>const DetaySayfa(kisi: kisi)))..then((value){
//             //   print("Anasayfaya donuldu");
//             // });
//
//             Navigator.push(context, MaterialPageRoute(builder: (context) =>const KayitSayfa()))..then((value){
//               context.read<AnasayfaCubit>().tumKisiler();
//             });
//           },
//           child: const Icon(Icons.add),
//         )
//     );
//   }
// }