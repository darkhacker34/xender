import 'package:flutter/material.dart';
import 'package:xender/xender.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => Xender(),));
    },);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.all(wt*0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/splash_logo.png',width: wt*0.04,),
              SizedBox(width: wt*0.01,),
              Text('xender',)
            ],
          ),
        ),
      ),
    );
  }
}
