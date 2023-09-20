import 'Questions.dart';

class QuizBrainSecond {
  int _questionNumber = 0;

  //the questionBank will be like _questionBank
  final List<Question> _questionBank = [
    Question(
        '1.	God promises sweet sleep and rest for a ……………………. believer.', 'B'),
    Question('2. Who is the baptizer?', 'A'),
    Question(
        '3.	As Christians, we believe that God is able to protect us from both physical and spiritual attacks. What Bible scripture, according to Lesson 20, can be used to back up this assurance?',
        'A'),
    Question(
        '4. "Meditate upon these things; give thyself wholly to them; that thy .................. may appear to all."',
        'B'),
    Question(
        '5. "A higher step than ............... the scriptures is ............ after the truth."',
        'C'),
    Question(
        '6.	"Seeking implies a very serious and determined search as if one is looking for a ................. (Prov.2:3-5)."',
        'B'),
    Question(
        '7.	Which of the following principles can be adopted to ensure abiding fruits?',
        'C'),
    Question(
        '8.	The Holy Spirit is pleased to increase the work of grace in a life when our ………. and …………… in God are expressed in the new convert to suitable and appropriate truths in the Holy Bible.',
        'C'),
    Question(
        '9.	According to the Lesson 14, anyone who wants to know the mysteries of God (Rev. 10:7) must satisfy certain conditions. He/she must: i.	Have the knowledge of Lord (Hos.6:3) ii.	Do God’s will iii.	Forgive his/her neighbors and do restitution iv.	Absolutely surrender (Phil.3:7-10).',
        'C'),
    Question('10.	Principle 9 of biblical economic principles is?', 'C'),
    Question(
        '11.  Memory verse for BIBLICAL PERSPECTIVE OF SELF-DEFENSE, was taken from?',
        'D'),
    Question(
        '12. Ye have not chosen me, but I have chosen you, and…………., that ye should go and bring forth fruit, and that your fruit ………..: that whatsoever ye shall ask of the Father in my name, he may give it you.',
        'D'),
    Question('13.	Principle 7 of biblical economic principles is?', 'D'),
    Question('14.	The memory verse for Lesson 21 was taken from?', 'A'),
    Question('15.	The topic of Lesson 18?', 'D'),
    Question('16.	Principle 3 of biblical economic principles is?', 'D'),
    Question('17. …………. factor of production is available in limited quantity.',
        'C'),
    Question(
        '18. “Then Peter said unto them, Repent, and be baptized every one of you in the name of Jesus Christ for the ………… of sins, and ye shall receive the gift of the Holy Ghost.”  (Acts 2:38).',
        'C'),
    Question(
        '19. The ministry of the Holy Spirit, amongst many, includes the following: i. He quickens our mortal body ii. He guides into all truth iii. He reproves the world of sin iv. He reproves the world of judgment.',
        'D'),
    Question(
        '20. The involvement of Christians in politics is neither secular nor beyond the ideologies of Christianity because it is the desire of God that believers take ……… and have ………… here on earth.',
        'B'),
    Question('21.	Politics is all about?', 'B'),
    Question(
        '22. Meditation is deeper than studying in that: i. Meditating on the word involves ‘eating, chewing’ and regurgitating’ the word  ii. It is what God Himself recommended to Joshua (Josh.1:8) iii. Meditation takes time but then all good things take time iv. Meditation can be substituted for studying and praying v. One of the best of times to meditate on the word is at night.',
        'D'),
    Question(
        '23. According to Lesson 16, the following are things to meditate on.i. Meditate on the works of God (Ps.8:3-4) ii. Meditate on the sufferings of Christ (Heb.12:3) iii. Meditate on the end of life (Deut.32:7)',
        'D'),
    Question(
        '24. The concluding statement in Lesson 16 says: "The ways of the Lord are marvelous, yet ..............."',
        'A'),
    Question(
        '25. “… greater works than these …” as Jesus prophesied can be found in?',
        'A'),
    Question('26.	The topic for lesson 25 was ……………..?', 'B'),
    Question(
        '27.The reasons why God caused His word to be written down is so that: i. Those who are desirous to know more about Him may search the scriptures and learn ii. As they search the scriptures, they will learn that God is a consuming fire iii. Believers will know it is a fearful thing to fall into the hand of the living God iv. They will learn not to fear Him v.It will lead them to the path of wisdom.',
        'D'),
    Question('28. The Bible Passage for Lesson 15 is taken from?', 'C'),
    Question('29. The title of the First Lesson Outline of Lesson 15 is?', 'C'),
    Question('30.	What are the first 2 entities of Kingdom economics? ', 'B'),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++; // or questionNumber = questionNumber + 1
    }
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

  String getUserQuestion(questionNumber) {
    return _questionBank[questionNumber].questionText;
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
