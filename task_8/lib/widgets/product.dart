import 'package:flutter/material.dart';
import 'package:task_8/screens/datails.dart';

class Product extends StatelessWidget {
  const Product({
    super.key,
    required this.image,
    required this.title,
    required this.subtile,
    required this.price,
    required this.itemsdata,
  });

  final Image image;
  final String title;
  final String subtile;
  final String price;
  final itemsdata;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return Details(data: itemsdata);
            },
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: image, height: 90, width: 100, color: Colors.grey),
          ListTile(
            title: Text(
              "$title",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            subtitle: Text("$subtile"),
          ),
          Text(
            "    $price",
            style: TextStyle(
              color: Colors.orange[600],
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
