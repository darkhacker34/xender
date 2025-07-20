import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  Color clr=Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  clr=Colors.green;
                });
              },
                child: Text('data', style: TextStyle(color: clr),)
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    clr=Colors.green;
                  });
                },
                child: Text('data', style: TextStyle(color: clr),)
            ),
          ],
        ),
      ),
    );
  }
}
