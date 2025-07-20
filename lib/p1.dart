import 'package:flutter/material.dart';
import 'package:xender/home_page_tabs/music.dart';

import 'main.dart';


class MusP extends StatefulWidget {
  const MusP({super.key});

  @override
  State<MusP> createState() => _MusPState();
}
class _MusPState extends State<MusP> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(musics[musics.length-musInd!-1]['songName'].toString()),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(musics[musics.length-musInd!-1]['thumb']))
          ),
        ),
      ),
    );
  }
}

int? docInd;
class Doc extends StatefulWidget {
  const Doc({super.key});
  @override
  State<Doc> createState() => _DocState();
}
List<Map> docs = [
  {
    'doc': 'ProjectProposal.pdf',
    'size': '1.2 MB'
  },
  {
    'doc': 'Resume_JohnDoe.docx',
    'size': '200 KB'
  },
  {
    'doc': 'FinancialReport2024.xlsx',
    'size': '850 KB'
  },
  {
    'doc': 'MeetingNotes_March.txt',
    'size': '50 KB'
  },
  {
    'doc': 'DesignMockup.sketch',
    'size': '2.3 MB'
  }
];
class _DocState extends State<Doc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Documents'),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      body: ListView.builder(
        itemCount: docs.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                setState(() {
                  docInd=index;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) => DocPage(),));
              },
              leading: Icon(Icons.file_copy,color: Colors.black,size: wt*0.07,),
              title: Text(docs[index]['doc']),
              subtitle: Text(docs[index]['size']),
            );
          },
      ),
    );
  }
}
class DocPage extends StatefulWidget {
  const DocPage({super.key});
  @override
  State<DocPage> createState() => _DocPageState();
}
class _DocPageState extends State<DocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(docs[docInd!]['doc']),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DocSize(),));
                },
                child: Text('size')
            )
          ],
        ),
      ),
    );
  }
}
class DocSize extends StatefulWidget {
  const DocSize({super.key});
  @override
  State<DocSize> createState() => _DocSizeState();
}
class _DocSizeState extends State<DocSize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Doc(),), (route) => false,);
            }, 
            icon: Icon(Icons.remove_circle)
        ),
      ),
      body: Center(
        child: Text(docs[docInd!]['size']),
      ),
    );
  }
}

int? eBookInd;
class EBooks extends StatefulWidget {
  const EBooks({super.key});

  @override
  State<EBooks> createState() => _EBooksState();
}
List<Map> eBooks = [
  {
    'title': 'Sapiens_A_Brief_History_of_Humankind.epub',
    'size': '2.4 MB'
  },
  {
    'title': 'Deep_Work_Cal_Newport.pdf',
    'size': '3.1 MB'
  },
  {
    'title': 'Rich_Dad_Poor_Dad.mobi',
    'size': '1.9 MB'
  },
  {
    'title': 'The_Subtle_Art_of_Not_Giving_a_Fck.epub',
    'size': '2.7 MB'
  },
  {
    'title': 'Think_and_Grow_Rich.pdf',
    'size': '1.2 MB'
  },
  {
    'title': 'Can_t_Hurt_Me_David_Goggins.mobi',
    'size': '4.0 MB'
  },
  {
    'title': '12_Rules_for_Life_Jordan_Peterson.epub',
    'size': '3.6 MB'
  }
];
class _EBooksState extends State<EBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EBooks'),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      body: ListView.builder(
        itemCount: eBooks.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              setState(() {
                eBookInd=index;
              });
              Navigator.pushReplacement(context, DialogRoute(context: context, builder: (context) => EBPage(),));
            },
            leading: Icon(Icons.book,color: Colors.black,size: wt*0.07,),
            title: Text(eBooks[index]['title']),
            subtitle: Text(eBooks[index]['size']),
          );
        },
      ),
    );
  }
}
class EBPage extends StatefulWidget {
  const EBPage({super.key});
  @override
  State<EBPage> createState() => _EBPageState();
}
class _EBPageState extends State<EBPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/first');
            },
            icon: Icon(Icons.remove_circle)
        ),
      ),
      body: Center(
        child: Text(eBooks[eBookInd!]['title']),
      ),
    );
  }
}



int? apkind;
class Apk extends StatefulWidget {
  const Apk({super.key});

  @override
  State<Apk> createState() => _ApkState();
}
List<Map> apps = [
  {'name': 'Instagram', 'logo': 'assets/apps/insta.png', 'size': '53.65MB'},
  {'name': 'JioHotstar', 'logo': 'assets/apps/jiohotstar.png', 'size': '74.78MB'},
  {'name': 'Pinterest', 'logo': 'assets/apps/pinterest.png', 'size': '95.30MB'},
  {'name': 'SnapChat', 'logo': 'assets/apps/snap.png', 'size': '29MB'},
  {'name': 'Temple Run', 'logo': 'assets/apps/templerun.png', 'size': '41.11MB'},
];
class _ApkState extends State<Apk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Documents'),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      body: ListView.builder(
        itemCount: apps.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              setState(() {
                apkind=index;
              });
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ApkPage(),));
            },
            leading: Image.asset(apps[index]['logo'],width: wt*0.1,),
            title: Text(apps[index]['name']),
            subtitle: Text(apps[index]['size'], style: TextStyle(
              color: Colors.grey[600]
            ),),
          );
        },
      ),
    );
  }
}
class ApkPage extends StatefulWidget {
  const ApkPage({super.key});

  @override
  State<ApkPage> createState() => _ApkPageState();
}
class _ApkPageState extends State<ApkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(apps[apkind!]['name']),
      ),
    );
  }
}


class Archives extends StatefulWidget {
  const Archives({super.key});
  @override
  State<Archives> createState() => _ArchivesState();
}
List<Map> archives = [
  {
    'title': 'Flutter Projects Collection.zip',
    'size': '45.2 MB'
  },
  {
    'title': 'Old Photos Backup.rar',
    'size': '120.6 MB'
  },
  {
    'title': 'Ebooks Library 2023.7z',
    'size': '78.3 MB'
  },
  {
    'title': 'Source Code Pack.tar.gz',
    'size': '32.8 MB'
  },
  {
    'title': 'Music Album Hits.zip',
    'size': '95.4 MB'
  },
  {
    'title': 'Documents Archive April2024.rar',
    'size': '18.9 MB'
  },
  {
    'title': 'Videos Collection.7z',
    'size': '1.2 GB'
  }
];
class _ArchivesState extends State<Archives> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Documents'),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      body: ListView.builder(
        itemCount: archives.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.folder_zip_outlined,size: wt*0.1, color: Colors.black,),
            title: Text(archives[index]['title']),
            subtitle: Text(archives[index]['size'], style: TextStyle(
                color: Colors.grey[600]
            ),),
          );
        },
      ),
    );
  }
}


class BigFiles extends StatefulWidget {
  const BigFiles({super.key});

  @override
  State<BigFiles> createState() => _BigFilesState();
}
List<Map> bigFiles = [
  {
    'title': 'Full Stack Development Course.zip',
    'size': '2.3 GB'
  },
  {
    'title': 'Marvel Movie Collection.rar',
    'size': '8.7 GB'
  },
  {
    'title': 'Ultimate Ebooks Library 2025.7z',
    'size': '1.4 GB'
  },
  {
    'title': 'Backup Photos Summer 2024.zip',
    'size': '650 MB'
  },
  {
    'title': 'Unreal Engine Assets Pack.tar.gz',
    'size': '3.1 GB'
  },
  {
    'title': '4K Travel Vlogs Collection.zip',
    'size': '5.6 GB'
  },
  {
    'title': 'Music Albums FLAC Collection.rar',
    'size': '2.0 GB'
  },
  {
    'title': 'Blender Project Files.7z',
    'size': '780 MB'
  }
];
class _BigFilesState extends State<BigFiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Big files'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: bigFiles.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.storage_outlined),
            title: Text(bigFiles[index]['title']),
            subtitle: Text(bigFiles[index]['size']),
          );
        },
      ),
    );
  }
}
