import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../main.dart';

class ToMp3 extends StatelessWidget {
  const ToMp3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff007141),
        title: Text('ToMP3',style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
      ),

      body: Container(
        margin: EdgeInsets.all(wt*0.04),
        width: wt*1,
        height: wt*0.14,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 1,
              spreadRadius: 2
            )
          ],
            color: Color(0xffF6F7FB).withOpacity(0.7),
            borderRadius: BorderRadius.circular(wt*0.1)
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: wt*0.04
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Select Video', style: TextStyle(
                color: Colors.grey[600],
                fontSize: wt*0.04,
                fontWeight: FontWeight.w500
              ),),

              Container(
                margin: EdgeInsets.all(wt*0.01),
                width: wt*0.28,
                height: ht*0.08,
                decoration: BoxDecoration(
                  color: Color(0xffF6F7FB),
                  borderRadius: BorderRadius.circular(wt*0.1),
                  border: Border.all(
                    color: Color(0xff007141),
                    width: wt*0.008
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.video_collection_sharp, color: Color(0xff007141),),
                    Icon(MingCute.arrows_right_fill, color: Color(0xff007141),),
                    Icon(MingCute.music_line, color: Color(0xff007141),)
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
