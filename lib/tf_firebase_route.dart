import 'package:flutter/material.dart';

class TfFirebaseRoute extends StatefulWidget {
  @override
  _TfFirebaseRouteState createState() => _TfFirebaseRouteState();
}

class _TfFirebaseRouteState extends State<TfFirebaseRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TensorFlow demo')),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              RaisedButton(
                child: Text('Test'),
                onPressed: () {
                  //
                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                child: Text('test'),
                onPressed: () {
                  //
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
