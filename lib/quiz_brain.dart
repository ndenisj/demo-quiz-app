import 'question.dart';

class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Flutter is based on JAVA', false),
    Question('Google own\'s Flutter', true),
    Question('FLutter is used for both mobile and web development', true),
    Question('THE END', true),
  ];

  bool isFinished() {
    if(_questionNumber >= _questionBank.length - 1){
      return true;
    } else{
      return false;
    }
  }

  void reset(){
    _questionNumber = 0;
  }

  void nextQuestion(){
    if(_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    }
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

}