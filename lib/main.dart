import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Flutter app"),
          backgroundColor: const Color.fromARGB(255, 186, 224, 255),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/images/som.jpg"),
            Text(
              "Student Chanon Roobkhum",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                "นักศึกษาสาขาวิทยาการคอมพิวเตอร์, \nคณะศิลปศาสตร์และวิทยาศาตร์ \nมหาวิทยาลัยราชภัฎศรีสะเกษ",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 235, 255, 18),
                      ),
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 235, 255, 18),
                      ),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                    ],
                  ),

                  Text(
                    "170 Reviews",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Row(
              children: List.generate(50, (index) {
                return Expanded(
                  child: Container(
                    color: index.isEven ? Colors.grey : Colors.transparent,
                    height: 1,
                  ),
                );
              }),
            ),

            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.phone, color: Colors.black),
                      Text("Phone", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.email, color: Colors.black),
                      Text("Email", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.facebook, color: Colors.black),
                      Text("Facebook", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
