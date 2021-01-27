import 'package:flutter/material.dart';
import 'package:tflite_demo/firebase_apis_route.dart';
import 'package:tflite_demo/ml_vision/camera_preview_scanner.dart';
import 'package:tflite_demo/ml_vision/material_barcode_scanner.dart';
import 'package:tflite_demo/tf_firebase_route.dart';
import 'package:tflite_demo/tf_local_route.dart';

import 'ml_vision/picture_scanner.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomeRoute(),
        '/PictureScanner': (BuildContext context) => PictureScanner(),
        '/CameraPreviewScanner': (BuildContext context) => CameraPreviewScanner(),
        '/MaterialBarcodeScanner': (BuildContext context) => const MaterialBarcodeScanner(),
      },
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
              /// Local model
              RaisedButton(
                child: Text('Local model'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TfLocalRoute()));
                },
              ),

              SizedBox(height: 20.0),

              /// Firebase model
              RaisedButton(
                child: Text('Firebase model'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TfFirebaseRoute()));
                },
              ),

              SizedBox(height: 20.0),

              /// Firebase APIs
              RaisedButton(
                child: Text('Firebase APIs'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FirebaseAPIsRoute()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
