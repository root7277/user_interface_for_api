import 'package:flutter/material.dart';

class WidgetPro extends StatefulWidget {
  final String image;
  final String txt;
  final String imageTrailing;
  const WidgetPro({
    super.key,
    required this.image,
    required this.imageTrailing,
    required this.txt
  });

  @override
  State<WidgetPro> createState() => _WidgetProState();
}

class _WidgetProState extends State<WidgetPro> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(widget.image),
          SizedBox(width: 100, child: Text(widget.txt, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),)),
          Image.asset(widget.imageTrailing),
        ],
      ),
    );
  }
}