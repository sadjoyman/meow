import 'package:flutter/material.dart';
import '../models/state_model.dart';

Widget stateBody(StateModel state) {
  return ListView(
    padding: const EdgeInsets.all(16),
    children: [
      Image.network(state.imageUrl, height: 180, fit: BoxFit.cover),
      const SizedBox(height: 16),
      Text(
        state.name,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 16),
      SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: state.districts.length,
          itemBuilder: (context, index) {
            final district = state.districts[index];
            return Container(
              width: 100,
              margin: const EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      district.imageUrl,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(district.name, textAlign: TextAlign.center),
                ],
              ),
            );
          },
        ),
      ),
    ],
  );
}
