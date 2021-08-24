import 'package:complete_app/app/sing_in/sign_in_page.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//  const MyApp({Key? key}) : super(key: key);

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
