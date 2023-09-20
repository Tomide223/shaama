import 'package:flutter/material.dart';
import 'package:shaama/components/roundedButton.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:shaama/components/constants.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(seconds: 4), vsync: this, upperBound: 180.0);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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
            CircleAvatar(
                radius: controller.value,

                // backgroundColor: Color(0xFFFFFFFF),
                foregroundImage: const AssetImage(
                  'images/RCCGa.jpg',
                )),
            // const SizedBox(
            //   height: 15,
            // ),
            Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Shamaa',
                    textStyle: kLabelHomeTextStyle.copyWith(
                        color: Colors.indigo, fontSize: 30),
                  ),
                ],
              ),
            ),
            kBox,
            RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'aaaa');
              },
              colour: Colors.lightBlueAccent,
              title: 'Log In',
            ),
            RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'a');
              },
              colour: Colors.blueAccent,
              title: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}
