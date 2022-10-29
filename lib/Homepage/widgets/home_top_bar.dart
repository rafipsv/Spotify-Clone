import 'package:flutter/material.dart';
import 'package:spotify/theme/colors.dart';

class HomeTopBar extends StatefulWidget {
  final List songType;
  const HomeTopBar({super.key, required this.songType});

  @override
  State<HomeTopBar> createState() => _HomeTopBarState();
}

class _HomeTopBarState extends State<HomeTopBar> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          right: 15,
          left: 3,
        ),
        child: Row(
          children: List.generate(
            widget.songType.length,
            (index) {
              return GestureDetector(
                onTap: (() {
                  setState(() {
                    selectedItem = index;
                  });
                }),
                child: Container(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.songType[index],
                        style: TextStyle(
                          color: selectedItem == index
                              ? primary
                              : const Color.fromARGB(255, 189, 187, 187),
                          fontSize: 16,
                          fontWeight: selectedItem == index
                              ? FontWeight.bold
                              : FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      selectedItem == index
                          ? Container(
                              width: 15,
                              height: 3,
                              decoration: const BoxDecoration(
                                color: primary,
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
