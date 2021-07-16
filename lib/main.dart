import 'package:ecommerceui/pages/homepage.dart';
import 'package:flutter/material.dart';
//flutter run -d chrome --web-port=8080 --web-hostname=127.0.0.1


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce UI',
      
        home:Homepage(),
    );
   }
}
      