import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ui/form_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Form Mahasiswa',
      theme: ThemeData(
        primaryColor: const Color(0xFFFFA6C9), 
        scaffoldBackgroundColor: Colors.pink.shade50,
        textTheme: GoogleFonts.balsamiqSansTextTheme(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFF9EC4), 
          iconTheme: IconThemeData(color: Colors.white), 
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pinkAccent,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: GoogleFonts.balsamiqSans(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      home: const FormDataPage(),
    );
  }
}
