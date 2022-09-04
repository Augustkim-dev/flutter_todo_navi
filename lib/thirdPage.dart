import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String args = ModalRoute.of(context)!.settings.arguments.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('3rd Page'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text(
              args,
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
    );
  }
}
