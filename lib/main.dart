import 'package:flutter/material.dart';
import 'package:shaama/screens/aboutDce.dart';
import 'package:shaama/screens/profilePage.dart';
import 'package:shaama/screens/registration.dart';
import 'package:shaama/screens/homePage.dart';
import 'package:shaama/screens/welcomePage.dart';
import 'package:shaama/screens/loginPage.dart';
import 'package:shaama/screens/afirstPage.dart';
import 'package:shaama/screens/scoreScreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SHAAMA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'aaa',
      routes: {
        'a': (context) => const RegistrationPage(),
        'aa': (context) => const Homepage(),
        'aaa': (context) => WelcomePage(),
        'aaaa': (context) => const LoginPage(),
        'aaaaa': (context) => const ProfilePage(),
        'ab': (context) => const QuizPageA(),
        'ad': (context) => const AboutDcePage(),
        'ac': (context) => const ScoreScreen(),
      },
    );
  }
}
