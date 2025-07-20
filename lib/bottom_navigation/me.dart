import 'package:flutter/material.dart';
import '../main.dart';
import '../xender.dart';

class Me extends StatelessWidget {
  const Me({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> xenderDetails=[
      {
        'value':'336',
        'id':'Send'
      },
      {
        'value':'550',
        'id':'Received'
      },
      {
        'value':'21',
        'id':'People'
      },
      {
        'value':'176',
        'id':'GB'
      },
    ];
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: wt*1,
            height: ht*0.3,
            child: Stack(
              children: [
                Container(
                  width: wt*1,
                  height: ht*0.25,
                  decoration: BoxDecoration(
                      color: Color(0xff007141),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(wt*0.1),
                          bottomLeft: Radius.circular(wt*0.1)
                      )
                  ),
                  child: Stack(
                    children: [
                      Container(
                        // color: Colors.red,
                        padding: EdgeInsets.only(
                          top: ht*0.05,
                          left: wt*0.06,
                          right: wt*0.07
                        ),
                        height: ht*0.15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: ht*0.1,
                                  width: wt*0.221,
                                  // color: Colors.red,
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: CircleAvatar(
                                          radius: wt*0.1,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            backgroundImage: Image.asset('assets/logo/xender_profile.png').image,
                                            radius: wt*0.095,
                                            backgroundColor: Colors.pink[200],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          width: wt*0.078,
                                          height: ht*0.03,
                                          // color: Color(0x892d1bcb),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  width: wt*0.05,
                                                  height: ht*0.025,
                                                  decoration: BoxDecoration(
                                                      color: Color(0x8E007141),
                                                      borderRadius: BorderRadius.circular(wt*0.01),
                                                      border: Border.all(
                                                          color: Colors.white,
                                                          width: wt*0.005
                                                      )
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                  alignment: Alignment.topCenter,
                                                  child: Icon(Icons.edit, color: Colors.white,size: wt*0.05,))
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: wt*0.04,),
                                Text(profileName==null?'user':profileName.toString(),style: TextStyle(
                                  color: Colors.white,
                                  fontSize: wt*0.06
                                ),)
                              ],
                            ),

                            ImageIcon(Image.asset('assets/icons/sms-chat.png').image, color: Colors.white,size: wt*0.075,)

                          ],
                        ),
                      ),


                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: wt*0.94,
                    height: ht*0.11,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(wt*0.01),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          spreadRadius: 2
                        )
                      ]
                    ),
                    child: ListView.builder(
                      itemCount: xenderDetails.length, 
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) { 
                        return Container(
                          padding: EdgeInsets.all(wt*0.04),
                          width: wt*0.24,
                          // color: Color(0xa02a8ed7),
                          child: Column(
                            children: [
                              Text(xenderDetails[index]['value'], style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: wt*0.05
                              ),),
                              SizedBox(height: ht*0.01,),
                              Text(xenderDetails[index]['id'],style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: wt*0.035
                              ))
                            ],
                          ),
                        );
                      },
                    ),

                  ),
                )
              ]
            ),
          ),
          ListTile(
            title: Text('Contact Us', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: wt*0.045
            ),),
            leading: Container(
                padding: EdgeInsets.all(wt*0.008),
                width: wt*0.057,
                height: ht*0.027,
                decoration: BoxDecoration(
                    color: Color(0xff6dcc07),
                    borderRadius: BorderRadius.circular(wt*0.01)
                ),
                child: Icon(Icons.info, color: Colors.white,size: wt*0.04,)
            ),
            contentPadding: EdgeInsets.only(
              top:ht*0.03,
              left: wt*0.05,
              right: wt*0.05
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
                top:ht*0.01,
                left: wt*0.05,
                right: wt*0.05
            ),
            title: Text('1Win', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: wt*0.044
            ),),
            leading: CircleAvatar(
              radius: wt*0.03,
              backgroundImage: Image.asset('assets/logo/1win.png').image,
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}
