import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampleui/ui/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
