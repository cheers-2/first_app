import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('answered');
  }

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var questions = ['what\'s is my name', 'what\'s is your name'];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('First App'),
          ),
          body: Column(
            children: [
              Text('Question'),
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
