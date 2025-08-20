import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.data});

  final data;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ecommerce",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.orange,
          ),
        ),
        centerTitle: true,
        actions: [Icon(Icons.menu)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(widget.data['image']),
            SizedBox(height: 20),
            Text(
              widget.data['title'],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange[300],
              ),
            ),
            SizedBox(height: 20),
            Text(
              widget.data['subtitle'],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange[400],
              ),
            ),
            SizedBox(height: 20),
            Text(
              widget.data['price'],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange[500],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Color:    ", style: TextStyle(fontSize: 15)),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Text(" Grey   ", style: TextStyle(fontSize: 15)),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Text(" black  ", style: TextStyle(fontSize: 15)),
              ],
            ),
            Row(),
            MaterialButton(onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
