import 'package:flutter/material.dart';

class ShadowImage extends StatelessWidget {
  final Map song;
  const ShadowImage({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
      width: size.width,
      height: size.height * 0.45,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              song["img"],
            ),
            fit: BoxFit.fill),
        color: Colors.pink,
        borderRadius: BorderRadius.circular(
          15,
        ),
        boxShadow: [
          BoxShadow(
            color: song["color"],
            blurRadius: 50,
            offset: const Offset(-20, 30),
            spreadRadius: 5,
          ),
        ],
      ),
    );
  }
}
