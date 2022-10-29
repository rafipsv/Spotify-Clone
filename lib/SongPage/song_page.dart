// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:spotify/SongPage/shadow_image.dart';
import 'package:spotify/helper.dart';
import 'package:spotify/json/songs_json.dart';
import 'package:spotify/theme/colors.dart';

class SongPage extends StatefulWidget {
  final int index;
  const SongPage({super.key, required this.index});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  double sliderValue = 40.0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Helper helper = Helper();
    Map song = songs[widget.index];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              helper.songPageTop(context),
              ShadowImage(song: song),
              helper.songPageTitle(song, size),
              const SizedBox(
                height: 20,
              ),
              Slider(
                max: 200,
                min: 0,
                value: sliderValue,
                activeColor: primary,
                onChanged: ((value) {
                  setState(() {
                    sliderValue = value;
                  });
                }),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                child: Helper.songPageDuration,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  right: 5,
                  bottom: 20,
                ),
                child: Helper.songPageButtons,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.tv_sharp,
                    color: primary,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Chromecast is ready",
                    style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.w700
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
