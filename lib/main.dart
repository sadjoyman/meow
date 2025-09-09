// Demo Flutter App with Explanations
import 'package:flutter/material.dart';

// The main function is the entry point of the Flutter application.
void main() {
  // runApp starts the app and inflates the given widget (MyApp) as the root of the widget tree.
  runApp(const MyApp());
}

// MyApp is the root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // The build method describes how to display the widget in terms of other widgets.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 147, 237, 255),
        appBar: AppBar(
          title: Text("Demo App"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 0, 153, 204),
          leading: Icon(Icons.group_work),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.more_vert)
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.red,
                    child: Center(
                      child: Text("Hello", style: TextStyle(fontSize: 30, color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.green,
                  child: Center(
                    child: Text("Hello", style: TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text("Hello", style: TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                ),
              ],
            ),
            // Add other widgets below if needed
          ],
        ),
      ),
    );
  }
}
