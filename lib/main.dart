import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main(){
  runApp( new MaterialApp(
    home: new MyStatelessWidget(),
  ));
}


class MyStatelessWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Stateless Widget")),
      body:  new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
              title: new Text("I love Flutter", style: new TextStyle(
                fontSize: 25.0
              ),), 
              icon: new Icon(Icons.favorite, size: 40.0, color: Colors.redAccent)
            ),
            new MyCard(
              title: new Text("I love Donut", style: new TextStyle(
                fontSize: 25.0
              )), 
              icon: new Icon(Icons.donut_large , size: 40.0, color: Colors.brown)
            ),
            new MyCard(
              title: new Text("I See you!", style: new TextStyle(
                fontSize: 25.0
              )), 
              icon: new Icon(Icons.visibility , size: 40.0, color: Colors.blue)
            ),
          ]
        )
      )
      
    );
  }
}

class MyCard extends StatelessWidget{
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context){
    return new Container(
      padding: EdgeInsets.only(bottom: 20.0),
      child: new Card(
        child: new Container(
          padding: EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[
              this.title,
              this.icon
            ],
          ),
        )
        
      ),
    );
  }

}