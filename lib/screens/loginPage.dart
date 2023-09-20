import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shaama/components/roundedButton.dart';
import 'package:shaama/components/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  late String password;
  late String username;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Shamaa',
                      textStyle: kLabelHomeTextStyle.copyWith(
                          color: Colors.black, fontSize: 70),
                    ),
                  ],
                ),
              ),
              kBox,
              kBox,
              TextField(
                keyboardType: TextInputType.text,
                showCursor: true,
                textInputAction: TextInputAction.done,
                onChanged: (value) {
                  username = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your username'),
              ),
              kBox,
              TextField(
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your password'),
              ),
              kBox,
              RoundedButton(
                onPressed: () {},
                colour: Colors.lightBlueAccent,
                title: 'Log In',
              ),
            ]),
      ),
    );
  }
}
