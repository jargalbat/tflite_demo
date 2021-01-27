import 'package:flutter/material.dart';

class FirebaseAPIsRoute extends StatefulWidget {
  @override
  _FirebaseAPIsRouteState createState() => _FirebaseAPIsRouteState();
}

class _FirebaseAPIsRouteState extends State<FirebaseAPIsRoute> {
  static final List<String> _exampleWidgetNames = <String>[
    'PictureScanner',
    'CameraPreviewScanner',
    'MaterialBarcodeScanner',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Firebase APIs demo')),
      body: ListView.builder(
        itemCount: _exampleWidgetNames.length,
        itemBuilder: (BuildContext context, int index) {
          final String widgetName = _exampleWidgetNames[index];

          return Container(
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            child: ListTile(
              title: Text(widgetName),
              onTap: () => Navigator.pushNamed(context, '/$widgetName'),
            ),
          );
        },
      ),
    );
  }
}
