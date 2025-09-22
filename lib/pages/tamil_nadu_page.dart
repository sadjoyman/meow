import 'package:flutter/material.dart';
import '../models/state_model.dart';
import '../models/district_model.dart';
import 'state_body.dart';

final tamilNadu = StateModel(
  name: "Tamil Nadu",
  imageUrl: "https://upload.wikimedia.org/wikipedia/commons/0/0e/Tamil_Nadu_Scenery.jpg",
  routeName: "/tamilnadu",
  districts: [
    DistrictModel(name: "Chennai", imageUrl: "https://via.placeholder.com/60"),
    DistrictModel(name: "Coimbatore", imageUrl: "https://via.placeholder.com/60"),
  ],
);

class TamilNaduPage extends StatelessWidget {
  const TamilNaduPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tamil Nadu")),
      body: stateBody(tamilNadu),
    );
  }
}
