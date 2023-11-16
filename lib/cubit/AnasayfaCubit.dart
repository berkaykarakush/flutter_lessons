// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_lessons/repo/Kisilerdao_repository.dart';
//
// import '../FlutterLessons/entity/Kisiler.dart';
//
// class AnasayfaCubit extends Cubit<List<Kisiler>>{
//   AnasayfaCubit() : super(<Kisiler>[]);
//
//   var krepo = KisilerDaoRepository();
//   var refKisiler = FirebaseDatabase.instance.ref().child("kisiler");
//
//   Future<void> tumKisiler() async{
//     refKisiler.onValue.listen((event) {
//       var gelenDegerler = event.snapshot.value as dynamic;
//       if(gelenDegerler != null){
//         var liste = <Kisiler>[];
//         gelenDegerler.forEach((key, nesne){
//           var kisi = Kisiler.fromJson(key, nesne);
//           liste.add(kisi);
//         });
//         emit(liste);
//       }
//     });
//   }
//
//   Future<void> kisiara(String aramaKelimesi) async{
//     refKisiler.onValue.listen((event) {
//       var gelenDegerler = event.snapshot.value as dynamic;
//       if(gelenDegerler != null){
//         var liste = <Kisiler>[];
//         gelenDegerler.forEach((key, nesne){
//           var kisi = Kisiler.fromJson(key, nesne);
//           if(kisi.kisi_ad.contains(aramaKelimesi)){
//             liste.add(kisi);
//           }
//         });
//         emit(liste);
//       }
//     });
//   }
//
//   Future<void> sil(int kisi_id) async{
//     await krepo.sil(kisi_id);
//     await tumKisiler();
//   }
// }