import 'district_model.dart'; // Make sure this exists

class StateModel {
  final String name;
  final String imageUrl;
  final String routeName; // Named route for navigation
  final List<DistrictModel> districts;

  const StateModel({
    required this.name,
    required this.imageUrl,
    required this.routeName,
    required this.districts,
  });
}
