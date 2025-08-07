import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Task 5', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            spacing: 16,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                height: 80,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'Mohammed ElShafey',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                height: 120,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Life is like riding a bicycle. To keep your balance, you must keep moving.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                height: 50,
                width: double.infinity,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 50),
                      Text(
                        '0 Reviews',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                height: 100,
                width: double.infinity,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _customColumn(
                          icon: Icons.accessibility_new,
                          title: "Prep:",
                          subtitle: "25 min",
                        ),
                        _customColumn(
                          icon: Icons.alarm,
                          title: "cooks:",
                          subtitle: "1 hr",
                        ),
                        _customColumn(
                          icon: Icons.restaurant,
                          title: "Feeds:",
                          subtitle: "4-6",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _customColumn({
  required IconData icon,
  required String title,
  required String subtitle,
}) {
  return Column(
    spacing: 2,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(icon, color: Colors.green),
      Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),

      Text(subtitle, style: const TextStyle(fontSize: 14, color: Colors.grey)),
    ],
  );
}
