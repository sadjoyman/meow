import 'package:flutter/material.dart';
import '../models/state_model.dart';
import '../models/district_model.dart';
import 'state_body.dart';

final telangana = StateModel(
  name: "Telangana",
  imageUrl: "https://upload.wikimedia.org/wikipedia/commons/1/18/Telangana_Scenery.jpg",
  routeName: "/telangana",
  districts: [
    DistrictModel(name: "Hyderabad", imageUrl: "https://via.placeholder.com/60"),
    DistrictModel(name: "Warangal", imageUrl: "https://via.placeholder.com/60"),
  ],
);

class TelanganaPage extends StatelessWidget {
  const TelanganaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Telangana")),
      body: stateBody(telangana),
    );
  }
}
