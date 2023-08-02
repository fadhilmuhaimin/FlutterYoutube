import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/constant.dart';

import '../class/item_class.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({
    super.key,
    required this.box,
  });

  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        leading: IconButton(onPressed:() {
          Navigator.pop(context);
        },  icon : const Icon(Icons.dangerous)),
        actions: [
          IconButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:  Text("Hello"), behavior: SnackBarBehavior.floating),);
          }, icon: const Icon(Icons.info))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(children: [
            Image.asset(widget.box.imagePath),
            Wrap(spacing: kDouble10, children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    fontSizeCustom = 25;
                  });
                },
                child: const Text("Small Text"),
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    fontSizeCustom = 35;
                  });
                },
                child: const Text("Medium Text"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    fontSizeCustom = 50;
                  });
                },
                child: const Text("Large Text"),
              ),
              FilledButton(
                onPressed: () {
                  setState(() {
                    fontSizeCustom = 200;
                  });
                },
                child: const Text("Huge Text"),
              ),
            ]),
            FittedBox(
              child: Text(
                widget.box.title,
                style: TextStyle(
                    fontSize: fontSizeCustom, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              baconDescription,
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: kDouble10,
            ),
            const Text(
              baconDescription,
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.justify,
            ),
          ]),
        ),
      ),
    );
  }
}
