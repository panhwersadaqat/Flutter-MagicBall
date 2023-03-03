import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          title: Text('Ask me anything'),
          backgroundColor: Colors.blue,
        ),
        body: ImagePage(),
      ),
    );
  }
}


class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {

  var number = 1;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            number = Random().nextInt(5)+1;
          });
        },
        child: Image(
          image: AssetImage('images/ball$number.png'),
        ),
      )
    );
  }
}



