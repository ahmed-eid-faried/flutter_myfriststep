import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY FIRST STEP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _size = 200.0;
  bool _large = false;

  void _updateSize() {
    setState(() {
      _size = _large ? 250.0 : 100.0;
      _large = !_large;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _updateSize(),
              child: AnimatedSize(
                curve: Curves.easeIn,
                duration: const Duration(seconds: 1),
                child: FittedBox(
                    child: FlutterLogo(
                  size: _size,
                  textColor: const Color(0xFF9D0FAA),
                )),
              ),
            ),
            Text(
              "MY FIRST STEP",
              style: TextStyle(
                fontFamily: "Astral Sisters",
                fontSize: 35,
                color: Colors.deepPurple[600],
              ),
            )
          ],
        ),
      ),
    );
  }
}
