import 'package:flutter/material.dart';

class Result extends StatelessWidget {
 

final Function() x;
final scoreResult; 

String get  resultPhrase{
  String text;
if(scoreResult>=70){
  text ="You are awesome  !";
}else if(scoreResult>=40){
  text ="Pretty likable  !";
}else{
    text ="You are so bad  !";

}

  return text;
}
Result(this.x,this.scoreResult ) ;
  @override
  Widget build(BuildContext context) {
    return Center(
    child: Column(

      children:  <Widget>[
          const Text(
        "",
        style:  TextStyle(fontSize: 30),
      ),
      Text(
        resultPhrase,
        style:  const TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
      FlatButton(
        child: const Text("Restart the App !"),
        onPressed: x,)
    ]

    ),

    );
  }
}
