import 'package:flutter/material.dart';


// Desiged By Sreenivas k
// Gmail:sreenivask0143@gmail.com

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Number App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Numbers App By Sreenivas k"),
          ),
          body: Numbers(),
        ));
  }
}

class Numbers extends StatefulWidget {
  @override
  _NumbersState createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  var letterNumber = "Press the Plus Button";
  String Digit = "0";
  int digit = 0;

  int index = 0;
  List<String> sLetterNumbers = [
    "Zero",
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "six",
    "Seven",
    "Eight",
    "Nine"
  ];

  void Change() {
    setState(() {
      if (index <= 9) {
        letterNumber = sLetterNumbers[index];
        Digit = "$index";
        index = index + 1;
      } else {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                letterNumber,
                style: TextStyle(color: Colors.white, fontSize: 40.0),
              ),
              SizedBox(height: 30.0, width: 30.0),
              Text(
                Digit,
                style: TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          ),
          FloatingActionButton(
            onPressed: Change,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.add,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
