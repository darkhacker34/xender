import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../main.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> socialIcons=[
      {
        'logo':'assets/social_icons/whatsapp.png',
        'appName':'Status'
      },
      {
        'logo':'assets/social_icons/instagram.png',
        'appName':'Instagram'
      },
      {
        'logo':'assets/social_icons/fb.png',
        'appName':'FaceBook'
      },
      {
        'logo':'assets/social_icons/x.png',
        'appName':'X'
      },
      {
        'logo':'assets/social_icons/tiktok.png',
        'appName':'TikTok'
      },

    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff007141),
        title: Text('SOCIAL',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: wt*0.05,
        ),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: wt*0.05),
            child: Container(
              padding: EdgeInsets.all(wt*0.003),
              width: wt*0.06,
              decoration: BoxDecoration(
                color: Color(0xff007141),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: wt*0.004
                )
              ),
              child: Icon(Icons.question_mark_rounded, color: Colors.white, size: wt*0.04,),
            )
          )
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  width: wt*1,
                  height: ht*0.055,
                  padding: EdgeInsets.only(
                      left: wt*0.04
                  ),
                  margin: EdgeInsets.all(wt*0.03),
                  decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.06),
                      borderRadius: BorderRadius.circular(wt*0.1)
                  ),
                  child: Row(
                    mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Paste Link here',style:
                      TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: wt*0.035
                      ),),

                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(wt*0.01),
                        width: wt*0.4,
                        height: ht*0.055,
                        decoration: BoxDecoration(
                            color: Color(0xff007141),
                            borderRadius: BorderRadius.circular(wt*0.1)
                        ),
                        child: Text('Paste & Download', style: TextStyle(
                            color: Colors.white,
                            fontSize: wt*0.035,
                            fontWeight: FontWeight.w500
                        ),),
                      )
                    ],
                  ),
                ),

                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: socialIcons.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: ht*0.02,
                            left: wt*0.1
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              width: wt*0.13,
                              height: ht*0.06,
                              child: Stack(
                                children: [
                                  Image.asset(socialIcons[index]['logo'], width: wt*0.12,),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: wt*0.043,
                                      height: ht*0.02,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white,
                                              width: wt*0.003
                                          ),
                                          shape: BoxShape.circle,
                                          color: Colors.orange[700]
                                      ),
                                      child: Icon(Icons.download, color: Colors.white, size: wt*0.035,),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Text(socialIcons[index]['appName'], style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: wt*0.034
                            ),)
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          Column(
            children: [
              Icon(Icons.folder, size: wt*0.25,color: Colors.black12,),
              SizedBox(height: ht*0.02,),
              Text('No files', style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: wt*0.035,
                color: Colors.black54
              ),
              )
            ],
          ),
          SizedBox(height: ht*0.35,)
        ],
      ),
    );
  }
}
