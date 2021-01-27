import 'package:flutter/material.dart';
import 'package:tflite_demo/tf_local_route.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeRoute(),
    );
  }
}

class HomeRoute extends StatefulWidget {
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TensorFlow demo')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RaisedButton(
              child: Text('Firebase'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TfLocalRoute()));
              },
            ),
            RaisedButton(
              child: Text('Local'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TfLocalRoute()));
              },
            )
          ],
        ),
      ),
    );
  }
}
