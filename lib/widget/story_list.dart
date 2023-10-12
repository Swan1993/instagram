import 'package:flutter/material.dart';

import '../constant.dart';

class StoryList extends StatelessWidget {
  const StoryList({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 95,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: picList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child: Column(
              children: [
                Container(
                  width: 62,
                  height: 62,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0XffFBAA47),
                        Color(0XffD91A46),
                        Color(0XffA60F93),
                      ],
                    ),
                    image: DecorationImage(
                      image: AssetImage(picList[index]),
                    ),
                  ),
                ),
                const Text("Your Story"),
              ],
            ),
          );
        },
      ),
    );
  }
}
