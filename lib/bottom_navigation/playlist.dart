import 'package:flutter/material.dart';
import '../main.dart';

class Playlist extends StatefulWidget {
  const Playlist({super.key});

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  bool playListChek = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff007141),
          title: Text(
            'PlayList',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: wt * 0.06,
            ),
          ),
          bottom: TabBar(
              unselectedLabelColor: Colors.white54,
              labelStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              overlayColor: const WidgetStatePropertyAll(Colors.white10),
              labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.white,
              indicatorPadding: EdgeInsets.all(wt * 0.002),
              labelPadding: EdgeInsets.all(wt * 0.03),
              tabs: const [Text('PLAYLIST'), Text('ALL MUSIC')]),
        ),
        body: TabBarView(children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(wt * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: wt * 0.21,
                          height: ht * 0.1,
                          decoration: BoxDecoration(
                              color: const Color(0xfffaeee2),
                              borderRadius: BorderRadius.circular(wt * 0.04)),
                          child: Center(
                              child: ImageIcon(
                            const AssetImage(
                                'assets/icons/heart-shape-outline.png'),
                            color: Colors.orange[400],
                            size: wt * 0.05,
                          )),
                        ),
                        SizedBox(
                          width: wt * 0.06,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Favourites',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: wt * 0.04)),
                            SizedBox(
                              height: ht * 0.014,
                            ),
                            Text(
                              '0 songs',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: wt * 0.04),
                            )
                          ],
                        )
                      ],
                    ),
                    const Icon(Icons.more_vert)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: ht * 0.015, left: wt * 0.04),
                height: ht * 0.065,
                width: wt * 1,
                color: Colors.grey.withOpacity(0.25),
                child: Text(
                  'MyList',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(wt * 0.05),
                child: Row(
                  children: [
                    Container(
                      width: wt * 0.21,
                      height: ht * 0.1,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 1,
                            )
                          ],
                          color: Color(0xfff3f9f7).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(wt * 0.04)),
                      child: Icon(
                        Icons.add,
                        color: Colors.green[800],
                        size: wt * 0.08,
                      ),
                    ),
                    SizedBox(
                      width: wt * 0.06,
                    ),
                    const Text(
                      'New playlist',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(wt*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: playListChek,
                          onChanged: (value) {
                            setState(() {
                              playListChek = !playListChek;
                            });
                          },
                         ),


                        Text('Show all audio', style: TextStyle(
                          color: Colors.grey[800]
                        ),),
                      ],
                    ),
                    Icon(Icons.list, size: wt*0.08,)
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(wt*0.02),
                child: Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Container(
                          width: wt*0.15,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xff005c7d),
                              borderRadius: BorderRadius.circular(wt*0.02)
                          ),
                          child: Icon(Icons.music_note_outlined,color: Colors.black,),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Song....',style: TextStyle(
                              color: Colors.black
                            ),),
                            SizedBox(height: ht*0.02,),
                            Text('464KB', style: TextStyle(
                              color: Colors.grey
                            ),)
                          ],
                        ),

                        trailing: Icon(Icons.playlist_add_sharp, color: Colors.green[800],size: wt*0.07),
                      ),
                    ),
                    Icon(Icons.more_vert, color: Colors.grey,size: wt*0.07,)
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
