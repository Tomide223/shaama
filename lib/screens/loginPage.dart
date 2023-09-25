import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shaama/components/roundedButton.dart';
import 'package:shaama/components/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  final _auth = FirebaseAuth.instance;
  bool spin = false;
  late Animation animation;
  late String password;
  late String email;

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
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: animation.value,
        body: ModalProgressHUD(
          inAsyncCall: spin,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CircleAvatar(
                        radius: controller.value,


                        foregroundImage: const AssetImage(
                          'images/RCCGa.jpg',
                        )),
                    Center(
                      child: AnimatedTextKit(
                        animatedTexts: [
                          // TypewriterAnimatedText(
                          //   'SHAAMA',
                          //   textStyle: kLabelHomeTextStyle.copyWith(
                          //       color: Colors.blueAccent, fontSize: 50),
                          // ),
                          WavyAnimatedText( 'SHAAMA',textStyle: kLabelHomeTextStyle.copyWith(
                              color: Colors.indigo, fontSize: 55), speed: const Duration(milliseconds: 400)),
                        ],
                      ),
                    ),
                    kBox,
                    TextField(
                      keyboardType: TextInputType.text,
                      showCursor: true,
                      textInputAction: TextInputAction.done,
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter your email'),
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
                      onPressed: () async {
                        setState(() {
                          spin = true;
                        });
                        try {
                          // final User =
                          await _auth.signInWithEmailAndPassword(
                              email: email,
                              password: password);
                          setState(() {
                            spin = false;
                          });
                          Navigator.pushNamed(context,'aa');

                        // ignore: use_build_context_synchronously
                        } catch (e) {
                          //  An alert display come here
                         Alert(
                              context: context,
                              title: 'ERROR!',
                              desc:
                                  'Invalid email or password',
                              buttons: [
                                DialogButton(
                                    child: const Text(
                                      'Try again',
                                      style: kLabelTextStyle,
                                    ),
                        onPressed:(){
                                      Navigator.pop(context);
                        }),],);

                        }
                      },
                      colour: Colors.lightBlueAccent,
                      title: 'Log In',
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
