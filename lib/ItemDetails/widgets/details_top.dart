import 'package:flutter/material.dart';
import 'package:spotify/helper.dart';
import 'package:spotify/json/songs_json.dart';

class DetailsTop extends StatelessWidget {
  final int detailsIndex;
  const DetailsTop({super.key, required this.detailsIndex});

  @override
  Widget build(BuildContext context) {
    Helper helper = Helper();
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.32,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              songs[detailsIndex]["img"],
            ),
            fit: BoxFit.cover),
      ),
      child: helper.songPageTop(context),
    );
  }
}
