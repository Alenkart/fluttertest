import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class _MyAppWidgetState extends State<MyApp> {
  int _counter = 0;

  void _incrementerCounter() =>  setState(() => _counter++);

  @override
  Widget build(BuildContext ctx) {
    return new MaterialApp(
      title: "Flutter test",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('This is my first flutter app'),
        ),
        body: new Center(
          child:
              new Text("What is this ? $_counter", style: new TextStyle(fontSize: 50.0)),
        ),
        floatingActionButton: new FloatingActionButton(
            onPressed: () => this._incrementerCounter(),
            tooltip: 'Increment',
            child: new Icon(Icons.add)),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppWidgetState createState() => new _MyAppWidgetState();
}
