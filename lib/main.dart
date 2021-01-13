import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Solid Software Test Work'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Random _random = new Random();
  Color _color = Color(0xFFFFFFFF);

  void _changeColor() {
    setState(() {
      _color = Color.fromRGBO(
          _random.nextInt(255),
          _random.nextInt(255),
          _random.nextInt(255),
          _random.nextDouble() * 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: _changeColor,
        child: Container(
          alignment: Alignment.center,
          child: Text('Hey, there!',
                style: TextStyle(
                  fontSize: 45.0,
                )
          ),
          color: _color,
        ),
      )
    );
  }
}
