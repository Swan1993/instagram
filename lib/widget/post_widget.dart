// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:photo_view/photo_view.dart';

import '../constant.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({
    Key? key,
    required this.size,
    required this.listImage,
    required this.userName,
    required this.like,
    required this.picAvatar,
    required this.picAvatarLiked,
    this.captions,
    this.city,
    this.country,
    this.expandText = 'more...',
    this.collapseText = 'show less',
    this.heightPicture = 1.8,
    this.colorPointSliderStackBold = const Color.fromARGB(218, 22, 36, 114),
    this.colorPointSliderStackDefaulte = const Color.fromARGB(128, 71, 5, 226),
    this.likeIconBtn = Icons.favorite,
    this.likedColor = Colors.red,
    this.defaulteColorLikeBtn = const Color.fromARGB(128, 150, 148, 149),
    this.iconComment = Icons.comment,
    this.iconShare = Icons.share,
    this.iconBookMark = Icons.bookmark,
    this.iconSize = 28.0,
    this.maxLinesExpandable = 2,
    this.linkColor = Colors.blue,
    this.colorPointBottom = Colors.blue,
    this.colorPointDefaulte = Colors.grey,
    this.showPointStackPic = false,
    this.showAnimatedContainerBottom = true,
  }) : super(key: key);

  final Size size;
  final List listImage;
  final String userName;
  final double like;
  final String? captions;
  final String? city;
  final String? country;
  final String expandText;
  final String? collapseText;
  final String picAvatar;
  final String picAvatarLiked;
  final num heightPicture;
  final Color? colorPointSliderStackBold;
  final Color? colorPointSliderStackDefaulte;
  final IconData? likeIconBtn;
  final Color? likedColor;
  final Color? defaulteColorLikeBtn;
  final IconData? iconComment;
  final IconData? iconShare;
  final IconData? iconBookMark;
  final double? iconSize;
  final int maxLinesExpandable;
  final Color? linkColor;
  final Color? colorPointBottom;
  final Color? colorPointDefaulte;
  final bool showPointStackPic;
  final bool showAnimatedContainerBottom;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  int selectnumber = 0;

  void openFullScreenImage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              leading: const BackButton(color: Colors.white),
            ),
            body: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    selectnumber = value;
                  });
                },
                children: [
                  for (var i = 0; i < widget.listImage.length; i++)
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 600),
                      child: PhotoView(
                        imageProvider: AssetImage(widget.listImage[i]),
                        minScale: PhotoViewComputedScale.contained,
                        maxScale: PhotoViewComputedScale.covered * 2,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

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
                    backgroundImage: AssetImage(widget.picAvatar),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.userName,
                              style: ConstantHome.textStyleUser,
                            ),
                            const Icon(
                              Icons.verified,
                              color: Colors.blue,
                            )
                          ],
                        ),
                        Text(
                          widget.city != null && widget.country != null
                              ? "${widget.city}, ${widget.country}"
                              : '',
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
              height: widget.size.height / widget.heightPicture,
              child: Stack(
                children: [
                  InkResponse(
                    onTap: () => openFullScreenImage(context),
                    child: PageView(
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
                  ),
                  Positioned(
                    bottom: 20,
                    left: MediaQuery.of(context).size.width * 0.42,
                    child: Row(
                      children: [
                        for (var i = 0; i < widget.listImage.length; i++)
                          widget.showPointStackPic
                              ? AnimatedContainer(
                                  duration: const Duration(milliseconds: 600),
                                  curve: Curves.easeIn,
                                  margin: const EdgeInsets.only(left: 4.0),
                                  width: selectnumber == i ? 30 : 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    color: selectnumber == i
                                        ? widget.colorPointSliderStackBold
                                        : widget.colorPointSliderStackDefaulte,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                )
                              : const SizedBox.shrink(),
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
                    size: widget.iconSize!,
                    circleColor: const CircleColor(
                        start: Color(0xff00ddff), end: Color(0xff0099cc)),
                    bubblesColor: const BubblesColor(
                      dotPrimaryColor: Colors.pink,
                      dotSecondaryColor: Colors.white,
                    ),
                    likeBuilder: (bool isLiked) {
                      return Icon(
                        widget.likeIconBtn,
                        size: 28,
                        color: isLiked
                            ? widget.likedColor
                            : widget.defaulteColorLikeBtn,
                      );
                    },
                  ),
                  const SizedBox(
                    width: 0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      widget.iconComment,
                      size: widget.iconSize,
                    ),
                  ),
                  const SizedBox(
                    width: 0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      widget.iconShare,
                      size: widget.iconSize,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  for (var i = 0; i < widget.listImage.length; i++)
                    widget.showAnimatedContainerBottom
                        ? Container(
                            margin: const EdgeInsets.only(left: 2),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: selectnumber == i
                                  ? widget.colorPointBottom
                                  : widget.colorPointDefaulte,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          )
                        : const SizedBox.shrink(),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      widget.iconBookMark,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.picAvatarLiked),
                    radius: 12,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text("Liked by"),
                  ),
                  Text(
                    " ${widget.userName}",
                    style: ConstantHome.textStyleLocationUserLike,
                  ),
                  const Text(" And"),
                  Text(
                    " ${widget.like} other",
                    style: ConstantHome.textStyleLocationUserLike,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Row(
                children: [
                  Expanded(
                    child: ExpandableText(
                      widget.captions != null ? ': ${widget.captions}' : '',
                      animation: true,
                      mentionStyle: const TextStyle(),
                      expandText: widget.expandText,
                      collapseText: widget.collapseText,
                      maxLines: widget.maxLinesExpandable,
                      linkColor: widget.linkColor,
                      prefixText:
                          widget.captions != null ? widget.userName : '',
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
