import 'package:flutter/material.dart';

import '../constant.dart';
import '../widget/button.dart';
import '../widget/create_account.dart';
import '../widget/text_form.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                "assets/IG logo.png",
                width: 150,
                height: 100,
              ),
              const SizedBox(
                height: 30.0,
              ),
              CastomTextField(
                text: "Email",
                size: size.width * 0.90,
                icon: Icons.email,
              ),
              const SizedBox(
                height: 12.0,
              ),
              CastomTextField(
                text: "Password",
                size: size.width * 0.90,
                icon: Icons.lock,
                iconPassword: Icons.visibility,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "forgot password?",
                      style: ConstantAuthen.textStyleSwitch,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Button(
                minWidth: 343.0,
                text: 'Log in',
                onPressed: () {},
              ),
              const SizedBox(
                height: 37.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.blue,
                  ),
                  Text(
                    "Log in with facebook",
                    style: ConstantAuthen.textStyleSwitch,
                  ),
                ],
              ),
              const SizedBox(
                height: 37.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 0,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "OR",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Expanded(
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 37.0,
              ),
              CreateAccount(
                style: ConstantAuthen.textStyleSwitch,
                text: 'Sign up.',
                onPressed: () {},
              ),
              const SizedBox(
                height: 60,
              ),
              const Divider(),
              const Spacer(),
              const Text(
                "instagram To Facebook",
                style: TextStyle(color: Colors.grey),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Align(
                  child: Divider(
                    indent: 110.0,
                    endIndent: 110.0,
                    thickness: 3,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
