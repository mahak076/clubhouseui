import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/config/palette.dart';

import 'package:flutter_clubhouse_ui/data.dart';

class UpComingRoom extends StatelessWidget {
  final List<Room> upcomingroom;

  const UpComingRoom({Key? key, required this.upcomingroom}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.secondaryBackground,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 32.0, top: 4.0, bottom: 4.0),
        child: Column(
          children: upcomingroom
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(e.time),
                      SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (e.club.isNotEmpty)
                              Flexible(
                                child: Text(
                                  '${e.club}🏠'.toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .overline!
                                      .copyWith(
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.0),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            if (e.club.isNotEmpty)
                              SizedBox(
                                height: 10,
                              ),
                            Flexible(
                                child: Text(
                              e.name,
                              overflow: TextOverflow.ellipsis,
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
