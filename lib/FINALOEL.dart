import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}


class QuizApp extends StatelessWidget {(

title: 'Flutter Quiz App',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: SplashScreen(),
)
@override
Widget build(BuildContext context) {
return MaterialApp;
}
}


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(size: 100),
            SizedBox(height: 20),
            Text('Welcome to Flutter Quiz App'),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome! Ready for the quiz?'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
              child: Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _questionIndex = 0;
  int _correctAnswers = 0;

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What is Flutter?',
      'answers': [
        {'text': 'A framework', 'score': 1},
        {'text': 'A programming language', 'score': 0},
        {'text': 'A database', 'score': 0},
        {'text': 'An IDE', 'score': 0},
      ],
    },
    {
      'questionText': 'Who developed Flutter?',
      'answers': [
        {'text': 'Facebook', 'score': 0},
        {'text': 'Adobe', 'score': 0},
        {'text': 'Google', 'score': 1},
        {'text': 'Microsoft', 'score': 0},
      ],
    },
    {
      'questionText': 'Which language is used by Flutter?',
      'answers': [
        {'text': 'Java', 'score': 0},
        {'text': 'Kotlin', 'score': 0},
        {'text': 'Dart', 'score': 1},
        {'text': 'Swift', 'score': 0},
      ],
    },
    {
      'questionText': 'What is used to build UIs in Flutter?',
      'answers': [
        {'text': 'Widgets', 'score': 1},
        {'text': 'Blocks', 'score': 0},
        {'text': 'Components', 'score': 0},
        {'text': 'Fragments', 'score': 0},
      ],
    },
    {
      'questionText': 'Which company uses Flutter for their app development?',
      'answers': [
        {'text': 'Apple', 'score': 0},
        {'text': 'Alibaba', 'score': 1},
        {'text': 'IBM', 'score': 0},
        {'text': 'Intel', 'score': 0},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _correctAnswers += score;
    setState(() {
      _questionIndex++;
    });

    if (_questionIndex < _questions.length) {
    } else {

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(_correctAnswers, _questions.length),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
        answerQuestion: _answerQuestion,
        questionIndex: _questionIndex,
        questions: _questions,
      )
          : Center(child: CircularProgressIndicator()),
    );
  }
}

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        Text(
          questions[questionIndex]['questionText'] as String,
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return
            ElevatedButton(
              onPressed: () => answerQuestion(answer['score']),
              child: Text(answer['text'] as String),
            );
        }).toList(),
      ],
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int correctAnswers;
  final int totalQuestions;

  ResultScreen(this.correctAnswers, this.totalQuestions);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You got $correctAnswers out of $totalQuestions correct!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
