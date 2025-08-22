import 'package:flutter/material.dart';

import '../main.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

List appCheck = [];
List sysCheck = [];

class _AppState extends State<App> {
  bool systemApps = false;
  bool isCan = true;
  String? i;
  List<Map> apps = [
    {'name': 'FaceBook', 'logo': 'assets/apps/fb.png', 'size': '82.17MB'},
    {'name': 'ChatGPT', 'logo': 'assets/apps/gpt.png', 'size': '60.20MB'},
    {'name': 'Instagram', 'logo': 'assets/apps/insta.png', 'size': '53.65MB'},
    {
      'name': 'JioHotstar',
      'logo': 'assets/apps/jiohotstar.png',
      'size': '74.78MB'
    },
    {'name': 'Meesho', 'logo': 'assets/apps/meesho.png', 'size': '28.32MB'},
    {
      'name': 'Pinterest',
      'logo': 'assets/apps/pinterest.png',
      'size': '95.30MB'
    },
    {'name': 'Phone Pay', 'logo': 'assets/apps/ppay.png', 'size': '61.34MB'},
    {'name': 'Prime Video', 'logo': 'assets/apps/prime.png', 'size': '55.15MB'},
    {'name': 'SnapChat', 'logo': 'assets/apps/snap.png', 'size': '29MB'},
    {
      'name': 'Temple Run',
      'logo': 'assets/apps/templerun.png',
      'size': '41.11MB'
    },
    {'name': 'Twitter', 'logo': 'assets/apps/x.png', 'size': '28.23MB'},
  ];
  List system = [
    {
      'name': 'Galley',
      'logo': 'assets/system_app/gallery.png',
      'size': '54.17MB'
    },
    {
      'name': 'Google Drive',
      'logo': 'assets/system_app/gdrive.png',
      'size': '82.17MB'
    },
    {'name': 'Map', 'logo': 'assets/system_app/gmap.png', 'size': '23.1MB'},
    {'name': 'Google', 'logo': 'assets/system_app/google.png', 'size': '6.7MB'},
    {
      'name': 'Google Meet',
      'logo': 'assets/system_app/google_meet.png',
      'size': '75MB'
    },
    {
      'name': 'Google Photos',
      'logo': 'assets/system_app/google_photos.png',
      'size': '2.6MB'
    },
    {
      'name': 'Google Play Books',
      'logo': 'assets/system_app/google_play_books.png',
      'size': '45MB'
    },
    {
      'name': 'Google Play Games',
      'logo': 'assets/system_app/google_play_games.png',
      'size': '8.9MB'
    },
    {
      'name': 'Google Play Games',
      'logo': 'assets/system_app/google_play_service.png',
      'size': '9.3MB'
    },
    {
      'name': 'Google TV',
      'logo': 'assets/system_app/google_tv.png',
      'size': '2.5MB'
    },
    {
      'name': 'Messages',
      'logo': 'assets/system_app/messages.png',
      'size': '1.8MB'
    },
    {'name': 'Phone', 'logo': 'assets/system_app/phone.png', 'size': '3MB'},
    {
      'name': 'Settings',
      'logo': 'assets/system_app/settings.png',
      'size': '765.8KB'
    },
    {
      'name': 'Youtube',
      'logo': 'assets/system_app/youtube.png',
      'size': '113MB'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            if (isCan)
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(wt * 0.04),
                      child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Apps',
                              hintText: 'Search',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(wt * 0.03),
                              ))),
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: wt * 0.033),
                    ),
                    onPressed: () {
                      setState(() {
                        isCan = false;
                      });
                    },
                  )
                ],
              ),
            Container(
              width: wt * 1,
              height: wt * 0.12,
              padding: EdgeInsets.symmetric(
                horizontal: wt * 0.04,
              ),
              decoration: BoxDecoration(color: Colors.grey[300]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Local',
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    child: appCheck.length == apps.length
                        ? Icon(
                            Icons.check_circle_outline,
                            color: Colors.green.shade800,
                          )
                        : Icon(
                            Icons.radio_button_unchecked,
                            color: Colors.grey.shade700,
                          ),
                    onTap: () {
                      setState(() {
                        if (appCheck.length < apps.length) {
                          appCheck.clear();
                          for (int i = 0; i < apps.length; i++) {
                            appCheck.add(i);
                          }
                        } else {
                          appCheck.clear();
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: apps.length,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      return InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          if (appCheck.contains(index)) {
                            appCheck.remove(index);
                          } else {
                            appCheck.add(index);
                          }
                          setState(() {});
                        },
                        child: Container(
                          margin: EdgeInsets.all(wt * 0.01),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(wt * 0.01),
                            color: appCheck.contains(index)
                                ? Colors.black12
                                : Colors.white,
                          ),
                          child: Stack(children: [
                            Padding(
                              padding: EdgeInsets.all(wt * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: wt * 0.08,
                                    height: wt * 0.08,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(wt * 0.01),
                                        image: DecorationImage(
                                            image:
                                                AssetImage(apps[index]['logo']),
                                            fit: BoxFit.cover)),
                                  ),
                                  Text(
                                    apps[index]['name'],
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: wt * 0.04,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    apps[index]['size'],
                                    style: TextStyle(
                                      fontSize: wt * 0.03,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (appCheck.contains(index))
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: EdgeInsets.all(wt * 0.015),
                                  child: Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                    size: wt * 0.04,
                                  ),
                                ),
                              )
                          ]),
                        ),
                      );
                    },
                  ),
                  Container(
                      width: wt * 1,
                      height: wt * 0.12,
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: wt * 0.04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'System',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold),
                            ),
                            !systemApps
                                ? InkWell(
                                    child: Icon(Icons.arrow_drop_down),
                                    onTap: () {
                                      setState(() {
                                        systemApps = !systemApps;
                                      });
                                    },
                                  )
                                : InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (sysCheck.length < system.length) {
                                          sysCheck.clear();
                                          for (int i = 0;
                                              i < system.length;
                                              i++) {
                                            sysCheck.add(i);
                                          }
                                        } else {
                                          sysCheck.clear();
                                        }
                                      });
                                    },
                                    child: sysCheck.length == system.length
                                        ? Icon(
                                            Icons.check_circle_outline,
                                            color: Colors.green.shade800,
                                          )
                                        : Icon(
                                            Icons.radio_button_unchecked,
                                            color: Colors.grey.shade700,
                                          ),
                            )
                          ],
                        ),
                      )),
                  if (systemApps)
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: system.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            if (sysCheck.contains(index)) {
                              sysCheck.remove(index);
                            } else {
                              sysCheck.add(index);
                            }
                            setState(() {});
                          },
                          child: Container(
                            margin: EdgeInsets.all(wt * 0.01),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(wt * 0.01),
                              color: sysCheck.contains(index)
                                  ? Colors.black12
                                  : Colors.white,
                              // borderRadius: BorderRadius.circular(wt*0.05)
                            ),
                            child: Stack(children: [
                              Padding(
                                padding: EdgeInsets.all(wt * 0.02),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: wt * 0.08,
                                      height: wt * 0.08,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(wt * 0.01),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  system[index]['logo']),
                                              fit: BoxFit.cover)),
                                    ),
                                    Text(
                                      system[index]['name'],
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      system[index]['size'],
                                      style: TextStyle(
                                        fontSize: wt * 0.03,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (sysCheck.contains(index))
                                Positioned(
                                    left: wt * 0.18,
                                    top: wt * 0.006,
                                    child: Icon(
                                      Icons.check_circle,
                                      color: Colors.green,
                                      size: wt * 0.04,
                                    ))
                            ]),
                          ),
                        );
                      },
                    ),
                ],
              ),
            )
          ],
        ));
  }
}
