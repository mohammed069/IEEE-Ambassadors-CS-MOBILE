import 'package:flutter/material.dart';
import 'package:task_8/widgets/custom_clipprect.dart';
import 'package:task_8/widgets/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List items = [
    {
      "image": "assets/images/headphone.png",
      "title": "SODO 1004",
      "subtitle": "headphone",
      "price": "\$355",
    },
    {
      "image": "assets/images/watch.png",
      "title": "HAUIEL BAND",
      "subtitle": "watch",
      "price": "\$3124",
    },
    {
      "image": "assets/images/mouse.png",
      "title": "HP 2055",
      "subtitle": "mouse",
      "price": "\$410",
    },
    {
      "image": "assets/images/earbuds.png",
      "title": "ORAIMO R50I",
      "subtitle": "earbuds",
      "price": "\$1320",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      hintText: "search",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.menu, size: 40),
                ),
              ],
            ),
            /*TextFormField*/
            SizedBox(height: 20),
            Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            Container(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomClipprect(
                    text: 'men',
                    iconn: Icon(Icons.male, size: 40),
                  ),
                  CustomClipprect(
                    text: 'women',
                    iconn: Icon(Icons.female, size: 40),
                  ),
                  CustomClipprect(
                    text: 'Electrical',
                    iconn: Icon(Icons.energy_savings_leaf_rounded, size: 40),
                  ),
                  CustomClipprect(
                    text: 'Hobbies',
                    iconn: Icon(Icons.sports_football_rounded, size: 40),
                  ),
                ],
              ),
            ),
            /*ListView*/
            SizedBox(height: 20),
            Text(
              "Best Selling",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 50,
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Product(
                  image: Image.asset(items[0]['image'], fit: BoxFit.fill),
                  title: items[0]['title'],
                  subtile: items[0]['subtitle'],
                  price: items[0]['price'],
                  itemsdata: items[0],
                ),
                Product(
                  image: Image.asset(items[1]['image'], fit: BoxFit.fill),
                  title: items[1]['title'],
                  subtile: items[1]['subtitle'],
                  price: items[1]['price'],
                  itemsdata: items[1],
                ),
                Product(
                  image: Image.asset(items[2]['image'], fit: BoxFit.fill),
                  title: items[2]['title'],
                  subtile: items[2]['subtitle'],
                  price: items[2]['price'],
                  itemsdata: items[2],
                ),
                Product(
                  image: Image.asset(items[3]['image'], fit: BoxFit.fill),
                  title: items[3]['title'],
                  subtile: items[3]['subtitle'],
                  price: items[3]['price'],
                  itemsdata: items[3],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
