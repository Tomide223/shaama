import 'package:flutter/material.dart';
import 'package:shaama/components/roundedButton.dart';
import 'package:shaama/components/constants.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:shaama/components/dropDown.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// This is the page that register the user

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage>
    with SingleTickerProviderStateMixin {
  final _auth = FirebaseAuth.instance;
  late AnimationController controller;
  late Animation animation;
   String firstName  ='';

  String lastName = "";
  String number="";
  String email="";
  String password="";
  String username="";
  String? genT;
  String? ageT;
  // String? _regT;
  // String? _provT;
  // List<String>? regional = [];
  Object? gen;
 String reg="";
   String? age;
 String prov="";

  String frr = 'Select gender';
  String ped = 'Select province';
  String pad = 'Select Region';
  String cat = 'Select category';

  // final Map<String, List<String>> _provinceByRegion = {
  //   'Region 1': [
  //     'Select City',
  //     'Region 1 HQ',
  //     'Lagos Province 1',
  //     'Lagos Province 11',
  //     'Lagos Province 12',
  //     'Lagos Province 18',
  //     'Lagos Province 26',
  //     'Lagos Province 30',
  //     'Lagos Province 31',
  //     'Lagos Province 38',
  //     'Lagos Province 43',
  //     'Lagos Province 45',
  //     'Lagos Province 70',
  //     'Lagos Province 71',
  //     'Lagos Province 72',
  //     'Lagos Province 73',
  //     'Lagos Province 79',
  //     'Lagos Province 82',
  //     'Lagos Province 90',
  //     'Lagos Province 91',
  //   ],
  //   'Region 2': [
  //     'Region 2 HQ',
  //     'Lagos Province 8',
  //     'Lagos Province 9',
  //     'Lagos Province 10',
  //     'Lagos Province 13',
  //     'Lagos Province 14',
  //     'Lagos Province 17',
  //     'Lagos Province 28',
  //     'Lagos Province 42',
  //     'Lagos Province 49',
  //     'Lagos Province 50',
  //     'Lagos Province 51',
  //     'Lagos Province 56',
  //     'Lagos Province 57',
  //     'Lagos Province 69',
  //     'Lagos Province 83',
  //     'Lagos Province 84',
  //     'Lagos Province 85',
  //     'Lagos Province 86',
  //     'Lagos Province 87',
  //   ],
  // };
  // List<String>? prov1 = [
  //   'Region 1 HQ'
  //       'Lagos Province 1',
  //   'Lagos Province 11',
  //   'Lagos Province 12',
  //   'Lagos Province 18',
  //   'Lagos Province 26',
  //   'Lagos Province 30',
  //   'Lagos Province 31',
  //   'Lagos Province 38',
  //   'Lagos Province 43',
  //   'Lagos Province 45',
  //   'Lagos Province 70',
  //   'Lagos Province 71',
  //   'Lagos Province 72',
  //   'Lagos Province 73',
  //   'Lagos Province 79',
  //   'Lagos Province 82',
  //   'Lagos Province 90',
  //   'Lagos Province 91',
  // ];
  List<String>? prov2 = [
    'Select City',
    'Region 2 HQ',
    'Lagos Province 8',
    'Lagos Province 9',
    'Lagos Province 10',
    'Lagos Province 13',
    'Lagos Province 14',
    'Lagos Province 17',
    'Lagos Province 28',
    'Lagos Province 42',
    'Lagos Province 49',
    'Lagos Province 50',
    'Lagos Province 51',
    'Lagos Province 56',
    'Lagos Province 57',
    'Lagos Province 69',
    'Lagos Province 83',
    'Lagos Province 84',
    'Lagos Province 85',
    'Lagos Province 86',
    'Lagos Province 87',
  ];
  DropButton dropButton = DropButton();
  List<String>? prov3 = [
    'Region 3 HQ',
    'Osun Province 1',
    'Osun Province 2',
    'Osun Province 3',
    'Osun Province 4',
    'Osun Province 5',
    'Osun Province 6',
    'Osun Province 7',
    'Osun Province 8',
    'Osun Province 9',
  ];
  List<String>? prov4 = [
    'Region 4 HQ',
    'Kwara Province 1',
    'Kwara Province 2',
    'Kwara Province 3',
    'Kwara Province 4',
    'Kwara Province 5',
    'Kwara Province 6',
    'Kwara Province 7',
  ];
  List<String>? prov5 = [
    'Region 5 HQ',
    'Rivers Province 1',
    'Rivers Province 4',
    'Rivers Province 6',
    'Rivers Province 9',
    'Rivers Province 10',
    'Rivers Province 13',
    'Rivers Province 14',
    'Rivers Province 15',
  ];
  List<String>? prov6 = [
    'Region 6 HQ',
    'Anambra Province 1',
    'Anambra Province 2',
    'Anambra Province 3',
    'Ebonyi Province 1',
    'Ebonyi Province 2',
    'Enugu Province 1',
    'Enugu Province 2',
    'Enugu Province 3',
    'Enugu Province 4',
    'Enugu Province 5',
  ];
  List<String>? prov7 = [
    'Region 7 HQ',
    'Adamawa',
    'Taraba Province 1',
    'Taraba Province 2',
  ];
  List<String>? prov8 = [
    'Region 8 HQ',
    'Benue Province 1',
    'Benue Province 2',
    'Benue Province 3',
    'Benue Province 4',
    'Plateau Province 1',
    'Plateau Province 2',
    'Plateau Province 3',
  ];
  List<String>? prov9 = [
    'Region 9 HQ',
    'Kano Province 1',
    'Kano Province 2',
    'Jigawa',
    'Katsina',
  ];
  List<String>? prov10 = [
    'Region 10 HQ',
    'FCT Province 1',
    'FCT Province 2',
    'FCT Province 3',
    'FCT Province 4',
    'FCT Province 5',
    'FCT Province 6',
    'FCT Province 7',
    'FCT Province 8',
    'FCT Province 9',
    'FCT Province 10',
    'FCT Province 11',
    'FCT Province 12',
    'FCT Province 13',
    'FCT Province 14',
    'FCT Province 14',
    'FCT Province 15',
    'FCT Province 16',
  ];
  List<String?> gender = [
    'Male',
    'Female',
  ];
  List<String?> ageBracket = ['Adult Manual', 'YAYA Manual', 'Teenager Manual'];
  List<String> region = [
    'Region 1',
    'Region 2',
    'Region 3',
    'Region 4',
    'Region 5',
    'Region 6',
    'Region 7',
    'Region 8',
    'Region 9',
    'Region 10',
    'Region 11',
    'Region 12',
    'Region 13',
    'Region 14',
    'Region 15',
    'Region 16',
    'Region 17',
    'Region 18',
    'Region 19',
    'Region 20',
    'Region 21',
    'Region 22',
    'Region 23',
    'Region 24',
    'Region 25',
    'Region 26',
    'Region 27',
    'Region 28',
    'Region 29',
    'Region 30',
    'Region 31',
    'Region 32',
    'Region 33',
    'Region 34',
    'Region 35',
  ];
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white70)
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 38, right: 28, top: 88),
          // padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
    //           CircleAvatar(
    //               radius: controller.value,
    //
    //
    //               foregroundImage: const AssetImage(
    //                 'images/RCCGa.jpg',
    //               )),
    // Center(
    // child: AnimatedTextKit(
    // animatedTexts: [
    // // TypewriterAnimatedText(
    // // 'SHAAMA',
    // // textStyle: kLabelHomeTextStyle.copyWith(
    // // color: Colors.indigo, fontSize: 45),
    // // ),
    // FadeAnimatedText('SHAAMA',textStyle: kLabelHomeTextStyle.copyWith(
    //     color: Colors.indigo, fontSize: 45),)
    // ]
    // ),),
              const Center(
                child: Text(
                  "Create an account ",
                  style: TextStyle(fontSize: 29),
                ),
              ),
              kBox,
              buildTextField(
                  type: TextInputType.text,
                  fill: 'Enter your first name', full: firstName),
              kBox,
              buildTextField(
                  type: TextInputType.text,
                  fill: 'Enter your last name',
                  full: lastName),
              kBox,

              Container(
                height: 50,
                foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                        top: BorderSide(
                            color: Colors.lightBlueAccent, width: 2.0),
                        left: BorderSide(
                            color: Colors.lightBlueAccent, width: 2.0),
                        bottom: BorderSide(
                            color: Colors.lightBlueAccent, width: 2.0),
                        right: BorderSide(
                            color: Colors.lightBlueAccent, width: 2.0))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 9, top: 20),
                  child: DropdownButton(
                    alignment: AlignmentDirectional.center,
                    hint: Text(frr),
                    dropdownColor: Colors.white,
                    items: gender
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ))
                        .toList(),
                    value: gen,
                    onChanged: (value) {
                      gen = value as String;
                      setState(() {
                        gen = value;
                      });
                      if (gen == "Male") {
                        genT = 'Male';
                      }
                      if (gen == "Female") {
                        genT = 'Male';
                      }
                    },
                  ),
                ),
              ),
              kBox,
              buildTextField(
                  type: TextInputType.number,
                  fill: 'Enter your Phone Number',
                  full: number),
              kBox,
              buildTextField(
                  type: TextInputType.emailAddress,
                  fill: 'Enter your email address',
                  full: email),
              kBox,
              buildTextField(
                  type: TextInputType.text,
                  fill: 'Create your username',
                  full: username),
              kBox,
              TextField(
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter a password',
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              kBox,
              Container(
                height: 50,
                foregroundDecoration: BoxDecoration(
                    // I changed the circular radius from 10 to 5
                    borderRadius: BorderRadius.circular(10.0),
                    border: const Border(
                        top: BorderSide(
                            color: Colors.lightBlueAccent, width: 2.0),
                        right: BorderSide(
                            color: Colors.lightBlueAccent, width: 2.0),
                        left: BorderSide(
                            color: Colors.lightBlueAccent, width: 2.0),
                        bottom: BorderSide(
                            color: Colors.lightBlueAccent, width: 2.0))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 7, top: 20),
                  child: DropdownButton<String>(
                    alignment: AlignmentDirectional.center,
                    hint: Text(cat),
                    dropdownColor: Colors.white,
                    items: ageBracket
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ))
                        .toList(),
                    value: age,
                    onChanged: (value) {
                      setState(() {
                        age = value;
                      });
                      if (age == "Adult") {
                        ageT = 'Adult';
                      }
                      if (age == "YAYA") {
                        ageT = 'YAYA';
                      }
                      if (age == "Teenager") {
                        ageT = 'Teenager';
                      }
                    },
                  ),
                ),
              ),
              kBox,
              buildTextField(
                  type: TextInputType.text,
                  fill: 'Enter Region e.g Region 1',
                  full: reg),
              kBox,

              buildTextField(
                  type: TextInputType.text,
                  fill: 'Enter Province e.g Lagos Province 17',
                  full: prov),
              kBox,
              buildTextField(
                  type: TextInputType.text,
                  fill: "Enter Parish e.g King's Court Parish",
                  full: prov),
              kBox,
              // DropdownButton<String>(
              //   hint: Text(pad),
              //   dropdownColor: Colors.white,
              //   items: region.map<DropdownMenuItem<String>>((item) {
              //     return DropdownMenuItem<String>(
              //       value: item,
              //       child: Text(
              //         item,
              //         style: const TextStyle(
              //           fontSize: 18,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.black,
              //         ),
              //         overflow: TextOverflow.ellipsis,
              //       ),
              //     );
              //   }).toList(),
              //   value: reg,
              //   onChanged: (value) {
              //     setState(() {
              //       reg = value!;
              //       _regT = reg;
              //
              //       prov;
              //     });
              //   },
              // ),
              // // kBox,
              //
              // DropdownButton<String>(
              //     alignment: AlignmentDirectional.center,
              //     hint: Text(ped),
              //     dropdownColor: Colors.lightBlueAccent,
              //     items: _provinceByRegion[reg]
              //         ?.map((item) => DropdownMenuItem<String>(
              //               value: item,
              //               child: Text(
              //                 item,
              //                 style: const TextStyle(
              //                   fontSize: 18,
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.black,
              //                 ),
              //                 overflow: TextOverflow.ellipsis,
              //               ),
              //             ))
              //         .toList(),
              //     value: prov,
              //     onChanged: (value) {
              //       setState(() {
              //         prov = value!;
              //       });
              //     }),
              // kBox,
              RoundedButton(
                  title: 'SUBMIT',
                  colour: Colors.lightBlueAccent,
                  onPressed: () async {
                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email,
                              password: password);

                      Navigator.pushNamed(context,'aa');
                    } catch (e) {
                      //  An alert display come here
                      print(e);
                    }
                  }),
              RoundedButton(
                  title: 'CANCEL',
                  colour: Colors.redAccent,
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }

  TextField buildTextField(
      {required String fill,
      required String full,
      required TextInputType type}) {
    return TextField(
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        keyboardType: type,
        showCursor: true,
        textInputAction: TextInputAction.done,
        onChanged: (value) {
          // firebase comes here
          full = value;
        },
        decoration: kTextFieldDecoration.copyWith(
          hintText: fill,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ));
  }
}
