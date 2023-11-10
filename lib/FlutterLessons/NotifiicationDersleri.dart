// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:timezone/data/latest_all.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;

// void main() {
//   runApp(MyApp());
// }

// Bildirim Kullanimi
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
//   var flp = FlutterLocalNotificationsPlugin();
//
//   Future<void> Kurulum() async{
//     var androidAyari = const AndroidInitializationSettings("@mipmap/ic_launcher");
//     var iosAyari = const DarwinInitializationSettings();
//     var kurulumAyari = InitializationSettings(android: androidAyari, iOS: iosAyari);
//     await flp.initialize(kurulumAyari, onDidReceiveNotificationResponse: bildirimSecilme);
//   }
//
//   Future<void> bildirimSecilme(NotificationResponse notificationResponse) async{
//     var payload = notificationResponse.payload;
//     if(payload != null){
//       print("bildirim secildi: $payload");
//     }
//   }
//   @override
//   void initState() {
//     super.initState();
//     Kurulum();
//   }
//
//   Future<void> bildirimGoster() async{
//     var androidBildirimDetay = const AndroidNotificationDetails(
//         "kanal id",
//         "kanal baslik",
//         channelDescription: "kanal aciklama",
//         priority: Priority.high,
//         importance: Importance.max
//     );
//     var iosBildirimDetay = const DarwinNotificationDetails();
//     var bildirimDetay = NotificationDetails(iOS: iosBildirimDetay, android:  androidBildirimDetay);
//     await flp.show(1, "Baslik", "icerik", bildirimDetay, payload: "Payload icerik");
//   }
//
//   Future<void> gecikmeliBildirimGoster() async{
//     var androidBildirimDetay = const AndroidNotificationDetails(
//         "kanal id",
//         "kanal baslik",
//         channelDescription: "kanal aciklama",
//         priority: Priority.high,
//         importance: Importance.max
//     );
//     var iosBildirimDetay = const DarwinNotificationDetails();
//     var bildirimDetay = NotificationDetails(iOS: iosBildirimDetay, android:  androidBildirimDetay);
//     tz.initializeTimeZones();
//     var gecikme = tz.TZDateTime.now(tz.local).add(const Duration(seconds: 10));
//     await flp.zonedSchedule(
//       1,
//       "Baslik Gecikmeli",
//       "icerik gecikmeli",
//       gecikme,
//       bildirimDetay,
//       uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
//       androidAllowWhileIdle: true,
//       payload: "Payload icerik gecikmeli"
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.lightBlueAccent,
//         centerTitle: true,
//         title: Text("Bildirim Kullanimi", style: TextStyle(color: Colors.white),),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: (){
//                 bildirimGoster();
//               },
//               child: Text("Bildirim Olustur")
//             ),
//             ElevatedButton(
//               onPressed: (){
//                 gecikmeliBildirimGoster();
//               },
//               child: Text("Gecikmeli Bildirim Olustur")
//             )
//           ],
//         ),
//       )
//     );
//   }
// }
//endregion

// Timer Kullanimi
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
//   late Timer zamanlayici;
//   int kalanSure = 10;
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
//               Text("Kalan Sure: $kalanSure", style: TextStyle(fontSize: 35.0),),
//               ElevatedButton(
//                 onPressed: (){
//                   zamanlayici = Timer.periodic(Duration(seconds: 1), (timer) {
//                     setState(() {
//                       if(kalanSure < 1){
//                         kalanSure = 10;
//                         zamanlayici.cancel();
//                       }else{
//                         kalanSure -= 1;
//                       }
//                     });
//                   });
//                 },
//                 child: Text("Basla")
//               )
//             ],
//           ),
//         )
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
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           centerTitle: true,
//           title: Text("Anasayfa", style: TextStyle(color: Colors.white),),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [],
//           ),
//         )
//     );
//   }
// }
//endregion