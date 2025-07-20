import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'bottom_navigation/me.dart';
import 'bottom_navigation/social.dart';
import 'bottom_navigation/to_mp3.dart';
import 'bottom_navigation/home.dart';
import 'bottom_navigation/playlist.dart';
import 'main.dart';

int currentInd = 2;
String? profileName;

class Xender extends StatefulWidget {
  const Xender({super.key});

  @override
  State<Xender> createState() => _XenderState();
}

List<Widget> pages = [
  Playlist(),
  ToMp3(),
  HomeP(),
  Social(),
  Me()
];

bool pop = false;

class _XenderState extends State<Xender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff007141),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.white,
          highlightColor: Colors.white,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.playlist_play), label: 'Playlist'),
            BottomNavigationBarItem(icon: Icon(Icons.change_circle), label: 'To Mp3'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/home/shuffle.png'),
              size: wt * 0.1,),
              label: '',),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Social'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Me'),
          ],
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          unselectedLabelStyle: const TextStyle(color: Colors.black),
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color(0xff006C41),
          selectedLabelStyle:  TextStyle(
            color: Color(0xff006C41),
            fontWeight: FontWeight.bold,
          ),
          showSelectedLabels: true,
          onTap: (value) async {
            setState(() {
              currentInd = value;
            });
            if (value == 2) {
              setState(() {
                pop = true;
              });
            } else {
              setState(() {
                pop = false;
              });
            }

            await Future.delayed(const Duration(seconds: 5));
            setState(() {
              pop = false;
            });
          },
          currentIndex: currentInd,
        )
      ),
      body: pages[currentInd],
      floatingActionButton: pop
          ? Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: wt * 0.35,
            height: ht * 0.065,
            decoration: BoxDecoration(
              color: Colors.green.shade800,
              borderRadius: BorderRadius.circular(wt * 0.08),
              boxShadow: [
                BoxShadow(
                  color: Colors.green.shade800.withOpacity(0.5),
                  blurRadius: 4,
                ),
              ],
              border: Border.all(
                color: Colors.white,
                width: wt * 0.01,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Iconsax.send_2_bold, color: Colors.white, size: wt * 0.06),
                const Text(
                  'SEND',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: wt * 0.35,
            height: ht * 0.065,
            decoration: BoxDecoration(
              color: Colors.green.shade800,
              borderRadius: BorderRadius.circular(wt * 0.08),
              boxShadow: [
                BoxShadow(
                  color: Colors.green.shade800.withOpacity(0.5),
                  blurRadius: 4,
                ),
              ],
              border: Border.all(
                color: Colors.white,
                width: wt * 0.01,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(MingCute.download_2_fill, color: Colors.white, size: wt * 0.06),
                const Text(
                  'RECEIVE',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      )
          : null,
    );
  }
}