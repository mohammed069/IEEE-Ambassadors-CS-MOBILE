import 'package:flutter/material.dart';

class CustomClipprect extends StatefulWidget {
  const CustomClipprect({super.key, required this.text, required this.iconn});

  final String text;
  final Icon iconn;

  @override
  State<CustomClipprect> createState() => _CustomClipprectState();
}

class _CustomClipprectState extends State<CustomClipprect> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Column(
        children: [
          Container(
            height: 55,
            width: 55,
            margin: EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
            child: widget.iconn,
          ),
          Text(widget.text),
        ],
      ),
    );
  }
}
