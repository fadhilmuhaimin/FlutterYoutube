import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example app"),
      ),
      body:  SingleChildScrollView(
        child:  Column(
          children: [
            CardWidget(box: ItemClass(title: 'Rocket', imagePath: 'images/rocket.png'),),
            Row(
              children: [
                Expanded(
                    child: CardWidget(box: ItemClass(title: "Travel",imagePath: "images/travel.png",),),
                ),
                Expanded(
                  child: CardWidget(box: ItemClass(title: "Rocket",imagePath: "images/space.png",),),
                ),
              ],
            ),
            CardWidget(box: ItemClass(title: "Rocket",imagePath: "images/yeah.png",),),
          ],
        ),
      ),
    );
  }
}
