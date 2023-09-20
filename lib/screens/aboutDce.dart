import 'package:flutter/material.dart';

import '../components/constants.dart';

class AboutDcePage extends StatefulWidget {
  const AboutDcePage({Key? key}) : super(key: key);

  @override
  _AboutDcePageState createState() => _AboutDcePageState();
}

class _AboutDcePageState extends State<AboutDcePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('History of DCE'),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 23),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'The Directorate of Christian Education (DCE) is an arm of the Redeemed Christian Church of God established in 1992. DCE is the umbrella body for Sunday school, a fundamental agency in Christian Education.',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Expanded(
                    child: Image(
                      image: AssetImage("images/dce.jpeg"),
                    ),
                  )
                ],
              ),
              Text(
                'Sunday School was the first to be established of all training arms of the mission. Sunday School was established in 1952 as soon as the church commenced Sunday services. Many members have been drawn into the church the through the instrument of the Sunday School.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              kBox,
              Center(
                child: Text("VISION OF DCE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blueAccent)),
              ),
              kBox,
              Text(
                  "- To ensure every member of the church actively participates in the teaching and learning process. ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                  " - To raise, grow and make disciples of Christ with sound Christian life and culture who will, in turn, disciple others for Christ.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(
                height: 10,
              ),
              Text(
                "- To reproduce, in Christ, righteous Christians that will be heavenly conscious and earthly revelant.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '- To reach every tribe and tongue in all nations of the world with the truth of the Gospel.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                ' - To be and remain a powerful medium of developing manpower for all arms and units in the church.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              kBox,
              Center(
                child: Text("MISSION OF DCE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blueAccent)),
              ),
              kSizedBox,
              Text(
                  "- Search the Scripture and research in both conventional and contemporary subjects with the aim of confronting people of all ages, race and status with the absolute truth(Jn.5:39). ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                  " - Teach and nuture all members of the church with the undiluted word of God, from the cradle to the point of maturity in Christ(Matt.28:19-20).",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "- Train and re-train teachers who will diligently handle the truth in the right way and impart members with godly virtues(2Tim.2:2,15) .",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(
                height: 10,
              ),
              Text(
                  '- Translate Christian literatures into local and foreign languages for the multi-lingual members of the church and the world at large(Rev.7:9-10).',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(
                height: 10,
              ),
              Text(
                  ' - Publish material for the spiritual nourishment and edification of the body of Christ, and inspect the activities of Sunday School in all parishes of the mission(Ps.68:11) .',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
            ],
          ),
        ),
      ),
    );
  }
}
