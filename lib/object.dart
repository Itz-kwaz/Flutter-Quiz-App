
//Question object.
class QObject{
  String _question;
  String _answer;
  String _optionA;
  String _optionB;

  QObject(this._question,this._optionA,this._optionB,this._answer);

  String get optionB => _optionB;

  String get optionA => _optionA;

  String get answer => _answer;

  set question(String value) {
    _question = value;
  }

  String get question => _question;

  set answer(String value) {
    _answer = value;
  }

  set optionB(String value) {
    _optionB = value;
  }

  set optionA(String value) {
    _optionA = value;
  }


}