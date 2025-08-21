import 'package:flutter/material.dart';
import 'package:xender/splash_screen.dart';
import 'package:xender/xender.dart';

void main() {
  runApp(const MyApp());
}
dynamic wt;
dynamic ht;
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    wt = MediaQuery.of(context).size.width;
    ht = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",

        routes: {
          "/first": (context) => const  Xender(),
        },
        home: SplashScreen(),
      ),
    );
  }
}