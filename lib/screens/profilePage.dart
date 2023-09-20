import 'package:flutter/material.dart';
// import 'package:rshama/components/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaama/components/customIcon.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // var name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("SHAAMA"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      bottomSheet: Container(
        color: Colors.blue,
        height: MediaQuery.of(context).size.height * 0.08,
        child: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildMaterialButton(
                  person: Icons.person,
                  onPressed: () {
                    Navigator.pushNamed(context, 'aaaaa');
                  }),
              buildMaterialButton(
                  person: FontAwesomeIcons.bookmark,
                  onPressed: () {
                    Navigator.pushNamed(context, 'ac');
                  }),
              buildMaterialButton(
                  person: FontAwesomeIcons.signOutAlt,
                  onPressed: () {
                    Navigator.pushNamed(context, 'aa');
                  }),
            ],
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                // a function where one can add picture will be added here
                backgroundColor: Colors.blue,
                radius: 85,
                child: Icon(
                  Icons.person,
                  size: 125,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                'Name',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              Text('Akintomide Ayomide',
                  style: TextStyle(fontSize: 25, color: Colors.black)),
              SizedBox(
                height: 40.0,
              ),
              Text('Region',
                  style: TextStyle(fontSize: 16, color: Colors.black54)),
              Text('Region 3',
                  style: TextStyle(fontSize: 25, color: Colors.black)),
              SizedBox(
                height: 40.0,
              ),
              Text('Province',
                  style: TextStyle(fontSize: 16, color: Colors.black54)),
              Text('Osun Province 2',
                  style: TextStyle(fontSize: 25, color: Colors.black)),
              SizedBox(
                height: 40.0,
              ),
              Text('Parish',
                  style: TextStyle(fontSize: 16, color: Colors.black54)),
              Text('All Sufficient One Parish',
                  style: TextStyle(fontSize: 25, color: Colors.black)),
              SizedBox(
                height: 40.0,
              ),
              Text('Phone Number',
                  style: TextStyle(fontSize: 16, color: Colors.black54)),
              Text('09058428815',
                  style: TextStyle(fontSize: 25, color: Colors.black)),
              SizedBox(
                height: 40.0,
              ),
              Text('Username',
                  style: TextStyle(fontSize: 16, color: Colors.white24)),
              Text('akayomideforGod',
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
