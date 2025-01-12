import 'package:flutter/material.dart';
import 'package:pdf_viewer/pages/home_page.dart';
import 'package:pdf_viewer/pages/pdf_screen.dart';

void main(){
  runApp(PdfApp());
}

class PdfApp extends StatelessWidget {
  const PdfApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasinBook(),
    );
  }
}
