import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';
import './question.dart';
void main()=>runApp(Myapp());

class Myapp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Myappstate();
  }
}
class _Myappstate extends State<Myapp>
{
  int index=0;
  int score=0;
  var questions=[
    {
      'question':"How many eyes",
      'answers':[{'text':'1','ans':'false'},{'text':'2','ans':'true'}]
    },
    {
      'question':"How was the day",
      'answers':[{'text':'fine','ans':'false'},{'text':'not fine','ans':'true'}]
    },
  ];
  void _score(sc){
    (sc=='true')?score+=10:score=score;
    print(score);
    setState(() {
      index++;

    });
  }
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello world'),

        ),
        
        body: (index<questions.length)? Column(
          children: [
           
           Question(questions[index]['question']),
           ...(questions[index]['answers'] as List<Map<String,Object>>).map((ans){
              return Answer(()=>_score(ans['ans']), ans['text']);
           }).toList()
           
          ],
        ):Center(child: Text('Finished ${score}'),)
       
      ),
    );
  }
}