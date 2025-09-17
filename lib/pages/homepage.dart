import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 183, 156, 3)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Southern Odessey",
          style: TextStyle(
            color: Color.fromARGB(255, 183, 156, 3),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: const [
          Icon(Icons.search, color: Color.fromARGB(255, 183, 156, 3)),
          SizedBox(width: 20),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 183, 156, 3)),
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
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/am.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // "Explore" at top-left below AppBar
          const Positioned(
            top: kToolbarHeight + 120,
            left: 16,
            child: Text(
              "Explore",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),

          // Center "Southern Odessey"
          const Center(
            child: Text(
              "Southern Odessey",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          // Rounded Kerala box
          Positioned(
            top: 215,
            left: 10,
            right: 45,
            child: Container(
              height: 60,
              width: 0,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 165, 248, 109),
                borderRadius: BorderRadius.circular(35), // round corners
              ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.asset(
                        'assets/images/am.jpg',
                        height: 60,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        "Kerala",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
            ),
          ),
        ],
      ),
    );
  }

  // Drawer item helper function
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
}
