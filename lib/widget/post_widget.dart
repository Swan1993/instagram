// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'dart:math';

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:photo_view/photo_view.dart';

import '../constant.dart';

class Post {
  static Widget image({
    required final Size size,
    required final List listImage,
    required final String userName,
    required final double like,
    required final String picAvatar,
    required final String picAvatarLiked,
    final String? captions,
    final String? city,
    final String? country,
    final String expandText = 'more...',
    final String? collapseText = 'show less',
    final num heightPicture = 1.8,
    final Color? colorPointSliderStackBold = Colors.blue,
    final Color? colorPointSliderStackDefaulte = Colors.black,
    final IconData? likeIconBtn = Icons.favorite,
    final Color? likedColor = Colors.red,
    final Color? defaulteColorLikeBtn =
        const Color.fromARGB(128, 150, 148, 149),
    final IconData? iconComment = Icons.comment,
    final IconData? iconShare = Icons.share,
    final IconData? iconBookMark = Icons.bookmark,
    final double? iconSize = 28.0,
    final int maxLinesExpandable = 2,
    final Color? linkColor = Colors.blue,
    final Color? colorPointBottom = Colors.blue,
    final Color? colorPointDefaulte = Colors.grey,
    final bool showPointStackPic = false,
    final bool showAnimatedContainerBottom = true,
    final Color borderColorLight = Colors.black,
    final Color borderColorDark = Colors.white,
    final void Function()? onTapShare,
    final void Function()? onTapLink,
    final void Function()? onTapSave,
    final void Function()? onTapQrCode,
    final void Function()? onTapStar,
    final void Function()? onTapFollow,
    final void Function()? onTapUnFollow,
    final void Function()? onTapHidden,
    final void Function()? onTapDisLike,
    final void Function()? onTapReport,
    final int dislike = 1000,
    final IconData? bottomSheetIconsShare = Icons.share,
    final IconData? bottomSheetIconslink = Icons.link,
    final IconData? bottomSheetIconsSave = Icons.bookmark_outline,
    final IconData? bottomSheetIconsQrcode = Icons.qr_code_2_outlined,
    final IconData? bottomSheetIconsStar = Icons.star_border,
    final IconData? bottomSheetIconsFollow = Icons.person_add_alt_outlined,
    final IconData? bottomSheetIconsUnFollow = Icons.person_remove_outlined,
    final IconData? bottomSheetIconsHidden = Icons.visibility_off_outlined,
    final IconData? bottomSheetIconsDisLike = Icons.thumb_down_off_alt,
    final IconData? bottomSheetIconsReport = Icons.report,
    final String? bottomSheetTextShare = 'Share',
    final String? bottomSheetTextLink = 'Link',
    final String? bottomSheetTextSave = 'Save',
    final String? bottomSheetTextQrCode = 'QrCode',
    final String? bottomSheetTextStar = 'Add to Favorites',
    final String? bottomSheetTextFollow = 'Follow',
    final String? bottomSheetTextUnFollow = 'UnFollow',
    final String? bottomSheetTextHidden = 'Hidden',
    final String? bottomSheetTextDisLike = 'DisLike',
    final String? bottomSheetTextReport = "Report",
    int likeCount = 0,
    final void Function()? onTapAvatar,
    final void Function()? onTapCommente,
    final void Function()? onTapSharePost,
    final void Function()? onTapBookMark,
  }) {
    return Imagess(
      size: size,
      listImage: listImage,
      userName: userName,
      like: like,
      picAvatar: picAvatar,
      picAvatarLiked: picAvatarLiked,
      captions: captions,
      city: city,
      country: country,
      expandText: expandText,
      collapseText: collapseText,
      heightPicture: heightPicture,
      colorPointSliderStackBold: colorPointSliderStackBold,
      colorPointSliderStackDefaulte: colorPointSliderStackDefaulte,
      likeIconBtn: likeIconBtn,
      likedColor: likedColor,
      defaulteColorLikeBtn: defaulteColorLikeBtn,
      iconComment: iconComment,
      iconShare: iconShare,
      iconBookMark: iconBookMark,
      iconSize: iconSize,
      maxLinesExpandable: maxLinesExpandable,
      linkColor: linkColor,
      colorPointBottom: colorPointBottom,
      colorPointDefaulte: colorPointDefaulte,
      showPointStackPic: showPointStackPic,
      showAnimatedContainerBottom: showAnimatedContainerBottom,
      borderColorLight: borderColorLight,
      borderColorDark: borderColorDark,
      bottomSheetIconsShare: bottomSheetIconsShare,
      bottomSheetIconslink: bottomSheetIconslink,
      bottomSheetIconsSave: bottomSheetIconsSave,
      bottomSheetIconsQrcode: bottomSheetIconsQrcode,
      bottomSheetIconsStar: bottomSheetIconsStar,
      bottomSheetIconsFollow: bottomSheetIconsFollow,
      bottomSheetIconsUnFollow: bottomSheetIconsUnFollow,
      bottomSheetIconsHidden: bottomSheetIconsHidden,
      bottomSheetIconsDisLike: bottomSheetIconsDisLike,
      bottomSheetIconsReport: bottomSheetIconsReport,
      bottomSheetTextShare: bottomSheetTextShare,
      bottomSheetTextLink: bottomSheetTextLink,
      bottomSheetTextSave: bottomSheetTextSave,
      bottomSheetTextQrCode: bottomSheetTextQrCode,
      bottomSheetTextStar: bottomSheetTextStar,
      bottomSheetTextFollow: bottomSheetTextFollow,
      bottomSheetTextUnFollow: bottomSheetTextUnFollow,
      bottomSheetTextHidden: bottomSheetTextHidden,
      bottomSheetTextDisLike: bottomSheetTextDisLike,
      bottomSheetTextReport: bottomSheetTextReport,
      dislike: dislike,
      onTapShare: onTapShare,
      onTapLink: onTapLink,
      onTapSave: onTapSave,
      onTapQrCode: onTapQrCode,
      onTapStar: onTapStar,
      onTapFollow: onTapFollow,
      onTapUnFollow: onTapUnFollow,
      onTapHidden: onTapHidden,
      onTapDisLike: onTapDisLike,
      onTapReport: onTapReport,
      likeCount: likeCount,
      onTapAvatar: onTapAvatar,
      onTapBookMark: onTapBookMark,
      onTapCommente: onTapCommente,
      onTapSharePost: onTapSharePost,
    );
  }
}

class Imagess extends StatefulWidget {
  Imagess(
      {Key? key,
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
      this.colorPointSliderStackDefaulte =
          const Color.fromARGB(128, 71, 5, 226),
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
      this.borderColorLight = Colors.black,
      this.borderColorDark = Colors.white,
      this.bottomSheetIconsShare = Icons.share,
      this.bottomSheetIconslink = Icons.link,
      this.bottomSheetIconsSave = Icons.bookmark_outline,
      this.bottomSheetIconsQrcode = Icons.qr_code_2_outlined,
      this.bottomSheetIconsStar = Icons.star_border,
      this.bottomSheetIconsFollow = Icons.person_add_alt_outlined,
      this.bottomSheetIconsUnFollow = Icons.person_remove_outlined,
      this.bottomSheetIconsHidden = Icons.visibility_off_outlined,
      this.bottomSheetIconsDisLike = Icons.thumb_down_off_alt,
      this.bottomSheetIconsReport = Icons.report,
      this.bottomSheetTextShare = 'Share',
      this.bottomSheetTextLink = 'Link',
      this.bottomSheetTextSave = 'Save',
      this.bottomSheetTextQrCode = 'QrCode',
      this.bottomSheetTextStar = 'Add to Favorites',
      this.bottomSheetTextFollow = 'Follow',
      this.bottomSheetTextUnFollow = 'UnFollow',
      this.bottomSheetTextHidden = 'Hidden',
      this.bottomSheetTextDisLike = 'DisLike',
      this.bottomSheetTextReport = "Report",
      this.dislike = 1000,
      this.onTapShare,
      this.onTapLink,
      this.onTapSave,
      this.onTapQrCode,
      this.onTapStar,
      this.onTapFollow,
      this.onTapUnFollow,
      this.onTapHidden,
      this.onTapDisLike,
      this.onTapReport,
      this.likeCount = 0,
      this.onTapAvatar,
      this.onTapBookMark,
      this.onTapCommente,
      this.onTapSharePost})
      : super(key: key);

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
  final Color borderColorLight;
  final Color borderColorDark;
  final void Function()? onTapShare;
  final void Function()? onTapLink;
  final void Function()? onTapSave;
  final void Function()? onTapQrCode;
  final void Function()? onTapStar;
  final void Function()? onTapFollow;
  final void Function()? onTapUnFollow;
  final void Function()? onTapHidden;
  final void Function()? onTapDisLike;
  final void Function()? onTapReport;
  final int dislike;
  final IconData? bottomSheetIconsShare;
  final IconData? bottomSheetIconslink;
  final IconData? bottomSheetIconsSave;
  final IconData? bottomSheetIconsQrcode;
  final IconData? bottomSheetIconsStar;
  final IconData? bottomSheetIconsFollow;
  final IconData? bottomSheetIconsUnFollow;
  final IconData? bottomSheetIconsHidden;
  final IconData? bottomSheetIconsDisLike;
  final IconData? bottomSheetIconsReport;
  final String? bottomSheetTextShare;
  final String? bottomSheetTextLink;
  final String? bottomSheetTextSave;
  final String? bottomSheetTextQrCode;
  final String? bottomSheetTextStar;
  final String? bottomSheetTextFollow;
  final String? bottomSheetTextUnFollow;
  final String? bottomSheetTextHidden;
  final String? bottomSheetTextDisLike;
  final String? bottomSheetTextReport;
  late int? likeCount;
  final void Function()? onTapAvatar;
  final void Function()? onTapCommente;
  final void Function()? onTapSharePost;
  final void Function()? onTapBookMark;

  @override
  State<Imagess> createState() => _ImagessState();
}

class _ImagessState extends State<Imagess> {
  int selectnumber = 0;

  void showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return AnimatedContainer(
          duration: const Duration(seconds: 3),
          curve: Curves.linear,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80.0,
                      height: 5,
                      color: Theme.of(context).brightness == Brightness.light
                          ? widget.borderColorLight // اگر تم روشن است
                          : widget.borderColorDark,
                    )
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TopIcon(
                        icon: widget.bottomSheetIconsShare,
                        borderColorLight: widget.borderColorLight,
                        borderColorDark: widget.borderColorDark,
                        size: 70,
                        text: widget.bottomSheetTextShare,
                      ),
                      TopIcon(
                        icon: widget.bottomSheetIconslink,
                        text: widget.bottomSheetTextLink,
                        borderColorLight: widget.borderColorLight,
                        borderColorDark: widget.borderColorDark,
                        size: 70,
                      ),
                      TopIcon(
                        icon: widget.bottomSheetIconsSave,
                        text: widget.bottomSheetTextSave,
                        borderColorLight: widget.borderColorLight,
                        borderColorDark: widget.borderColorDark,
                        size: 70,
                      ),
                      TopIcon(
                        icon: widget.bottomSheetIconsQrcode,
                        text: widget.bottomSheetTextQrCode,
                        borderColorLight: widget.borderColorLight,
                        borderColorDark: widget.borderColorDark,
                        size: 70,
                      ),
                    ],
                  ),
                ),
                const Divider(),
                // ردیف دوم
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 15.0),
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                          child: Row(
                            children: [
                              Icon(
                                widget.bottomSheetIconsStar,
                                size: 28,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.bottomSheetTextStar!,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        indent: 15.0,
                        endIndent: 15.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                          child: Row(
                            children: [
                              Icon(
                                widget.bottomSheetIconsFollow,
                                size: 28,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.bottomSheetTextFollow!,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        indent: 15.0,
                        endIndent: 15.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                          child: Row(
                            children: [
                              Icon(
                                widget.bottomSheetIconsUnFollow,
                                size: 28,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.bottomSheetTextUnFollow!,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                // ردیف سوم
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 15.0),
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                          child: Row(
                            children: [
                              Icon(
                                widget.bottomSheetIconsHidden,
                                size: 28,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.bottomSheetTextHidden!,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        indent: 15.0,
                        endIndent: 15.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 7.5, bottom: 7.5, right: 15.0),
                          child: Row(
                            children: [
                              Icon(
                                widget.bottomSheetIconsDisLike,
                                size: 28,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.bottomSheetTextDisLike!,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Spacer(),
                              Text(
                                "-${widget.dislike}",
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        indent: 15.0,
                        endIndent: 15.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                          child: Row(
                            children: [
                              Icon(
                                widget.bottomSheetIconsReport,
                                size: 28,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.bottomSheetTextReport!,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        indent: 15.0,
                        endIndent: 15.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

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
    Size size = MediaQuery.of(context).size;

    print(size.width);
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
                  InkResponse(
                    onTap: widget.onTapAvatar,
                    child: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage(widget.picAvatar),
                    ),
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
                    onPressed: () {
                      return showCustomBottomSheet(context);
                    },
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
                          SizedBox(
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
                    likeCount: widget.likeCount,
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
                    onPressed: widget.onTapCommente,
                    icon: Icon(
                      widget.iconComment,
                      size: widget.iconSize,
                    ),
                  ),
                  const SizedBox(
                    width: 0,
                  ),
                  IconButton(
                    onPressed: widget.onTapSharePost,
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
                    onPressed: widget.onTapBookMark,
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

class TopIcon extends StatelessWidget {
  final void Function()? onTap;
  final IconData? icon;
  final Color borderColorLight;
  final Color borderColorDark;
  final double size;
  final String? text;
  const TopIcon({
    Key? key,
    this.onTap,
    required this.icon,
    required this.borderColorLight,
    required this.borderColorDark,
    required this.size,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                width: 1.5,
                color: Theme.of(context).brightness == Brightness.light
                    ? borderColorLight // اگر تم روشن است
                    : borderColorDark,
              ),
            ),
            child: Icon(
              icon,
              color: Theme.of(context).brightness == Brightness.light
                  ? borderColorLight // اگر تم روشن است
                  : borderColorDark,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text!,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Theme.of(context).brightness == Brightness.light
                ? borderColorLight // اگر تم روشن است
                : borderColorDark,
          ),
        ),
      ],
    );
  }
}
