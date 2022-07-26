import 'package:flutter/material.dart';
import 'dart:math';



void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void randomiser()
  {
    leftDiceNumber= Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: TextButton(
                  onPressed: (){
                    setState(() {
                      randomiser();
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png')),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: TextButton(
                  onPressed: (){
                    setState(() {
                      randomiser();
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}