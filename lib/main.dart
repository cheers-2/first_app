import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var idxQuestion = 0;
  void answerQuestion() {
    setState(() {
      idxQuestion += 1;
    });

    print('asd');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s is my name',
      'what\'s is your name',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('First App'),
          ),
          body: Column(
            children: [
              Text(questions[idxQuestion]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: answerQuestion,
              ),
            ],
          )),
    );
  }
}
