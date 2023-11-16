// class Kisiler{
//   String kisi_id;
//   String kisi_ad;
//   String kisi_tel;
//
//   Kisiler({required this.kisi_id,required this.kisi_ad,required this.kisi_tel});
//
//   // Dio, Sqlite
//   //region
//   // factory Kisiler.fromJson(Map<String, dynamic> json){
//   //   return Kisiler(kisi_id: json["kisi_id"], kisi_ad: json["kisi_ad"], kisi_tel: json["kisi_tel"]);
//   // }
//   //endregion
//
//   //Firebase
//   //region
//   factory Kisiler.fromJson(String key, Map<String, dynamic> json){
//     return Kisiler(kisi_id: key, kisi_ad: json["kisi_ad"], kisi_tel: json["kisi_tel"]);
//   }
//   //endregion
// }