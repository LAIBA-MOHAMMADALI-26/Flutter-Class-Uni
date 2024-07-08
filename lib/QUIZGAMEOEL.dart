import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OEL FLUTTER Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: SplashScreen(),
    );
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
    Future.delayed(Duration(seconds: 15), () {
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
            Text('Welcome to Flutter Quiz App',style: TextStyle(color:Colors.pink,fontSize: 20),),
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
            Text('Are you Ready for the quiz?',style: TextStyle(color:Colors.purpleAccent),),
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
  int? _selectedOption;

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What is Flutter?',
      'answers': [
        {'text': 'A mobile app language', 'score': 1},
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
      'questionText': 'What can you make  through flutter ?',
      'answers': [
        {'text': 'mobile apps', 'score': 1},
        {'text': 'desktop apps', 'score': 0},
        {'text': 'websites', 'score': 0},
        {'text': 'animations', 'score': 0},
      ],
    },
    {
      'questionText': 'Is flutter cross platform ?',
      'answers': [
        {'text': 'no', 'score': 0},
        {'text': 'yes', 'score': 1},
        {'text': 'may be', 'score': 0},
        {'text': 'not sure', 'score': 0},
      ],
    },
  ];

  void _answerQuestion() {
    if (_selectedOption != null) {
      setState(() {
        _correctAnswers += (_questions[_questionIndex]['answers'] as List<Map<String, Object>>)[_selectedOption!]['score'] as int;
        _questionIndex++;
        _selectedOption = null;
      });

      if (_questionIndex >= _questions.length) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(_correctAnswers, _questions.length),
          ),
        );
      }
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
        selectedOption: _selectedOption,
        onOptionSelected: (value) {
          setState(() {
            _selectedOption = value;
          });
        },
      )
          : Center(child: CircularProgressIndicator()),
    );
  }
}

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function() answerQuestion;
  final int? selectedOption;
  final ValueChanged<int?> onOptionSelected;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
    required this.selectedOption,
    required this.onOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        Text(
          questions[questionIndex]['questionText'] as String,
          style: TextStyle(fontSize: 24,color:Colors.blue,fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .asMap()
            .entries
            .map((entry) {
          int idx = entry.key;
          Map<String, Object> answer = entry.value;
          return RadioListTile<int>(
            title: Text(answer['text'] as String),
            value: idx,
            groupValue: selectedOption,
            onChanged: onOptionSelected,
          );
        }).toList(),
        SizedBox(height: 20),
        ElevatedButton(
          style: ButtonStyle(

          ),
          onPressed: answerQuestion,
          child: Text('Next Question'),
        ),
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
            Center(
              child: Text(
                'WOW, You got $correctAnswers out of $totalQuestions correct!',
                style: TextStyle(fontSize: 25,color: Colors.pinkAccent,fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Restart Quiz',style: TextStyle(color: Colors.purpleAccent),),
            ),
          ],
        ),
      ),
    );
  }
}
