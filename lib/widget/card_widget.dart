import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/pages/description_page.dart';

import '../core/constant.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.box,});
  final ItemClass box;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return  DescriptionPage(box: box,);
        },))
      },
      child: Card(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: kDouble10,
              ),
              Image.asset(box.imagePath),
              Text(
                box.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text('This is ${box.title} description'),
              const SizedBox(
                height: kDouble10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
