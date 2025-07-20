import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:xender/home_page_tabs/download.dart';
import 'package:xender/home_page_tabs/file.dart';
import 'package:xender/home_page_tabs/history.dart';
import 'package:xender/home_page_tabs/music.dart';
import 'package:xender/home_page_tabs/video.dart';
import '../home_page_tabs/app.dart';
import '../home_page_tabs/photo.dart';
import '../main.dart';
import '../xender.dart';

class HomeP extends StatefulWidget {
  const HomeP({super.key});

  @override
  State<HomeP> createState() => _HomePState();
}
List<Map> popMenu=[
  {
    'icon':Icons.laptop_mac_sharp,
    'txt':'Connect to PC'
  },
  {
    'icon': Icons.phone_android_sharp,
    'txt':'Connect to KaiOS'
  },
  {
    'icon':Icons.android_rounded,
    'txt':'Connect to Android'
  },
  {
    'icon':Icons.share,
    'txt':'Share Xender'
  },
  {
    'icon':Icons.transfer_within_a_station,
    'txt':'Phone Copy'
  },
];
String? currentUser;
List<String> users=[
  'Nihal',
  'Sinaj',
  'Shahul',
  'Subin',
];
int ind=0;
int? homeTabIndex;
class _HomePState extends State<HomeP> {
  @override
  Widget build(BuildContext context) {
    List<Map> drawerOps=[
      {
        'icon': Icons.home,
        'option':'Home'
      },{
        'icon': Icons.playlist_add_check_sharp,
        'option':'Playlist'
      },{
        'icon': Icons.change_circle_outlined,
        'option':'MP3 Converter'
      },{
        'icon': Icons.download,
        'option':'Social'
      },{
        'icon': Icons.person,
        'option':'Profile'
      },
    ];
    return DefaultTabController(
      initialIndex: 2,
      length: 7,
      child: Scaffold(
        // backgroundColor: Colors.white,
        drawer: Drawer(
          backgroundColor: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: wt*0.1,
                            right: wt*0.05,
                          left: wt*0.05
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/logo/xender_profile.png'),
                          radius: wt*0.11,
                        ),
                      ),
                      DropdownButton(
                        dropdownColor: Colors.grey[700],
                        padding: EdgeInsets.only(
                          top: wt*0.04
                        ),
                        hint: Text('Select your id', style: TextStyle(
                          color: Colors.white
                        ),),
                        value: profileName,
                          style: TextStyle(
                            color: Colors.white
                          ),
                          alignment: Alignment.center,
                          items: users.map((user) {
                            return DropdownMenuItem(
                                value: user,
                                child: Text(user.toString(),style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),)
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              profileName=value.toString();
                            });
                          },
                      )
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: drawerOps.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          setState(() {
                            ind=index;
                          });
                        },
                          leading: Icon(drawerOps[index]['icon'],color: ind==index?Colors.greenAccent:Colors.grey,size: wt*0.08,),
                          title: Text(drawerOps[index]['option'],style: TextStyle(
                              color: ind==index?Colors.greenAccent:Colors.grey,
                              fontSize: wt*0.04,
                              fontWeight: FontWeight.bold
                          ),
                          )
                      );
                      },
                  ),
                  Center(
                    child: Icon(Icons.circle, color: Colors.white,size: wt*0.03,),
                  )
                ],
              ),
              InkWell(
                radius: wt*0.07,
                onTap: () {
                  showDialog(
                      context: context,
                      builder:  (context) {
                        return AlertDialog(
                          title: Text('Really??'),
                          content: SizedBox(
                            height: wt*0.2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('you want to exit the app?'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('No')
                                    ),
                                    InkWell(
                                        onTap: () {
                                          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                                        },
                                        child: Text('Yes')
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),

                        );
                      },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(wt*0.02),
                      child: Icon(Icons.logout, color: Colors.red,),
                    ),
                    Padding(
                      padding: EdgeInsets.all(wt*0.02),
                      child: Text('Sign Out',style: TextStyle(
                        color: Colors.red
                      ),),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xff007141),
          actions: [
            Image.asset('assets/gif/download.gif',color: Colors.red,),
            Icon(TeenyIcons.whatsapp, color: Colors.white,size: wt*0.05,),
            PopupMenuButton(
              color: Colors.black54,
              icon: Icon(Icons.menu,color: Colors.white,),
                itemBuilder: (context) {
                  return popMenu.map((i){
                    return PopupMenuItem(
                      padding: EdgeInsets.all(wt*0.01),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(i['icon'],color: Colors.white,),
                                SizedBox(width: wt*0.04,),
                                Text(i['txt'], style: TextStyle(
                                  color: Colors.white
                                ),)
                              ],
                            ),
                            Divider(
                              thickness: wt*0.001,
                              indent: wt*0.1,
                            )
                          ],
                        )
                    );
                  }).toList();
                },
            )
          ],
          bottom: TabBar(
            labelStyle: TextStyle(
              fontSize: wt*0.03,
              fontWeight: FontWeight.bold,

            ),
            onTap: (value){
              setState(() {
                pop=true;
              });

            },
            unselectedLabelColor: Colors.white54,
            labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: 'HISTORY',
                ),Tab(
                  text: 'DOWNLOAD',
                ),Tab(
                  text: 'APP',
                ),Tab(
                  text: 'PHOTO',
                ),Tab(
                  text: 'MUSIC',
                ),Tab(
                  text: 'VIDEO',
                ),Tab(
                  text: 'FILE',
                ),
              ]
          ),
        ),
        body: TabBarView(

            children: [
              History(),
              Download(),
              App(),
              Photo(),
              Music(),
              Video(),
              FilePage(),

            ]
        ),
      ),
    );
  }
}
