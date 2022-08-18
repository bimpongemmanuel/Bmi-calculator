import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 112, 241, 25),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Card',style: TextStyle(color: Colors.white,fontSize: 20,
          ) ),
        ),  
        actions: [
          const CircleAvatar(),
        ],
     ),
     body: Column(
      children: [
        Container()
      ],
     ),
    );
  }
}