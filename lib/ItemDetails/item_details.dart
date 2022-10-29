import 'package:flutter/material.dart';

import 'package:spotify/ItemDetails/widgets/details_top.dart';
import 'package:spotify/ItemDetails/widgets/play_songs.dart';
import 'package:spotify/ItemDetails/widgets/song_list.dart';
import 'package:spotify/json/songs_json.dart';
import 'package:spotify/theme/colors.dart';

class ItemDetails extends StatelessWidget {
  final int detailsIndex;
  const ItemDetails({super.key, required this.detailsIndex});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              DetailsTop(detailsIndex: detailsIndex),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        songs[detailsIndex]["title"],
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      Text(
                        songs[detailsIndex]["song_count"],
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,
                    ),
                    child: const Text(
                      "Subscribe",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    SizedBox(
                      width: 15,
                    ),
                    PlaySongs(songs: songs),
                  ],
                ),
              ),
              SongList(index: detailsIndex),
              const SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      ),
    );
  }
}
