import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizapp/main_screen.dart';

class LastScreen extends StatelessWidget{
  int score;
LastScreen( {Key key,@required this.score}) : super(key: key);
@override 
Widget build(BuildContext context){
  return Scaffold(
    body: Center(
      child:Column(
        children: <Widget>[
          SizedBox(height: 250.0),
          Padding(padding: EdgeInsets.all(10.0),
          child:    Text("You scored: $score/5",
            style: TextStyle(
                fontSize: 35.0
            ),)
          ),
       Padding(padding: EdgeInsets.only(left: 20.0,right: 10.0),
       child:Text(getText(score),
         style: TextStyle(
             fontSize: 20.0
         ),),
       ),
          SizedBox(height: 20.0,),
          RaisedButton(color: Colors.green,
              textColor: Colors.white,
              child: Text("Play Again"),
              onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => MainScreen(),
                ),
                );
              }
          ),
          SizedBox(height: 20.0,),
          RaisedButton(color: Colors.red,
              textColor: Colors.white,
              child: Text("Close "),
              onPressed: (){
               SystemNavigator.pop();
              }
          )
        ],
      ),
    ),
    
  );
}

String getText(int value){
   if (value < 3){
    return "Omo you no too sabi book oh";
   }else if(value < 5){
     return " You try sha na small remain";
   }else {
     return "Omniknowest you get everything, your head go big e sure me";
   }
}

}