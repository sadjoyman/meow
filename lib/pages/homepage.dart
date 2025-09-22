import 'package:flutter/material.dart';
import '../models/state_model.dart';
import '../models/district_model.dart';
import '../pages/kerala_page.dart';
import '../pages/karnataka_page.dart';
import '../pages/tamil_nadu_page.dart';
import '../pages/andhra_pradesh_page.dart';
import '../pages/telangana_page.dart';
import '../pages/about_page.dart';
import '../pages/contact_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  static final List<StateModel> southernStates = [
    kerala,
    karnataka,
    tamilNadu,
    andhraPradesh,
    telangana,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Transparent AppBar over the top image
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Southern Odyssey"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AboutPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ContactPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Top Image (am.jpg)
          SizedBox(
            height: 200, // adjust height as needed
            width: double.infinity,
            child: Image.asset(
              'assets/images/am.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // List of states below the image
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: southernStates.length,
              itemBuilder: (context, index) {
                final state = southernStates[index];
                return _stateSection(context, state);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _stateSection(BuildContext context, StateModel state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => Navigator.pushNamed(context, state.routeName),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 0,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    state.imageUrl,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                Positioned(
                  left: 16,
                  bottom: 16,
                  child: Text(
                    state.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.districts.length,
            itemBuilder: (context, idx) {
              final district = state.districts[idx];
              return _districtCard(district);
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _districtCard(DistrictModel district) {
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
          Text(
            district.name,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
