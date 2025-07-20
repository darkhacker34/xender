import 'package:flutter/material.dart';

import '../main.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  bool isGrid=false;
  List checks=[];
  List<Map> videos = [
    {
      'songName': 'Vazhithunaiye...',
      'thumb': 'assets/home/mus1.png',
      'size': '1.58MB',
      'duration': '3:45'
    },
    {
      'songName': 'Ayla Allela...',
      'thumb': 'assets/home/mus2.png',
      'size': '5.8MB',
      'duration': '4:12'
    },
    {
      'songName': 'Tujhko Inkar...',
      'thumb': 'assets/home/mus3.png',
      'size': '458KB',
      'duration': '2:58'
    },
    {
      'songName': 'OHO Rathamma...',
      'thumb': 'assets/home/mus4.png',
      'size': '3.12MB',
      'duration': '3:20'
    },
    {
      'songName': 'Premalo...',
      'thumb': 'assets/home/mus5.png',
      'size': '8MB',
      'duration': '5:10'
    },
    {
      'songName': 'Minecraft...',
      'thumb': 'assets/home/mus6.png',
      'size': '1.4MB',
      'duration': '2:30'
    },
    {
      'songName': 'Aggipulle...',
      'thumb': 'assets/home/mus7.png',
      'size': '1.8MB',
      'duration': '3:05'
    },
    {
      'songName': 'Maatikinaaru Orutharu...',
      'thumb': 'assets/home/mus8.png',
      'size': '2.2MB',
      'duration': '4:00'
    },
    {
      'songName': 'One More Time...',
      'thumb': 'assets/home/mus9.png',
      'size': '1.15MB',
      'duration': '2:45'
    },
    {
      'songName': 'Jaat Theme Song...',
      'thumb': 'assets/home/mus10.png',
      'size': '4.58MB',
      'duration': '3:50'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: wt*0.8,
              height: wt*0.12,
              margin: EdgeInsets.all(wt*0.03),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(wt*0.02)
              ),
              child: Padding(
                padding: EdgeInsets.all(wt*0.02),
                child: Row(
                  children: [
                    Icon(Icons.search, size: wt*0.07,color: Colors.grey,),
                    SizedBox(width: wt*0.02,),
                    Text('Search local files')
                  ],
                ),
              ),
            ),

            IconButton(
                onPressed: () {
                  setState(() {
                    isGrid=!isGrid;
                  });
                },
                icon: Icon(isGrid?Icons.list:Icons.grid_view)
            )
          ],
        ),
        Container(
          width: wt*1,
          height: wt*0.13,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.4),
          ),
          child: Padding(
            padding: EdgeInsets.all(wt*0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Apr 15, 2025', style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontWeight: FontWeight.bold,
                    fontSize: wt*0.037
                ),),
                InkWell(
                    borderRadius: BorderRadius.circular(wt*0.5),
                    onTap: () {
                      setState(() {
                        if(checks.length<videos.length){
                          checks.clear();
                          for(int i=0;i<videos.length;i++){
                            checks.add(i);
                          }
                        }else{
                          checks.clear();
                        }
                      });
                    },
                    child: checks.length!=videos.length?Icon(Icons.radio_button_unchecked, size: wt*0.07, color: Colors.grey.shade600,):
                    Icon(Icons.check_circle,size: wt*0.07, color: Colors.green,)
                )
              ],
            ),
          ),
        ),

        isGrid?Expanded(
          child: GridView.builder(
            itemCount: videos.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                      Container(
                        margin: EdgeInsets.all(wt*0.01),
                        padding: EdgeInsets.all(wt*0.01),
                        width: wt*0.3,
                        height: wt*0.2,
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(wt*0.02),
                          image: DecorationImage(image: AssetImage(videos[index]['thumb']),fit: BoxFit.cover)
                      ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
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
                                child: !checks.contains(index)?Icon(Icons.radio_button_unchecked, size: wt*0.07, color: Colors.white,):
                                Icon(Icons.check_circle,size: wt*0.07, color: Colors.green,)
                            ),
                            Container(
                              width: wt*0.12,
                              height: wt*0.05,
                              decoration: BoxDecoration(
                                  color: Colors.black38,
                                  borderRadius: BorderRadius.circular(wt*1)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.play_arrow, color: Colors.white, size: wt*0.025,),
                                  Text(videos[index]['duration'],style: TextStyle(color: Colors.white,fontSize: wt*0.025),)
                                ],
                              ),
                            ),


                          ]
                        ),
                      ),
                      Text(videos[index]['songName'], style: TextStyle(
                          color: Colors.black,
                          overflow: TextOverflow.ellipsis,
                          fontSize: wt*0.03,
                          fontWeight: FontWeight.w500
                      ),),
                      Text('/Downloads/Video',style: TextStyle(
                          color: Colors.grey.shade500,
                          overflow: TextOverflow.ellipsis,
                          fontSize: wt*0.025,
                          fontWeight: FontWeight.w500
                      )),
                      Text(videos[index]['size'],style: TextStyle(
                          color: Colors.grey.shade500,
                          overflow: TextOverflow.ellipsis,
                          fontSize: wt*0.02,
                          fontWeight: FontWeight.w400
                      )),
                ],
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          ),
        ):
        Expanded(
          child: ListView.separated(
            itemCount: videos.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(wt*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(wt*0.01),
                          padding: EdgeInsets.all(wt*0.01),
                          width: wt*0.35,
                          height: wt*0.23,
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(wt*0.02),
                              image: DecorationImage(image: AssetImage(videos[index]['thumb']),fit: BoxFit.cover)
                          ),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: wt*0.12,
                              height: wt*0.05,
                              decoration: BoxDecoration(
                                  color: Colors.black38,
                                  borderRadius: BorderRadius.circular(wt*1)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.play_arrow, color: Colors.white, size: wt*0.025,),
                                  Text(videos[index]['duration'],style: TextStyle(color: Colors.white,fontSize: wt*0.025),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: wt*0.02,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(videos[index]['songName'], style: TextStyle(
                                color: Colors.black,
                                overflow: TextOverflow.ellipsis,
                                fontSize: wt*0.04,
                                fontWeight: FontWeight.w500
                            ),),
                            Text('/Downloads/Video',style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: wt*0.04,
                                fontWeight: FontWeight.w500
                            )),
                            Text(videos[index]['size'],style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: wt*0.04,
                                fontWeight: FontWeight.w400
                            ))
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
                        child: !checks.contains(index)?Icon(Icons.radio_button_unchecked, size: wt*0.07, color: Colors.grey.shade600,):
                        Icon(Icons.check_circle,size: wt*0.07, color: Colors.green,)
                    )
                  ],
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          ),
        )
      ],
    );
  }
}
