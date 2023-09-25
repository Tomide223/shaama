import 'package:flutter/material.dart';
import 'package:shaama/components/constants.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue,
        title: const Text(
          'SHAAMA',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'aaaaa');
            },
            hoverColor: Colors.blue,
            child: const CircleAvatar(
              radius: 24.0,
              child: Icon(
                Icons.person,
                size: 37,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/oni.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        // color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.blue,
                elevation: 5.0,
                height: 53,
                minWidth: 200,
                onPressed: () {
                  Navigator.pushNamed(context, 'ab');
                },
                child: const Text(
                  'ADULT MANUAL',
                  style: TextStyle(fontSize: 19),
                ),
              ),
              kBox,
              MaterialButton(
                elevation: 5.0,
                height: 53,
                minWidth: 200,
                color: Colors.blue,
                onPressed: () {},
                child: const Text(
                  'YAYA MANUAL',
                  style: TextStyle(fontSize: 19),
                ),
              ),
              kBox,
              MaterialButton(
                color: Colors.blue,
                elevation: 5.0,
                height: 53,
                minWidth: 200,
                onPressed: () {},
                child: const Text(
                  'TEENS MANUAL',
                  style: TextStyle(fontSize: 19),
                ),
              ),
              kBox,
              MaterialButton(
                color: Colors.blue,
                elevation: 5.0,
                height: 53,
                minWidth: 200,
                onPressed: () {
                  Navigator.pushNamed(context, 'ad');
                },
                child: const Text(
                  'ABOUT DCE',
                  style: TextStyle(fontSize: 19),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
