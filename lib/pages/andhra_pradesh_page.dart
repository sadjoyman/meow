import 'package:flutter/material.dart';
import '../models/state_model.dart';
import '../models/district_model.dart';
import 'state_body.dart';

final andhraPradesh = StateModel(
  name: "Andhra Pradesh",
  imageUrl: "https://upload.wikimedia.org/wikipedia/commons/4/43/Andhra_Pradesh_Scenery.jpg",
  routeName: "/andhrapradesh",
  districts: [
    DistrictModel(name: "Vijayawada", imageUrl: "https://via.placeholder.com/60"),
    DistrictModel(name: "Visakhapatnam", imageUrl: "https://via.placeholder.com/60"),
  ],
);

class AndhraPradeshPage extends StatelessWidget {
  const AndhraPradeshPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Andhra Pradesh")),
      body: stateBody(andhraPradesh),
    );
  }
}
