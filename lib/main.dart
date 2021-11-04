import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Secondapp",
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('second'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
                child: Icon(Icons.add),

              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _counter--;
                  });
                },
                child: Icon(Icons.remove),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
