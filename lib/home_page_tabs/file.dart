import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../main.dart';
import '../p1.dart';

class FilePage extends StatefulWidget {
  const FilePage({super.key});

  @override
  State<FilePage> createState() => _FilePageState();
}

class _FilePageState extends State<FilePage> {

  List files=[
    Doc(),
    EBooks(),
    Apk(),
    Archives(),
    BigFiles()
  ];
  List<Map> title=[
    {
      'title':'Document(${docs.length})',
      'sub':'Includes Word, PPT, Excel, WPS, etc.',
      'icon': 'assets/icons/menu.png'
    },
    {
      'title':'Ebooks(${eBooks.length})',
      'sub':'Includes .ump, .ebk, .txt, .chm, etc.',
      'icon': Icons.book
    },
    {
      'title':'Apks(${apps.length})',
      'sub':'Includes .apk files',
      'icon': PixelArtIcons.android
    },
    {
      'title':'Archives(${archives.length})',
      'sub':'Includes .7z, .rar, .zip, .iso, etc.',
      'icon': Icons.folder_zip_outlined
    },
    {
      'title':'Big files(${bigFiles.length})',
      'sub':'Includes files > 50 MB',
      'icon': Icons.folder_copy_sharp
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
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
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(wt*0.04),
              width: wt*0.12,
              height: wt*0.12,
              decoration:
              BoxDecoration(
                color: Colors.blueGrey[800],
                borderRadius: BorderRadius.circular(wt*0.01)
              ),
              child: Icon(Icons.phone_android_sharp,color: Colors.white,size: wt*0.07,),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Phone Storage', style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: wt*0.04
                ),),
                SizedBox(height: ht*0.01,),
                Text('Total: 245GB   Available:92.12GB',style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                    fontSize: wt*0.032
                ),),
                Row(
                  children: [
                    Container(
                      width: wt*0.4,
                      height: wt*0.01,
                      decoration: BoxDecoration(
                          color: Colors.green[700],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(wt*0.02),
                          bottomLeft: Radius.circular(wt*0.02)
                        )
                      ),
                    ),
                    Container(
                      width: wt*0.35,
                      height: wt*0.01,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(wt*0.02),
                              bottomRight: Radius.circular(wt*0.02)
                          )
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        Expanded(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: title.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => files[index],));
                  },
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(wt*0.04),
                        width: wt*0.12,
                        height: wt*0.12,
                        decoration:
                        BoxDecoration(
                            color: Colors.blueGrey[800],
                            borderRadius: BorderRadius.circular(wt*0.01)
                        ),
                        child: index==0?ImageIcon(AssetImage('assets/icons/menu.png',),color: Colors.white,size: wt*0.07,):Icon(title[index]['icon'],color: Colors.white,size: wt*0.07,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title[index]['title'], style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: wt*0.04
                          ),),
                          SizedBox(height: ht*0.01,),
                          Text(title[index]['sub'],style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w500,
                              fontSize: wt*0.032
                          ),),
                        ],
                      )
                    ],
                  ),
                );
              },
          ),
        )
      ],
    );
  }
}
