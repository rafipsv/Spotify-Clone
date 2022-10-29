import 'package:flutter/material.dart';
import 'package:spotify/json/songs_json.dart';

class SongList extends StatelessWidget {
  final int index;
  const SongList({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List songList = songs[index]["songs"];
    return Column(
      children: List.generate(
        songList.length,
        (index) => Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 25,
            right: 27,
            bottom: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${index + 1} ${songList[index]["title"]}",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Row(children: [
                Text(
                  songList[index]["duration"],
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 18,
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
