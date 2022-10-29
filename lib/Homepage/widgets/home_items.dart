// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:spotify/ItemDetails/item_details.dart';

class HomeItems extends StatelessWidget {
  final List songs;
  final int viewNumber;
  final int length;
  const HomeItems(
      {super.key,
      required this.songs,
      required this.viewNumber,
      required this.length});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(songs.length - length, (index) {
          int temp = index + viewNumber;
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => ItemDetails(
                        detailsIndex: temp,
                      )),
                ),
              );
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    left: 10,
                    right: 20,
                  ),
                  child: Container(
                    height: size.height * 0.25,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(
                          songs[index + viewNumber]["img"],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  songs[index + viewNumber]["title"],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 20,
                  width: size.width * 0.55,
                  child: Text(
                    songs[index + viewNumber]["description"],
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 173, 172, 172),
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
