import 'package:flutter/material.dart';
import '../models/state_model.dart';
import '../models/district_model.dart';
import 'state_body.dart';

final karnataka = StateModel(
  name: "Karnataka",
  imageUrl: "https://upload.wikimedia.org/wikipedia/commons/e/e3/Karnataka_Landscape.jpg",
  routeName: "/karnataka",
  districts: [
    DistrictModel(name: "Bangalore", imageUrl: "https://via.placeholder.com/60"),
    DistrictModel(name: "Mysore", imageUrl: "https://via.placeholder.com/60"),
  ],
);

class KarnatakaPage extends StatelessWidget {
  const KarnatakaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Karnataka")),
      body: stateBody(karnataka),
    );
  }
}
