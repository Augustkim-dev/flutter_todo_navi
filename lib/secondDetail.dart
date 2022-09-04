import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondDetail extends StatelessWidget {
  const SecondDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = new TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('2nd Page'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: controller,
                keyboardType: TextInputType.text,
              ),
              ElevatedButton(
                child: Text('Save'),
                onPressed: () {
                  // Navigator.of(context).pushReplacementNamed('/third');
                  Navigator.of(context).pop(controller.value.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
