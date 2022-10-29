// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:spotify/theme/colors.dart';

class Helper {
  static final homeAppBar = AppBar(
    backgroundColor: black,
    centerTitle: false,
    title: const Padding(
      padding: EdgeInsets.only(left: 10, top: 10),
      child: Text(
        "Explore",
        style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1),
      ),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(top: 10, right: 14),
        child: Icon(
          Icons.format_list_bulleted_outlined,
          size: 25,
        ),
      )
    ],
  );
  Widget songPageTop(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                }),
                child: const Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                  size: 35,
                )),
            const Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            )
          ],
        ),
      );

  Widget songPageTitle(Map song, var size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(
          Icons.folder_shared,
          color: Colors.white,
        ),
        Column(
          children: [
            Text(
              song["title"],
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 20,
              width: size.width * 0.55,
              child: Text(
                song["description"],
                maxLines: 1,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Color.fromARGB(255, 161, 160, 160),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        const Icon(
          Icons.more_vert,
          color: Colors.white,
          size: 30,
        )
      ],
    );
  }

  static final songPageDuration = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      Text(
        "1:50",
        style: TextStyle(
            color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w700),
      ),
      Text(
        "4:58",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
      ),
    ],
  );
  static final songPageButtons = Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      const Icon(
        Icons.shuffle,
        color: Colors.white,
        size: 35,
      ),
      const Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
        size: 35,
      ),
      Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: primary,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.stop,
          color: Colors.white,
          size: 35,
        ),
      ),
      const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
        size: 35,
      ),
      const Icon(
        Icons.repeat,
        color: Colors.white,
        size: 35,
      ),
    ],
  );
}
