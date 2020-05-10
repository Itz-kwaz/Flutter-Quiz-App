import 'package:flutter/material.dart';
import 'package:quizapp/last_screen.dart';
import 'package:quizapp/object.dart';

class MainScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}


class _MainScreenState extends State<MainScreen> {

  int score = 0;
  int count = 0;
  int i = 0;
  Color buttonAColor =  Colors.blue;
  Color buttonBColor = Colors.blue;
  Color buttonCColor =  Colors.blue;
  Color buttonDColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    List<QObject> list  = new List();
    var q1 = QObject("Who proposed the initial ontological argument?","Aristotle", "Anslem","Descartes","Kwaz","Anslem");
    var q2 = QObject("Which of these philosopher is a pre socratic philosopher?", "Plato","Descartes","Kwaz","Thales","Thales");
    var q3 = QObject("Which of these philosopher is a Stoic?", "Epicetus","Socrates","Descartes","Nkwachi","Epicetus");
    var q4 =  QObject('Who said "I think therfore I am" ?' , "Rene Descartes","John Locke","Anslem","St.Augustine","Rene Descartes");
    var q5 =  QObject("Who  is the father of Skepticism?", "Plato","Pyrrhon","Thales","Aristotle","Pyrrhon");

    list.add(q1);
    list.add(q2);
    list.add(q3);
    list.add(q4);
    list.add(q5);

    return Scaffold(
      appBar: AppBar(
        title: Text("quiz"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 80.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(right: 30.0,bottom: 40.0),
              child:  Text(
                "$score/5",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              )
              )
            ],
          ),

        Row(children: <Widget>[
          SizedBox(width: 10,),
          Flexible(
              child: Text(list[count].question,
                style: TextStyle(
                    fontSize: 20.0
                ),)
          ),
          SizedBox(width: 10,),
        ]
        ),
          SizedBox(height: 30.0),
          Padding(
              padding: EdgeInsets.only(left:20.0,right:20.0,bottom:5.0),
              child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                      textColor: Colors.white,
                      child: Text(list[count].optionA),
                      color: buttonAColor,
                      onPressed: () {
                        _clickLogic(list[count].optionA,1,list[count]);
                      })
              )
          ),
          Padding(
              padding: EdgeInsets.only(left:20.0,right:20.0,bottom:5.0),
              child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(textColor: Colors.white,
                      child: Text(list[count].optionB),
                      color: buttonBColor,
                      onPressed: () {
                        _clickLogic(list[count].optionB,2,list[count]);
                      })
              )
          ),
          Padding(
              padding: EdgeInsets.only(left:20.0,right:20.0,bottom:5.0),
              child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(textColor: Colors.white,
                      child: Text(list[count].optionC),
                      color: buttonCColor,
                      onPressed: () {
                        _clickLogic(list[count].optionC,3,list[count]);
                      })
              )
          ),
          Padding(
              padding: EdgeInsets.only(left:20.0,right:20.0,bottom:5.0),
              child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(textColor: Colors.white,
                      child: Text(list[count].optionD),
                      color: buttonDColor,
                      onPressed: () {
                        _clickLogic(list[count].optionD,4,list[count]);
                      })
              )
          ),

        ],
      ),
    );
  }
  void _clickLogic(String value,int num,QObject qObject) async{
    if( i < 5 ){
      if(value == qObject.answer ){
        setState(()  {
          if(num == 1){
            buttonAColor = Colors.green;
          }else if(num ==  2){
            buttonBColor = Colors.green;
          }else if(num == 3){
            buttonCColor = Colors.green;
          }else if(num ==  4){
            buttonDColor = Colors.green;
          }
          score++;
        });
      }else{
        setState(() {
          if(num == 1){
            buttonAColor = Colors.red;
          }else if(num ==  2){
            buttonBColor = Colors.red;
          }else if(num == 3){
            buttonCColor = Colors.red;
          }else if(num ==  4){
            buttonDColor = Colors.red;
          }
        });
      }
      Future.delayed(const Duration(milliseconds: 800),(){
        setState(() {
          buttonBColor = Colors.blue;
          buttonAColor = Colors.blue;
          buttonCColor = Colors.blue;
          buttonDColor = Colors.blue;
          if(count < 4){
            count++;
          }
        });
      });
      i++;
    }
    if(i == 5){
      Future.delayed(const Duration(milliseconds: 500),(){
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => LastScreen(score: score),
        ),
        );
      });

    }


  }

  @override
  void initState() {
    super.initState();
    count = 0;
    score =0;
  }

}

