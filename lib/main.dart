import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'pages/kerala_page.dart';
import 'pages/karnataka_page.dart';
import 'pages/tamil_nadu_page.dart';
import 'pages/andhra_pradesh_page.dart';
import 'pages/telangana_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Southern Odyssey',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const Homepage(),
      routes: {
        kerala.routeName: (_) => const KeralaPage(),
        karnataka.routeName: (_) => const KarnatakaPage(),
        tamilNadu.routeName: (_) => const TamilNaduPage(),
        andhraPradesh.routeName: (_) => const AndhraPradeshPage(),
        telangana.routeName: (_) => const TelanganaPage(),
      }, // <-- close the routes map
    ); // <-- close MaterialApp
  }
}
