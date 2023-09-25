import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaama/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:shaama/components/QuestionReasuable.dart';
import 'package:shaama/components/reuseableCard.dart';
import 'package:shaama/components/quiz_brainOne.dart';

import 'package:shaama/components/Option_Q1.dart';

import 'package:shaama/components/identifiers.dart';
import 'package:shaama/components/calculator.dart';
import 'package:shaama/components/dropDown.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shaama/components/UserpickedAnswerList.dart';

import 'package:shaama/components/testing.dart';
import 'package:shaama/components/quizBrainSecond.dart';

QuizBrain quizBrainA = QuizBrain();
QuizBrainSecond quizBrainSecond = QuizBrainSecond();

OptionOne optionQ1 = OptionOne();

ListIden iconKeeper = ListIden();
Calc scorekeeper = Calc();
UserAnswers answerList = UserAnswers();

DropButton dropButton = DropButton();

// enum GenderClass {
//   A,
//   B,
//   C,
//   D,
// }

class QuizPageA extends StatefulWidget {
  const QuizPageA({
    Key? key,
  }) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPageA> {
  String? selectOption;
  String? userPikedAnswer;

  int prev = 0;
  int g = 0;

  List<String> genderClass = [
    'A',
    'B',
    'C',
    'D',
  ];
  List grain = [quizBrainA, quizBrainSecond];

  @override
  void initState() {
    super.initState();
    qBrain();
  }

  qBrain() {
    if (dropButton.namePage == 'First Quarter') {
      setState(() {
        g = 0;
        grain[g].reset();
      });
    } else if (dropButton.namePage == 'Second Quarter') {
      setState(() {
        g = 1;
        grain[g].reset();
      });
    }
  }

  void resetIcon() {
    return iconKeeper.clear();
  }

  void adaptive() {
    iconKeeper.clear();
    scorekeeper.reset();

    answerList.clear();
  }

  void dead() {
    setState(() {
      adaptive();
      Navigator.pushNamed(context, '/');
    });
  }

  void deed() {
    setState(() {
      adaptive();
      Navigator.pushNamed(context, '/first');
    });
  }

  String? vibe;
  void unCheckAnswer(bool bool) {
    if (bool = true) {
      selectOption = answerList.getUserPicked(prev);
      vibe = answerList.getUserPicked(prev);
      iconKeeper.remove(prev);
      answerList.remove(prev);
      scorekeeper.remove(prev);
      userPikedAnswer = vibe;
    }
  }

  void checkAnswer(String? userPickedAnswer) {
    String? correctAnswer = grain[g].getCorrectAnswer();

    if (userPickedAnswer == correctAnswer) {
      iconKeeper.add(const Icon(
        Icons.check,
        color: Colors.green,
      ));
      scorekeeper.add(1);
    } else {
      iconKeeper.add(const Icon(
        Icons.close,
        color: Colors.red,
      ));
      scorekeeper.add(0);
    }
    if (userPickedAnswer == null) {
      Alert(
        context: context,
        title: 'Warning!',
        desc: 'No answer was selected!',
      ).show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(
        context,
        dead,
      ),
      child: Scaffold(
        backgroundColor: const Color(0xFF090C22),
        appBar: AppBar(
          title: Row(
            children: [
              dropButton.dropMe(context, adaptive),
              const SizedBox(
                width: 28.0,
              ),
              Text(
                dropButton.namePage ?? 'First Quarter',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.5,
                ),
              )
            ],
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.indigoAccent,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: QReuseableCard(
                  cardChild: Center(
                    child: Text(
                      grain[g].getQuestionText(),
                      style: kLabelTextStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  onPress: () {
                    setState(() {
                      selectOption = genderClass[0];
                      userPikedAnswer = 'A';
                    });
                  },
                  colour: selectOption == genderClass[0]
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: Center(
                    child: Text(
                      optionQ1.getOptionA(),
                      style: kLabelTextStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  onPress: () {
                    setState(() {
                      selectOption = genderClass[1];
                      userPikedAnswer = 'B';
                    });
                  },
                  colour: selectOption == genderClass[1]
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: Center(
                    child: Text(
                      optionQ1.getOptionB(),
                      style: kLabelTextStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  onPress: () {
                    setState(() {
                      selectOption = genderClass[2];
                      userPikedAnswer = 'C';
                    });
                  },
                  colour: selectOption == genderClass[2]
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: Center(
                    child: Text(
                      optionQ1.getOptionC(),
                      style: kLabelTextStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  onPress: () {
                    setState(() {
                      selectOption = genderClass[3];
                      userPikedAnswer = 'D';
                    });
                  },
                  colour: selectOption == genderClass[3]
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: Center(
                    child: Text(
                      optionQ1.getOptionD(),
                      style: kLabelTextStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: QReuseableCard(
                  cardChild: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (grain[g].isNotEnough() == true) {
                                Alert(
                                  context: context,
                                  title: 'Warning!',
                                  desc: 'You\'ve reached the start of the quiz',
                                ).show();
                              } else if (grain[g].isTwenty() == true) {
                                prev--;
                                unCheckAnswer(true);
                                grain[g].previousQuestion();
                                optionQ1.previousOption();
                              } else {
                                prev--;
                                unCheckAnswer(true);
                                grain[g].previousQuestion();
                                optionQ1.previousOption();
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF090C22),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(FontAwesomeIcons.angleLeft,
                                  color: Colors.blue
                                  // Icons.arrow_back
                                  ),
                              Text('PREVIOUS')
                            ],
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (grain[g].isFinished() == true) {
                                checkAnswer(userPikedAnswer);
                                // Alert(
                                //     context: context,
                                //     title: 'Finished!',
                                //     desc:
                                //         'You\'ve reached the end of the quiz.',
                                //     buttons: [
                                //       DialogButton(
                                //           child: const Text(
                                //             'SUBMIT',
                                //             style: kLabelTextStyle,
                                //           ),
                                //           color: Colors.blue,
                                //           onPressed: () {
                                //             String chesea =
                                //                 scorekeeper.sum().toString();
                                //
                                //             String chelsea = scorekeeper
                                //                 .percentage()
                                //                 .toStringAsFixed(1);
                                //
                                //             // Navigator.push(
                                //             //   context,
                                //             //   MaterialPageRoute(
                                //             //     builder: (context) =>
                                //             //         ResultPage(
                                //             //       score: chelsea,
                                //             //       meee: reviewStore[0],
                                //             //       cat: chesea,
                                //             //       tractor: deed,
                                //             //       goat: adaptive,
                                //             //     ),
                                //             //   ),
                                //             // );
                                //           })
                                //     ]).show();

                                answerList.add(userPikedAnswer!);
                              } else {
                                prev++;
                                checkAnswer(userPikedAnswer);
                                answerList.add(userPikedAnswer!);
                                selectOption = null;
                                grain[g].nextQuestion();
                                optionQ1.nextOption();
                                userPikedAnswer = null;
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF090C22),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.angleRight,
                                color: Colors.blue,
                                // Icons.arrow_forward
                              ),
                              Text('NEXT'),
                            ],
                          ),
                        ),
                      ]),
                ),
              )
            ]),
      ),
    );
  }
}
