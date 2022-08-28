import 'package:flutter/material.dart';
import 'quize_brain.dart';
import 'question.dart';

Quizbrain quizbrain = Quizbrain();

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('QUIZE'),
          backgroundColor: Colors.blueGrey,
        ),
        body: quize(),
      ),
    ),
  );
}

class quize extends StatefulWidget {
  const quize({Key? key}) : super(key: key);

  @override
  State<quize> createState() => _quizeState();
}

class _quizeState extends State<quize> {
  List<Widget> scorekeper = [];

  int qno = 0;
  bool ans = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizbrain.getqtext(quizbrain.qusno),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  primary: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    ans = quizbrain.getans(quizbrain.qusno);
                    if (ans == false) {
                      print('right');
                    } else {
                      print('wrong');
                    }
                    quizbrain.netq();
                    scorekeper.add(
                      Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    );
                  });
                  print('False button clicked');
                },
                child: Text("False"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal,
                  primary: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    ans = quizbrain.getans(quizbrain.qusno);
                    if (ans == true) {
                      print('right');
                    } else {
                      print('wrong');
                    }
                    quizbrain.netq();
                  });
                  print('True button clicked');
                },
                child: Text('TRUE'),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: scorekeper,
            ),
          ),
        ],
      ),
    );
  }
}

// A group of crocodiles are called shrewdness - False
// Dogs can understand up to 250 hand gestures - True
// A hair of a polar bear's fur is white - False
