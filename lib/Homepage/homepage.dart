// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:spotify/Homepage/widgets/home_items.dart';
import 'package:spotify/Homepage/widgets/home_top_bar.dart';
import 'package:spotify/helper.dart';
import 'package:spotify/json/songs_json.dart';

import 'package:spotify/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: Helper.homeAppBar,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HomeTopBar(
              songType: song_type_1,
            ),
            HomeItems(
              songs: songs,
              viewNumber: 0,
              length: 5,
            ),
            SizedBox(
              height: 20,
            ),
            HomeTopBar(
              songType: song_type_2,
            ),
            HomeItems(
              songs: songs,
              viewNumber: 5,
              length: 5,
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
