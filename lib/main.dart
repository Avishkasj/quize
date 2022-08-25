import 'package:flutter/material.dart';

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

  List<String> questions = [
    'A group of crocodiles are called shrewdness',
    'Dogs can understand up to 250 hand gestures ',
    'A hair of a polar bear\'s fur is white',
  ];

  int qno = 0;

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
                  questions[qno],
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
                    qno++;
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
                    qno++;
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
