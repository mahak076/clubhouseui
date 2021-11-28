import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_clubhouse_ui/data.dart';
import 'package:flutter_clubhouse_ui/widgets/UpComingRoom.dart';
import 'package:flutter_clubhouse_ui/widgets/user_profile.dart';
import 'package:flutter_clubhouse_ui/widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(CupertinoIcons.search),
            onPressed: () {},
            iconSize: 28,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.envelope_open),
              iconSize: 26,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.calendar),
              iconSize: 28,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.bell),
              iconSize: 28,
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
                child: UserProfileImage(
                  imageurl: currentUser.imageUrl,
                  Size: 36,
                ),
              ),
            ),
          ],
        ),
        body: Stack(alignment: Alignment.center, children: [
          ListView(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 120.0),
            children: [
              UpComingRoom(upcomingroom: upcomingRoomsList),
              SizedBox(
                height: 10,
              ),
              ...roomsList.map((e) => RoomCard(room: e))
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(1.0)
                  ])),
            ),
          ),
          Positioned(
            bottom: 20.0,
            child: Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: const Text.rich(TextSpan(children: [
                WidgetSpan(
                  child: Icon(
                    CupertinoIcons.add,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                  text: 'Start a room',
                )
              ])),
            ),
          ),
          Positioned(
              bottom: 20.0,
              left: 40.0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.circle_grid_3x3_fill,
                        size: 28.0,
                      )),
                  Positioned(
                      right: 4.6,
                      bottom: 11.8,
                      child: Container(
                        height: 16.0,
                        width: 16.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).accentColor,
                        ),
                      )),
                ],
              )),
          Positioned(
            bottom: 20,
            right: 40,
            child: Icon(
              CupertinoIcons.paperplane,
              size: 28.0,
            ),
          )
        ]));
  }
}
