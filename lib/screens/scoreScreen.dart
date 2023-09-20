import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  _ScoreScreenState createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  List list = [
    'Yaya first quarter',
    'Yaya second quarter',
    'Yaya Third quarter'
  ];
  List date = ['28-09-17', '1-06-20', '27-04-19'];
  List grade = ['56%', '90%', '67%'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'MyScores',
            style: TextStyle(fontSize: 27),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            var listIndex = list[index];
            var dateIndex = date[index];
            var gradeIndex = grade[index];
            return ListTile(
              title: Text(
                listIndex,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
              subtitle: Text(
                dateIndex,
                style: const TextStyle(fontSize: 14, color: Colors.black54),
              ),
              trailing: Text(
                gradeIndex,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
            );
          },
          itemCount: list.length,
        ));
  }
}
