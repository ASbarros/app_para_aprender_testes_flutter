import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  static const Key buttonKey = Key('buttonKey');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Widget'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            key: buttonKey,
            onPressed: () {},
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Button',
        child: Icon(Icons.add),
      ),
    );
  }
}
