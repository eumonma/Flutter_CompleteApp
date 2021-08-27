import 'package:complete_app/app/sing_in/sign_in_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


//void main(){
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//  const MyApp({Key? key}) : super(key: key);

  // Para importar algo Analytics
  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
  FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Traker',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: SingInPage(),
    );
  }
}
