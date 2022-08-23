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
        body: quiz(),
      ),
    ),
  );
}

class quiz extends StatelessWidget {
  const quiz({Key? key}) : super(key: key);

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
                  'Text thi is pace holder for text',
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
                  print('True button clicked');
                },
                child: Text('TRUE'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class quize extends StatefulWidget {
  const quize({Key? key}) : super(key: key);

  @override
  State<quize> createState() => _quizeState();
}

class _quizeState extends State<quize> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
