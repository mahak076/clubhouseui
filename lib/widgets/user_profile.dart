import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/data.dart';

class UserProfileImage extends StatelessWidget {
  final String imageurl;
  final double Size;
  const UserProfileImage({
    Key? key,
    required this.imageurl,
    this.Size = 48,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Size / 2 - Size / 18),
      child: Image.network(
        imageurl,
        height: Size,
        width: Size,
        fit: BoxFit.cover,
      ),
    );
  }
}
