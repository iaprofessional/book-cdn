import 'package:flutter/material.dart'; //quiz.dart is a lib I imported
import 'package:quizalloop/app/quiz.dart';
import 'package:resize/resize.dart';
import 'package:google_fonts/google_fonts.dart';

class StartQuiz extends StatefulWidget {
  StartQuiz({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<StartQuiz> {
  int _questionnumber = 1;
  String _questionlabel = "Question: 1";
  int _counter = 0;
  Color _color = Colors.black;
  Color _yescolor = Colors.green;
  Color _nocolor = Colors.red;
  String _question = "What language is usually used for making the os kernel?";
  String _questionimgurl =
      "https://www.pngitem.com/pimgs/m/235-2352000_operating-system-icon-png-transparent-png.png";
  String _questionoption1 = "None of these";
  String _questionoption2 = "Dart";
  String _questionoption3 = "Lua";
  String _questionoption4right = "C or C++";
  void _incrementCounter() {
    setState(() {
      _questionnumber++;
      _color = _yescolor;
      _counter++;   
    });
  }

  void _dencrementCounter() {
    setState(() {
      _questionnumber++;
      _color = _nocolor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Resize(
      builder: () {
        return Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
            title: Text(
              'Quizalloop',
              style: GoogleFonts.orbitron(),
            ),
            automaticallyImplyLeading: false,
          ),
          body: Center(
              child: Column(
            children: [
              Text(
                '$_counter' + '/1',
                style: TextStyle(
                  fontSize: 21.sp,
                  color: _color,
                ),
              ),
              QuizView(
                image: Container(
                  width: 150.w,
                  height: 300.h,
                  child: Image.network(_questionimgurl),
                ),
                showCorrect: true,
                tagBackgroundColor: Colors.deepOrange,
                tagColor: Colors.black,
                questionTag: _questionlabel,
                answerColor: Colors.white,
                answerBackgroundColor: Color.fromARGB(255, 255, 0, 111),
                questionColor: Colors.white,
                backgroundColor: Color.fromARGB(255, 111, 0, 255),
                width: 300.w,
                height: 500.h,
                question: _question,
                rightAnswer: _questionoption4right,
                wrongAnswers: [
                  _questionoption1,
                  _questionoption2,
                  _questionoption3
                ],
                onRightAnswer: () => _incrementCounter(),
                onWrongAnswer: () => _dencrementCounter(),
              ),
            ],
          )),
        );
      },
    );
  }
}
