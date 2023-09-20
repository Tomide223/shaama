import 'package:shaama/components/Options.dart';

class OptionOne {
  int _optionNumber = 0;
  //the questionBank will be like _questionBank
  final List<Option> _optionBankQ0ne = [
    Option(
        "A. When are the 'the merciful' blessed?",
        "B. What are the 'the merciful'",
        "C. Who are the 'the merciful'?",
        "D. Why are the 'the merciful' blessed?"),
    Option('A. Kardeeah', 'B. Katharos ', 'C. Prays ', 'D. Zoar'),
    Option(
        'A. Prayers that controls heaven',
        'B.	Casual prayer',
        'C.	Prayers that brings angels down',
        'D.	Prayers that will cause us to fly'),
    Option('A. Trial of faith', 'B. Dynamics of prayer',
        'C. The merciful and the pure in heart', 'D. Weapons of our warfare'),
    Option(
        "A. To show forgiveness and compassion to an offender, one subject to one's power",
        'B. To have a humble attitude that expresses itself in the patient endurance of offenses',
        'C. To see need, bewail guilt and thirst after a Redeemer',
        'D. To bring wonderful message of Jesus to the world '),
    Option(
        'A. meekness, long-suffering and endurance',
        'B. endurance, long-suffering and meekness',
        'C. meekness, endurance and long-suffering',
        'D. endurance, meekness and long-suffering'),
    Option('A. joy and blessing', 'B. well-being and prosperity',
        'C. happiness and riches', 'D. growth and greatness'),
    Option('A. first', 'B. second', 'C. third', 'D. fourth'),
    Option('A. Dunamis', 'B. Makarioi', 'C. Beatus', 'D. Koinos'),
    Option(
        'A. Daniel 6:1-5', 'B. Joel 1: 1-5', 'C. Daniel 4:6-9', 'D. James 4:6'),
    Option(
        'A. unsanctified', 'B. unholy', 'C. unrighteous', 'D. uncircumcised'),
    Option('A. To be dense.', 'B. Power under control',
        'C. To be a weak fellow', 'D. To be powerless.'),
    Option('A. peace', 'B. love', 'C. joy ', 'D. faith'),
    Option('A. Trial of faith', 'B. Dynamics of prayer',
        'C. The merciful and the pure in heart', 'D. Weapons of our warfare'),
    Option('A. word', 'B. son ', 'C. spirit ', 'D. heart'),
    Option('A. 1 Peter 4:12-19', 'B. Ephesians 6:14-18', 'C. Philippians 4:6-7',
        'D. 2 Corinthains 10:4'),
    Option('A. thoughts/cruel', 'B. imagination/darkened',
        'C. thinking/foolish', 'D. intentions/blackened'),
    Option('A. punishment', 'B. confrontation', 'C. persecution',
        'D. condemnation'),
    Option(
        'A. For His mercy and divine provisions',
        'B. For His miracle and restoration of hope',
        'C. Thanksgiving is a command',
        'D. For victories over battles of life'),
    Option('A. righteousness/concubines', 'B. bluntness/parents',
        'C. integrity/descendants', 'D. integrity/children.'),
    Option('A. 130/4', 'B. 110/5', 'C. 125/4', 'D. 120/3'),
    Option('A. life everlasting/ministry', 'B. eternal life/Son',
        'C. life eternal/Son', 'D. perfect health/Son'),
    Option('A. Psalms 99: 1-4', 'B. Psalms 89: 1-5	', 'C. Psalms 101: 1-7',
        'D. Psalms 100: 1-5'),
    Option('A. 2 Corinthians 10:4', 'B. 2 Corinthians 10:2',
        'C. 2 Corinthians 10:3', 'D. 2 Corinthians 10:5'),
    Option(
      'A. i and ii',
      'B. ii only',
      'C. i, iii and iv',
      'D. All of the above',
    ),
    Option('A. Prayer of Thanksgiving', 'B. Prayer of decree',
        'C. Prayer of command', 'D. Prayer of demand'),
    Option('A. Belt of truth', 'B. Breastplate of righteousness',
        'C. Preparation of the Gospel', 'D. shield of faith'),
    Option('A. zoe', 'B. praus ', 'C.lev  ', 'D.lum'),
    Option('A. gracious/gifts', 'B. merciful/gifts', 'C. favor/promise',
        'D. gracious/love'),
    Option('A. Confidence of Salvation', 'B. Assurance of Salvation',
        'C. Eternal Salvation', 'D. Genuine of Salvation'),
  ];

  void nextOption() {
    if (_optionNumber < _optionBankQ0ne.length - 1) {
      _optionNumber++; // or questionNumber = questionNumber + 1
    }
  }

  void previousOption() {
    if (_optionNumber <= _optionBankQ0ne.length - 1) {
      _optionNumber--; // or questionNumber = questionNumber - 1
    }
  }

  String getOptionA() {
    return _optionBankQ0ne[_optionNumber].optionA;
  }

  String getOptionB() {
    return _optionBankQ0ne[_optionNumber].optionB;
  }

  String getOptionC() {
    return _optionBankQ0ne[_optionNumber].optionC;
  }

  String getOptionD() {
    return _optionBankQ0ne[_optionNumber].optionD;
  }

  String getUserOptionA(int questionNumba) {
    return _optionBankQ0ne[questionNumba].optionA;
  }

  String getUserOptionB(int questionNumba) {
    return _optionBankQ0ne[questionNumba].optionB;
  }

  String getUserOptionC(int questionNumba) {
    return _optionBankQ0ne[questionNumba].optionC;
  }

  String getUserOptionD(int questionNumba) {
    return _optionBankQ0ne[questionNumba].optionD;
  }

  void reset() {
    _optionNumber = 0;
  }
}
