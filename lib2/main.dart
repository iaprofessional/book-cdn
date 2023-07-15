import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

int _counter = 0;

void _incrementCounter() {
  _counter++;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Eye Tester Ultra';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Colors.greenAccent[400],
    );
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 20),
          ElevatedButton(
            style: style,
            onPressed: () {
              _navigateToNextScreen(context);
            },
            child: const Text('Start an Eye Test'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: style,
            onPressed: null,
            child: const Text('Consult Doctor'),
          ),
        ],
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => NewScreen()));
  }
}

class NewScreen extends StatefulWidget {
  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style1 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Colors.greenAccent[400],
    );
    final ButtonStyle style2 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Color.fromARGB(255, 255, 32, 3),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Question 1')),
      body: Container(
        margin: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 70.0,
        ),
        child: Column(
          children: <Widget>[
            Text(
              'Can You Read the letters below? Press Continue if you can or press stop if you cannot.',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'T',
              style: TextStyle(fontSize: 60.0),
            ),
            Text(
              'x z',
              style: TextStyle(fontSize: 50.0),
            ),
            Text(
              'y u r',
              style: TextStyle(fontSize: 40.0),
            ),
            Text(
              'A S D F',
              style: TextStyle(fontSize: 30.0),
            ),
            Text(
              'Q W E R T Y M V ',
              style: TextStyle(fontSize: 21.0),
            ),
            Text(
              ' I O P G B N C H J K ',
              style: TextStyle(fontSize: 17.0),
            ),
            Text(
              ' A R E D H T K  I V ',
              style: TextStyle(fontSize: 17.0),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: style1,
              onPressed: () {
                _incrementCounter();
                _navigateToNextScreen(context);
              },
              child: const Text('Continue'),
            ),
            ElevatedButton(
              style: style2,
              onPressed: () {
                _navigateToNextScreen(context);
              },
              child: const Text('Stop'),
            ),
          ],
        ),
      ),
    );
  }
}

void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => NewScreen1()));
}

class NewScreen1 extends StatefulWidget {
  @override
  State<NewScreen1> createState() => _NewScreen1State();
}

class _NewScreen1State extends State<NewScreen1> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style1 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Colors.greenAccent[400],
    );
    final ButtonStyle style2 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Color.fromARGB(255, 255, 32, 3),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Question 2')),
      body: Container(
        margin: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 70.0,
        ),
        child: Column(
          children: [
            Text(
              'Can you read the numbers below?',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '1',
              style: TextStyle(fontSize: 60.0),
            ),
            Text(
              '2 3',
              style: TextStyle(fontSize: 50.0),
            ),
            Text(
              '4 5 6',
              style: TextStyle(fontSize: 40.0),
            ),
            Text(
              '7 8 9 10',
              style: TextStyle(fontSize: 30.0),
            ),
            Text(
              '11 12 13 14 15 16 17 18 ',
              style: TextStyle(fontSize: 21.0),
            ),
            Text(
              '19 20 21 22 23 24 25 26 27 28',
              style: TextStyle(fontSize: 17.0),
            ),
            Text(
              '30 31 32 33 34 35 36 37 38 39 40',
              style: TextStyle(fontSize: 17.0),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: style1,
              onPressed: () {
                _incrementCounter();
                _navigateToNextScreen2(context);
              },
              child: const Text('Continue'),
            ),
            ElevatedButton(
              style: style2,
              onPressed: () {
                _navigateToNextScreen2(context);
              },
              child: const Text('Stop'),
            ),
          ],
        ),
      ),
    );
  }
}

void _navigateToNextScreen2(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => NewScreen2()));
}

class NewScreen2 extends StatefulWidget {
  @override
  State<NewScreen2> createState() => _NewScreen2State();
}

class _NewScreen2State extends State<NewScreen2> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style1 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Colors.greenAccent[400],
    );
    final ButtonStyle style2 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Color.fromARGB(255, 255, 32, 3),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Question 3')),
      body: Container(
        margin: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 70.0,
        ),
        child: Column(
          children: <Widget>[
            Text(
              'Can you see the number 74?',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(
              height: 20,
            ),
            Image(
              image: AssetImage('assets/74.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: style1,
              onPressed: () {
                _incrementCounter();
                _navigateToNextScreen3(context);
              },
              child: const Text('Continue'),
            ),
            ElevatedButton(
              style: style2,
              onPressed: () {
                _navigateToNextScreen3(context);
              },
              child: const Text('Stop'),
            ),
          ],
        ),
      ),
    );
  }
}

void _navigateToNextScreen3(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => NewScreen3()));
}

class NewScreen3 extends StatefulWidget {
  @override
  State<NewScreen3> createState() => _NewScreen3State();
}

class _NewScreen3State extends State<NewScreen3> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style1 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Colors.greenAccent[400],
    );
    final ButtonStyle style2 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Color.fromARGB(255, 255, 32, 3),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Question 4')),
      body: Container(
        margin: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 70.0,
        ),
        child: Column(
          children: <Widget>[
            Text(
              'Can you see the number 12?',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(
              height: 20,
            ),
            Image(
              image: AssetImage('assets/12.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: style1,
              onPressed: () {
                _incrementCounter();
                _navigateToNextScreen4(context);
              },
              child: const Text('Continue'),
            ),
            ElevatedButton(
              style: style2,
              onPressed: () {
                _navigateToNextScreen4(context);
              },
              child: const Text('Stop'),
            ),
          ],
        ),
      ),
    );
  }
}

void _navigateToNextScreen4(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => NewScreen4()));
}

class NewScreen4 extends StatefulWidget {
  @override
  State<NewScreen4> createState() => _NewScreen4State();
}

class _NewScreen4State extends State<NewScreen4> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style1 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Colors.greenAccent[400],
    );
    final ButtonStyle style2 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Color.fromARGB(255, 255, 32, 3),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Question 5')),
      body: Container(
        margin: const EdgeInsets.only(
          left: 35.0,
          right: 20.0,
          top: 70.0,
        ),
        child: Column(
          children: <Widget>[
            Text(
              'Can you see the number 3?',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(
              height: 20,
            ),
            Image(
              image: AssetImage('assets/3.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: style1,
              onPressed: () {
                _incrementCounter();
                _navigateToNextScreen5(context);
              },
              child: const Text('Continue'),
            ),
            ElevatedButton(
              style: style2,
              onPressed: () {
                _navigateToNextScreen5(context);
              },
              child: const Text('Stop'),
            ),
          ],
        ),
      ),
    );
  }
}

void _navigateToNextScreen5(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => NewScreen5()));
}

class NewScreen5 extends StatefulWidget {
  @override
  State<NewScreen5> createState() => _NewScreen5State();
}

class _NewScreen5State extends State<NewScreen5> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style1 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Colors.greenAccent[400],
    );
    final ButtonStyle style2 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Color.fromARGB(255, 255, 32, 3),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Results')),
      body: Container(
        margin: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 70.0,
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Your score is $_counter/5',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                '0 to 2 - You need to visit an eye doctor.',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                '3 to 4 - Your eyesight is not bad but has minor imperfections. You should visit an eye doctor.',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                '5/5 - Your eyesight is perfectly fine there is no need to visit an eye doctor',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
