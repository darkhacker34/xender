import 'package:flutter/material.dart';

import '../main.dart';

class Download extends StatefulWidget {
  const Download({super.key});

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.movie_creation_outlined, size: wt*0.25,color: Colors.grey[400],),
            SizedBox(height: ht*0.025,),
            Text('No Downloads',style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: wt*0.04
            ),)
          ],
        ),
      ),
    );
  }
}
