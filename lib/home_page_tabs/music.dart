import 'package:flutter/material.dart';
import 'package:xender/main.dart';
import 'package:xender/p1.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}
int? musInd;

class _MusicState extends State<Music> {
  List checks=[];
  List<Map> musics=[
    {
      'songName':'Vazhithunaiye...',
      'thumb':'assets/home/mus1.png',
      'size':'1.58MB'
    },
    {
      'songName':'Ayla Allela...',
      'thumb':'assets/home/mus2.png',
      'size':'5.8MB'
    },
    {
      'songName':'Tujhko Inkar...',
      'thumb':'assets/home/mus3.png',
      'size':'458KB'
    },
    {
      'songName':'OHO Rathamma...',
      'thumb':'assets/home/mus4.png',
      'size':'3.12MB'
    },
    {
      'songName':'Premalo...',
      'thumb':'assets/home/mus5.png',
      'size':'8MB'
    },
    {
      'songName':'Minecraft...',
      'thumb':'assets/home/mus6.png',
      'size':'1.4MB'
    },
    {
      'songName':'Aggipulle...',
      'thumb':'assets/home/mus7.png',
      'size':'1.8MB'
    },
    {
      'songName':'Maatikinaaru Orutharu...',
      'thumb':'assets/home/mus8.png',
      'size':'2.2MB'
    },
    {
      'songName':'One More Time...',
      'thumb':'assets/home/mus9.png',
      'size':'1.15MB'
    },
    {
      'songName':'Jaat Theme Song...',
      'thumb':'assets/home/mus10.png',
      'size':'4.58MB'
    },
  ];

  List<Map> moreBTN=[
    {
      'icon': Icons.playlist_add_outlined,
      'txt':'Add to playlist'
    },
    {
      'icon': Icons.delete,
      'txt':'Delete'
    },
    {
      'icon': Icons.share,
      'txt':'Share'
    },
    {
      'icon': Icons.drive_file_rename_outline,
      'txt':'Rename'
    },
    {
      'icon': Icons.cut,
      'txt':'Edit'
    },
    {
      'icon': Icons.error,
      'txt':'Properties'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: wt*1,
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
          Container(
            alignment: Alignment.centerLeft,
            width: wt*1,
            height: wt*0.13,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
            ),
            child: Padding(
              padding: EdgeInsets.all(wt*0.02),
              child: Text('Mar 26, 2025', style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontWeight: FontWeight.bold,
                  fontSize: wt*0.037
              ),),
            ),
          ),

          Expanded(
            child: ListView.separated(
                itemCount: musics.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        musInd=index;
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MusP(),));
                    },
                    child: Padding(
                      padding: EdgeInsets.all(wt*0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(wt*0.01),
                                width: wt*0.2,
                                height: wt*0.2,
                                decoration: BoxDecoration(
                                    // color: Colors.red,
                                    borderRadius: BorderRadius.circular(wt*0.02),
                                    image: DecorationImage(image: AssetImage(musics[musics.length-index-1]['thumb']),fit: BoxFit.cover)
                                ),
                              ),
                              SizedBox(width: wt*0.02,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(musics[musics.length-index-1]['songName'], style: TextStyle(
                                      color: Colors.black,
                                      fontSize: wt*0.04,
                                      fontWeight: FontWeight.w500
                                  ),),
                                  Text('/Media/Downloads/Video',style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: wt*0.04,
                                      fontWeight: FontWeight.w500
                                  )),
                                  Text(musics[index]['size'],style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: wt*0.04,
                                      fontWeight: FontWeight.w400
                                  ))
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        padding: EdgeInsets.all(wt*0.03),
                                        width: wt*0.95,
                                        height: wt*1.1,
                                        decoration: BoxDecoration(
                                          color: Colors.black87,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(wt*0.1),
                                            topRight: Radius.circular(wt*0.1)
                                          )
                                        ),
                                        child: Column(
                                          children: [
                                            Text(musics[musics.length-index-1]['songName'], style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: wt*0.05
                                            ),),
                                            Divider(
                                              color: Colors.grey,
                                            ),

                                            Expanded(
                                              child: ListView.builder(
                                                physics: NeverScrollableScrollPhysics(),
                                                itemCount: moreBTN.length,
                                                itemBuilder: (context, index) {
                                                  return ListTile(
                                                    leading: Icon(moreBTN[index]['icon'],color: Colors.white,),
                                                    title: Text(moreBTN[index]['txt'],style: TextStyle(
                                                      color: Colors.white
                                                    ),),
                                                  );
                                                },

                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                );
                              },
                              icon: Icon(Icons.more_vert_outlined),
                          )
                        ],
                      ),
                    ),
                  );
                }, separatorBuilder: (BuildContext context, int index) {
                return Divider();
            },
            ),
          )
        ],
      ),
    );
  }
}
