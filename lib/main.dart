import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(143, 121, 226, 232),
      appBar: AppBar(
        title: Text(
          'Matching Game',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(143, 255, 255, 255),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings_outlined,
            ),
          )
        ],
      ),
      body: imagepage(),
    ),
  ));
}

class imagepage extends StatefulWidget {
  const imagepage({super.key});

  @override
  State<imagepage> createState() => _imagepageState();
}

class _imagepageState extends State<imagepage> {
  var leftbicturenumber = 1;
  var rightbicturenumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftbicturenumber == rightbicturenumber
              ? 'You Win The Bictures are Match'
              : 'Try Again Plese',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftbicturenumber = Random().nextInt(9) + 1;
                      rightbicturenumber = Random().nextInt(9) + 1;
                    });
                  },
                  child: Image.asset('images/image-$leftbicturenumber.png')),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightbicturenumber = Random().nextInt(9) + 1;
                    leftbicturenumber = Random().nextInt(9) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/image-$rightbicturenumber.png'),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
