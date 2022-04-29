import 'package:quizzler_app/question.dart';

class QuizBrain {
  int qno = 0;
  final List<Question> _qBank = [
    Question(qText: 'Coffee is a berry-based beverage', qAns: true),
    Question(qText: 'The capital of Australia is Sydney', qAns: false),
    Question(qText: 'The longest river in the world is the Amazon River', qAns: false),
    Question(qText: 'In a regular deck of cards, all kings have a mustache', qAns: false),
    Question(qText: 'There is no English word that rhymes with orange', qAns: true),
    Question(qText: 'The letter ‘A’ is the most commonly used in the English language', qAns: false),
    Question(qText: 'The first living animal sent into space were fruit flies', qAns: true),
    Question(qText: 'Among the letters of the alphabet, only the letter J is not included in the periodic table', qAns: true)
  ];

  void nextQ(){
    if(qno<_qBank.length){
      qno++;
    }
    else{
      qno=0;
    }
  }

  String getQ(){
    return _qBank[qno].qText;
  }
  bool getAns(){
    return _qBank[qno].qAns;
  }

  void reset() {
    qno=0;
  }

  isFinished() {
    if(qno >= _qBank.length-1){
      return true;
    }
    else{
      return false;
    }
  }
}