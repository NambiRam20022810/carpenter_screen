import 'package:flutter/material.dart';
import 'package:untitled/carpentersscreen.dart';
// const appbarbg=Color((0xFF1A2940));
// const checkboxbg=Color(0xFF1A2940);
void main() {
  runApp(Carpenters());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CarpentersScreen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: "Inter",
      ),
      //home:  ,
    );
  }
}
