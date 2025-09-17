// Demo Flutter App with Explanations
import 'package:flutter/material.dart';
import 'package:ammbaddi/pages/homepage.dart';
import 'package:ammbaddi/pages/aboutpage.dart';
import 'package:ammbaddi/pages/contactpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/homepage', // app starts here
      routes: {
        '/homepage': (context) => const Homepage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}
