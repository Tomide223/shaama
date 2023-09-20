import 'package:shaama/components/Questions.dart';

class QuizBrain {
  int _questionNumber = 0;

  //the questionBank will be like _questionBank
  final List<Question> _questionBank = [
    Question(
        "1. Each day of our lives, each hours and each moment, we partake of God's underserved mercy this explains which of these questions?",
        'D'),
    Question('2. The Greek word for heart is?', 'A'),
    Question('3. Joshua 10:10-12, talks about what category of prayer?', 'A'),
    Question('4. Lesson 10 talks about ...........', 'B'),
    Question('5. What does it mean to be merciful?', 'A'),
    Question(
        '6. According to Lesson 11, in the lesson introduction, complete this statement: In Christian life, trial produces a godly character which in the end produces ......, ....., and .....',
        'D'),
    Question('7. Blessed refers to a state of spiritual ..... and .....', 'B'),
    Question(
        '8. Sanctification is the ..... work of grace after salvation.', 'B'),
    Question(
        '9. Beatitude inherited its blessedness from the Greek word?', 'B'),
    Question('10. The passage for Lesson 5 was taken from?', 'A'),
    Question(
        '11. Apostle Paul in his epistle to the Corinthians affirms that the ..... will not inherit the kingdom of God.',
        'C'),
    Question('12. What does it mean to be meek?', 'B'),
    Question(
        "13. According to Lesson 9; God's supreme purpose is to secure ....",
        'A'),
    Question('14. Lesson 12 talks about ....', 'D'),
    Question("15. We are not peacemaker if we don't have ..... of God.", 'C'),
    Question('16. The bible passage for Lesson 11 is .....', 'A'),
    Question(
        '17. Ingratitude is the result of vain .... and a ...... heart. ', 'B'),
    Question(
        '18. Endurance, joy and eternity with Christ are antidotes to ....',
        'C'),
    Question(
        '19. Many reasons were cited for thanking God according to Lesson 2. The first reason mentioned is? ',
        'C'),
    Question(
        '20. "The just man walketh in his ....... his ..... are blessed after him". ',
        'D'),
    Question(
        '21. King Darius decided to appoint .................... princes over his kingdom and also placed ..... presidents over it.',
        'D'),
    Question(
        '22. Apostle John in his first epistle made some clarifications on the issue of salvation. He says:God has given us .....and this is in His .......',
        'B'),
    Question(
        ' 23. The topic of Lesson 2 is "Be Thankful". Where is the Bible passage taken from?',
        'D'),
    Question(
        '24. The memory verse for Lesson 12, THE WEAPONS OF OUR WARFARE, was taken from?',
        'A'),
    Question(
        '25. Choose which of these biblical examples are meek people as mentioned in the Sunday school class.i.	David ii.	Jesus iii.	Samuel iv.	Joshua',
        'A'),
    Question('26. Matthew 6:9-11 talks about what level of prayer? ', 'D'),
    Question(
        '27. According to the Second Outline of Lesson 12, THE WHOLE ARMOUR OF GOD, what was the third armour of God in the outline?',
        'C'),
    Question('28. The original Greek word for meek is?', 'B'),
    Question(
        '29. According to Ephesian 2:5, 8-9 Salvation is the ......, undeserved ...... of God ',
        'A'),
    Question('30. What is the topic of Lesson 3?', 'B'),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
      // or questionNumber = questionNumber + 1

    }
  }

  String getUserQuestion(questionNumber) {
    return _questionBank[questionNumber].questionText;
  }

  bool? ere;
  void pQuestion() {
    if (_questionNumber == _questionBank.length - 1) {
      ere = true; // or questionNumber = questionNumber + 1
    }
  }

  void previousQuestion() {
    if (_questionNumber <= _questionBank.length - 1) {
      _questionNumber--; // or questionNumber = questionNumber - 1
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  String getUserPicked(questionNumber) {
    return _questionBank[questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  bool isNotEnough() {
    int zero = 0;
    if (_questionNumber <= zero) {
      return true;
    } else {
      return false;
    }
  }

  bool isTwenty() {
    pQuestion();
    if (ere = true) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
