import 'package:flutter/material.dart';

import '../main.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  List<Map> tabs=[
    {
      'thump':'assets/history/received/imgt.png',
      'title':'IMG_20250923_5629.png',
      'size':'1.77MB'
    },{
      'thump':'assets/history/received/img_1.png',
      'title':'IMG_20250923_2419.png',
      'size':'3.54MB'
    },{
      'thump':'assets/history/received/img_2.png',
      'title':'Avengers_Endgame.png',
      'size':'6.21MB'
    },{
      'thump':'assets/history/received/img_8.png',
      'title':'Doja_Cat_Woman.mp3',
      'size':'11.7MB'
    },{
      'thump':'assets/history/received/img_1.png',
      'title':'IMG_20250923_1887.png',
      'size':'4.43MB'
    },
    {
      'thump':'assets/history/received/img_4.png',
      'title':'Soodaana "Pushpa 2".mp3',
      'size':'7.98MB'
    },{
      'thump':'assets/history/received/img_5.png',
      'title':'Imagine_Dragons.mp3',
      'size':'3.9MB'
    },
    {
      'thump':'assets/history/received/img_6.png',
      'title':'IMG_20250923_1834.png',
      'size':'20.00MB'
    },{
      'thump':'assets/history/received/img_7.png',
      'title':'IMG_20250923_1829.png',
      'size':'15.42MB'
    },
  ];
  List checks=[];
  bool seeAll=false;
  @override
  Widget build(BuildContext context) {
    Color? color;
    return DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                TabBar(
                  physics: NeverScrollableScrollPhysics(),
                  dividerColor: Colors.transparent,
                  onTap: (value) {
                    setState(() {
                      if(value==0){
                        color=Colors.white;
                      }else{
                        color=Colors.green.shade800;
                      }
                    });

                  },
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.green[800],
                    padding: EdgeInsets.only(
                      top: ht*0.01,
                      right: wt*0.07,
                      left: wt*0.07
                    ),
                    indicator: BoxDecoration(
                      color: Colors.green[800],
                      borderRadius: BorderRadius.circular(wt*0.01)
                    ),
                    tabs: [
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.arrow_downward, color: color,),
                            Text('Received'),
                          ],
                        ),
                      ),
                      Tab(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Icon(Icons.send, color: color,),
                           Text('Send'),
                         ],
                       ),
                      ),
                    ]
                ),

                Expanded(
                  child: TabBarView(
                      children: [
                        Column(
                          children: [
                            // Received
                            Container(
                              padding: EdgeInsets.all(wt*0.04),
                              margin: EdgeInsets.only(
                                top: ht*0.02
                              ),
                              width: wt*1,
                              height: ht*0.065,
                              color: Colors.grey.withOpacity(0.3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Apr 08,2025',style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.bold,
                                  fontSize: wt*0.04
                                ),),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      seeAll=!seeAll;
                                    });
                                  },
                                    child: Text(seeAll?'see less':'see all')
                                )
                              ],
                            ),
                            ),

                            Expanded(
                              child: ListView.builder(
                                itemCount: seeAll?tabs.length:tabs.sublist(0, 3).length,
                                itemBuilder: (context, index) {
                                  return Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.all(wt*0.01),
                                            width: wt*0.2,
                                            height: wt*0.2,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(wt*0.02),
                                                image: DecorationImage(
                                                    image: AssetImage(tabs[index]['thump']),fit: BoxFit.cover)
                                            ),
                                          ),
                                          SizedBox(width: wt*0.04,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(tabs[index]['title'], style: TextStyle(
                                                  fontWeight: FontWeight.w500
                                              ),),
                                              SizedBox(height: ht*0.025,),
                                              Text(tabs[index]['size'], style: TextStyle(
                                                  color: Colors.grey.shade600,
                                                  fontWeight: FontWeight.w500
                                              ),)
                                            ],
                                          ),
                                        ],
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(right: wt*0.04),
                                        width: wt*0.18,
                                        height: ht*0.037,
                                        decoration:BoxDecoration(
                                          borderRadius: BorderRadius.circular(wt*0.007),
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.green.shade800,
                                            width: wt*0.004
                                          )
                                        ),
                                        child: Text('View', style: TextStyle(
                                          color: Colors.green.shade800,
                                          fontWeight: FontWeight.bold
                                        ),),
                                      )
                                    ]
                                  );
                                },
                              ),
                            )
                          ],
                        ),


                        // SEND
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(wt*0.04),
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(
                                  top: ht*0.02
                              ),
                              width: wt*1,
                              height: ht*0.065,
                              color: Colors.grey.withOpacity(0.3),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('March 28,2025',style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.bold,
                                      fontSize: wt*0.04
                                  ),),

                                  InkWell(
                                    borderRadius: BorderRadius.circular(wt*0.5),
                                    onTap: () {
                                      setState(() {
                                        if(checks.length<tabs.length){
                                          checks.clear();
                                          for(int i=0;i<tabs.length;i++){
                                            checks.add(i);
                                          }
                                        }else{
                                          checks.clear();
                                        }
                                      });
                                    },
                                    child: checks.length!=tabs.length?Icon(Icons.radio_button_unchecked, color: Colors.grey.shade600,):
                                    Icon(Icons.check_circle, color: Colors.green,)
                                  )

                                ],
                              ),
                            ),

                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(wt*0.04),
                                child: ListView.builder(
                                  itemCount: tabs.length,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                bottom: wt*0.03,
                                                right: wt*0.03
                                              ),
                                              width: wt*0.2,
                                              height: wt*0.2,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(wt*0.03),
                                                  image: DecorationImage(image: AssetImage(tabs[tabs.length-index-1]['thump']),fit: BoxFit.cover)
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(tabs[tabs.length-index-1]['title']),
                                                SizedBox(height: wt*0.04,),
                                                Text(tabs[tabs.length-index-1]['size'])
                                              ],
                                            ),

                                          ],
                                        ),

                                        InkWell(
                                            borderRadius: BorderRadius.circular(wt*0.5),
                                            onTap: () {
                                              setState(() {
                                                if(checks.contains(index)){
                                                  checks.remove(index);
                                                }else{
                                                  checks.add(index);
                                                }
                                              });
                                            },
                                            child: !checks.contains(index)?Icon(Icons.radio_button_unchecked, color: Colors.grey.shade600,):
                                            Icon(Icons.check_circle, color: Colors.green,)
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),
                            )

                          ],
                        )
                      ]
                  ),
                )

              ],
            ),
          ),
        )
    );
  }
}
