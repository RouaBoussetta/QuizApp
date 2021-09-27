import 'package:flutter/material.dart';

import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;


  _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore=0;
    });
  }

  answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex++;
      print(_questionIndex);
      print('Answer choosen');
      print(_totalScore);
      
    });
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': '10'},
        {'text': 'Red', 'score': '20'},
        {'text': 'Green', 'score': '30'},
        {'text': 'Blue', 'score': '50'},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Bird', 'score': '10'},
        {'text': 'Lion', 'score': '20'},
        {'text': 'Tiger', 'score': '50'},
        {'text': 'Cat', 'score': '10'},
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Quiz App"),
          ),
          // ignore: avoid_unnecessary_containers
          body: Container(
              child: _questionIndex < _question.length
                  ? Quiz(_question, _questionIndex, answerQuestion)
                  : Result(_resetQuiz,_totalScore)
                  )
                  ),
    );
  }
}
