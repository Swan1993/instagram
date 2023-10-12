import 'package:flutter/material.dart';
import 'package:instagram/constant.dart';

import '../widget/button.dart';
import '../widget/create_account.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset("assets/IG logo.png"),
              const SizedBox(
                height: 52.0,
              ),
              CircleAvatar(
                radius: 42.5,
                child: Image.asset(
                  "assets/Oval.png",
                  width: 85.0,
                  height: 85.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                "Jacob_W",
                style: ConstantAuthen.textStyle,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Button(
                minWidth: 307.0,
                text: "Log in",
                onPressed: () {},
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                "Switch account",
                style: ConstantAuthen.textStyleSwitch,
              ),
              const SizedBox(
                height: 100.0,
              ),
              const Divider(),
              CreateAccount(
                style: ConstantAuthen.textStylebottom1,
                text: 'Sign up.',
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Divider(
                    indent: 150,
                    endIndent: 150,
                    color: Colors.black,
                    thickness: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
