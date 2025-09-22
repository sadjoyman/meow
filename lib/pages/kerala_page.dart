import 'package:flutter/material.dart';
import '../models/state_model.dart';
import '../models/district_model.dart';
import 'state_body.dart';

final kerala = StateModel(
  name: "Kerala",
  imageUrl: "https://upload.wikimedia.org/wikipedia/commons/7/7b/Kerala_Scenery.jpg",
  routeName: "/kerala",
  districts: [
    DistrictModel(name: "Kochi", imageUrl: "https://via.placeholder.com/60"),
    DistrictModel(name: "Trivandrum", imageUrl: "https://via.placeholder.com/60"),
    DistrictModel(name: "Kollam", imageUrl: "https://via.placeholder.com/60"),
  ],
);

class KeralaPage extends StatelessWidget {
  const KeralaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kerala")),
      body: stateBody(kerala),
    );
  }
}
