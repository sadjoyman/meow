import 'package:flutter/material.dart';

class Kerala extends StatelessWidget {
  const Kerala({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact"),
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Text(
          "This is the Contact Page",
          style: TextStyle(fontSize: 18),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 183, 156, 3)),
              child: Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _drawerItem(
              context: context,
              icon: Icons.home,
              text: "Home",
              routeName: '/homepage',
            ),
            _drawerItem(
              context: context,
              icon: Icons.info,
              text: "About",
              routeName: '/about',
            ),
            _drawerItem(
              context: context,
              icon: Icons.contact_mail,
              text: "Contact",
              routeName: '/contact',
            ),
          ],
        ),
      ),
    );
  }
}

// Drawer item helper
Widget _drawerItem({
  required BuildContext context,
  required IconData icon,
  required String text,
  required String routeName,
}) {
  return ListTile(
    leading: Icon(icon, color: const Color.fromARGB(255, 183, 156, 3)),
    title: Text(text),
    onTap: () {
      Navigator.pop(context); // Close drawer
      if (ModalRoute.of(context)?.settings.name != routeName) {
        Navigator.pushReplacementNamed(context, routeName);
      }
    },
  );
}
