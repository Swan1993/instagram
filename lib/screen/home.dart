import 'package:flutter/material.dart';
import 'package:instagram/constant.dart';

import '../widget/post_widget.dart';
import '../widget/story_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 44.0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              size: 30.0,
            ),
          ),
          title: Image.asset("assets/IG logo.png"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
          ],
        ),
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              const Divider(),
              StoryList(size: size),
              const Divider(),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: PostWidget(
                        size: size,
                        listImage: postlist,
                        userName: 'Sajjad',
                        like: 44.456,
                        picAvatar: picList[3],
                        picAvatarLiked: picList[2],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
