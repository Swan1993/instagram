// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../constant.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({
    Key? key,
    required this.size,
    required this.listImage,
  }) : super(key: key);

  final Size size;
  final List listImage;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  int selectnumber = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        width: widget.size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage(picList[3]),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Nikita",
                              style: ConstantHome.textStyleUser,
                            ),
                            Icon(
                              Icons.verified,
                              color: Colors.blue,
                            )
                          ],
                        ),
                        Text(
                          "Mishgan, USA",
                          style: ConstantHome.textStyleLocationUser,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_control),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            SizedBox(
              width: widget.size.width,
              height: widget.size.height / 1.8,
              child: Stack(
                children: [
                  PageView(
                    onPageChanged: (value) {
                      setState(() {
                        selectnumber = value;
                      });
                    },
                    children: [
                      for (var i = 0; i < widget.listImage.length; i++)
                        Container(
                          child: Image.asset(
                            widget.listImage[i],
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                    ],
                  ),
                  Positioned(
                    bottom: 20,
                    left: MediaQuery.of(context).size.width * 0.42,
                    child: Row(
                      children: [
                        for (var i = 0; i < widget.listImage.length; i++)
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.easeIn,
                            margin: const EdgeInsets.only(left: 4.0),
                            width: selectnumber == i ? 30 : 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: selectnumber == i
                                  ? Colors.pinkAccent.withOpacity(0.8)
                                  : Colors.pink.shade100.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  LikeButton(
                    circleColor: const CircleColor(
                        start: Color(0xff00ddff), end: Color(0xff0099cc)),
                    bubblesColor: const BubblesColor(
                      dotPrimaryColor: Colors.pink,
                      dotSecondaryColor: Colors.white,
                    ),
                    likeBuilder: (bool isLiked) {
                      return Icon(
                        Icons.favorite,
                        size: 28,
                        color: isLiked ? Colors.red : Colors.grey.shade800,
                      );
                    },
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkResponse(
                    child: Image.asset('assets/Shape.png'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      size: 28,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.17,
                  ),
                  for (var i = 0; i < widget.listImage.length; i++)
                    Container(
                      margin: const EdgeInsets.only(left: 2),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          color:
                              selectnumber == i ? Colors.blue : Colors.black87,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
