import 'package:flutter/material.dart';
import 'package:tflite_demo/tf_firebase_route.dart';
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
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Local
              RaisedButton(
                child: Text('Local test'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TfLocalRoute()));
                },
              ),

              SizedBox(height: 20.0),

              /// Firebase
              RaisedButton(
                child: Text('Firebase test'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TfFirebaseRoute()));
                },
              ),

              SizedBox(height: 20.0),

              /// Firebase
              RaisedButton(
                child: Text('Firebase default'),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => TfFirebaseRoute()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
