
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../main.dart';

class Photo extends StatefulWidget {
  const Photo({super.key});

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  List photoCheck1=[];
  List photoCheck2=[];

  List<String> ai=[
    'Similar Photos',
    'Duplicate Photos',
    'Screenshot',
    'Face recognition',
    'Text recognition'
  ];
  Map<String, List<String>> photos={
    'first':[
      'assets/history/received/imgt.png',
      'assets/history/received/img_2.png',
      'assets/history/received/img_8.png',
      'assets/history/received/img_1.png',
      'assets/history/received/img_4.png',
      'assets/history/received/img_5.png',
      'assets/history/received/img_7.png',
    ],
    'second':[
      'assets/history/received/img_2.png',
      'assets/history/received/img_8.png',
      'assets/history/received/img_4.png',
    ],

  };
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            TabBar(
                unselectedLabelColor: Color(0xff007141),
                padding: EdgeInsets.all(wt*0.03),
                labelStyle: TextStyle(
                    fontSize: wt*0.035,
                    fontWeight: FontWeight.w500
                ),
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.white,
                indicator: BoxDecoration(
                    color: Color(0xff007141),
                    borderRadius: BorderRadius.circular(wt*0.02)
                ),
                tabs: [
                  Tab(
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.image_outlined, size: wt*0.08,),
                        Tab(text: '1400')
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(BoxIcons.bxs_brain),
                        Tab(text: 'AI')
                      ],
                    ),
                  )
                ]
            ),
            Expanded(
              child: TabBarView(
                  children: [
                    ListView(
                      children: [
                        Container(
                          width: wt*1,
                          height: wt*0.13,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: wt*0.04
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Apr 10, 2025', style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.bold,
                                  fontSize: wt*0.037
                                ),),
                                IconButton(
                                    onPressed: () {
                                      if(photoCheck1.length<photos['first']!.length){
                                        photoCheck2.clear();
                                        for(int i=0;i<photos['first']!.length;i++){
                                          photoCheck1.add(i);
                                        }
                                      }else{
                                        photoCheck1.clear();
                                      }
                                      setState(() {

                                      });
                                    },
                                    icon: photoCheck1.length<photos['first']!.length?Icon(Icons.radio_button_unchecked):Icon(Icons.check_circle, color: Colors.green,)
                                )
                              ],
                            ),
                          ),
                        ),
                        GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: photos['first']?.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(wt*0.003),
                              decoration: BoxDecoration(
                                image: DecorationImage(image: Image.asset(photos['first']![index]).image, fit: BoxFit.cover)
                              ),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  color: Colors.white,
                                    onPressed: () {
                                      if(photoCheck1.contains(index)){
                                        photoCheck1.remove(index);
                                      }else{
                                        photoCheck1.add(index);
                                      }
                                      setState(() {

                                      });
                                    },
                                    icon: photoCheck1.contains(index)?Icon(Icons.check_circle,color: Colors.green,):Icon(Icons.radio_button_unchecked, )
                                )
                              ),
                            );
                          },
                        ),
                        Container(
                          width: wt*1,
                          height: wt*0.13,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: wt*0.04
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Apr 2, 2025', style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontWeight: FontWeight.bold,
                                    fontSize: wt*0.037
                                ),),

                                IconButton(
                                    onPressed: () {
                                      if(photoCheck2.length<photos['first']!.length){
                                        photoCheck2.clear();
                                        for(int i=0;i<photos['first']!.length;i++){
                                          photoCheck2.add(i);
                                        }
                                      }else{
                                        photoCheck2.clear();
                                      }
                                      setState(() {

                                      });
                                    },
                                    icon: photoCheck2.length<photos['first']!.length?Icon(Icons.radio_button_unchecked):Icon(Icons.check_circle, color: Colors.green,)
                                )
                                
                              ],
                            ),
                          ),
                        ),

                        GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: photos['second']?.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                            itemBuilder: (context, index) {
                              return Container(
                                width: wt*0.4,
                                margin: EdgeInsets.all(wt*0.003),
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: Image.asset(photos['second']![index]).image, fit: BoxFit.cover)
                                ),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                        color: Colors.white,
                                        onPressed: () {
                                          if(photoCheck2.contains(index)){
                                            photoCheck2.remove(index);
                                          }else{
                                            photoCheck2.add(index);
                                          }
                                          setState(() {

                                          });
                                        },
                                        icon: photoCheck2.contains(index)?Icon(Icons.check_circle,color: Colors.green,):Icon(Icons.radio_button_unchecked, )
                                    )
                                ),
                              );
                            },
                        )
                      ],
                    ),

                    Stack(
                      children: [
                        Center(
                          child: Container(
                            width: wt*0.9,
                            height: wt*1.1,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                transform: GradientRotation(wt*1),
                                  colors: [
                                    Color(0xffe5ecf3),
                                    Color(0xffd0f5e9)
                                  ]
                              ),
                              borderRadius: BorderRadius.circular(wt*0.03)
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(height: wt*0.1,),
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: ai.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.all(wt*0.02),
                                      width: wt*1,
                                      height: wt*0.11,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                        borderRadius: BorderRadius.circular(wt*0.05)
                                      ),
                                      child: Center(
                                        child:
                                        Text(ai[index], style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: wt*0.035
                                        ),),
                                      ),
                                    );
                                  },
                                ),
                                Container(
                                  margin: EdgeInsets.all(wt*0.02),
                                  width: wt*0.75,
                                  height: wt*0.14,
                                  decoration: BoxDecoration(
                                      color: Colors.green[800],
                                      borderRadius: BorderRadius.circular(wt*0.1)
                                  ),
                                  child: Center(
                                    child: Text('AI ON PC', style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: wt*0.04
                                    ),),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          // color: Colors.red,
                          width: wt*1,
                          height: ht*0.18,
                          child: Align(
                            child: CircleAvatar(
                              radius: wt*0.11,
                              backgroundImage: Image.asset('assets/logo/ai.png',fit: BoxFit.cover,).image,
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
    );
  }
}
