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
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/pic.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SafeArea(
                child: ListTile(
                  leading: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 30,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.ios_share, color: Colors.white, size: 30),
                      SizedBox(width: 16.0),
                      Icon(
                        Icons.bookmark_border_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            DraggableScrollableSheetExample(),
          ],
        ),
      ),
    );
  }
}

class DraggableScrollableSheetExample extends StatefulWidget {
  const DraggableScrollableSheetExample({super.key});

  @override
  State<DraggableScrollableSheetExample> createState() =>
      _DraggableScrollableSheetExampleState();
}

class _DraggableScrollableSheetExampleState
    extends State<DraggableScrollableSheetExample> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: .25,
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16.0)),
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        'Homemade Ramen',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "By Mohammed ElShafy",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.stars_rounded,
                            color: Colors.amber,
                            size: 30,
                          ),
                          Text(
                            ' 4.5',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Row(
                      spacing: 7,
                      children: [
                        SizedBox(width: 8.0),
                        _buildCustomContainer(
                          text: "3h 30min",
                          icon: Icons.av_timer,
                        ),
                        _buildCustomContainer(
                          text: "Serves 4",
                          icon: Icons.person_outlined,
                        ),
                        _buildCustomContainer(
                          text: "Intermediate",
                          icon: Icons.local_fire_department_outlined,
                        ),
                      ],
                    ),
                    Row(
                      spacing: 7,
                      children: [
                        SizedBox(width: 8.0),
                        Text(
                          "Ingredients",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ],
                    ),
                    _buildIngredientsText(
                      mainText: "For Chicken Dashi",
                      text1: "8 Cups",
                      text2: "16",
                      text3: "30 g",
                      text4: "20 g",
                      text5: "Low sodium chicken broth",
                      text6: "Dried shiitake mushrooms",
                      text7: "kombu (about 10\" square piece)",
                      text8: "Dried Bonito flakes",
                    ),
                    _buildIngredientsText(
                      mainText: "For Tare and Chashu",
                      text1: "11/4 Cups",
                      text2: "11/4 Cups",
                      text3: "1/2 Cup",
                      text4: "11/2 Cups",
                      text5: "Low sodium soy sauce",
                      text6: "Mirin",
                      text7: "Sake",
                      text8: "Water",
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget _buildCustomContainer({required String text, required IconData icon}) {
  return Container(
    height: 110,
    width: 120,

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16.0),
      color: Colors.blue.shade50,
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50, color: Colors.blue),
          Text(
            text,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildIngredientsText({
  required String mainText,
  required String text1,
  required String text2,
  required String text3,
  required String text4,
  required String text5,
  required String text6,
  required String text7,
  required String text8,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        mainText,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      Row(
        children: [
          SizedBox(width: 8.0),
          SizedBox(
            width: 100,
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1, style: TextStyle(fontSize: 16, color: Colors.grey)),
                Text(text2, style: TextStyle(fontSize: 16, color: Colors.grey)),
                Text(text3, style: TextStyle(fontSize: 16, color: Colors.grey)),
                Text(text4, style: TextStyle(fontSize: 16, color: Colors.grey)),
              ],
            ),
          ),
          SizedBox(width: 24),
          Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text5,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                text6,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                text7,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                text8,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
