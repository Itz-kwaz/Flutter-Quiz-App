
//Question object.
class QObject{
  String _question;
  String _answer;
  String _optionA;
  String _optionB;
  String _optionC;
  String _optionD;

  QObject(this._question,this._optionA,this._optionB,this._optionC,this._optionD,this._answer);

  String get optionB => _optionB;

  String get optionC => _optionC;

  String get optionA => _optionA;

  String get answer => _answer;

  String get question => _question;

  String get optionD => _optionD;


}