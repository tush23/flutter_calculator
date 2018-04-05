import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1,num2,result=0;
  TextEditingController t1=new TextEditingController(text:"");
  TextEditingController t2=new TextEditingController(text: "");
 
  void Add() {
    setState(() {});
    num1=int.parse(t1.text);
    num2 = int.parse(t2.text);
    result = num1+num2;
  }
  void Sub() {
    setState(() {});
    num1=int.parse(t1.text);
    num2 = int.parse(t2.text);
    result = num1-num2;
  }
  void Mul() {
    setState(() {});
    num1=int.parse(t1.text);
    num2 = int.parse(t2.text);
    result= num1*num2;
  }
  void Div() {
    setState(() {});
    num1=int.parse(t1.text);
    num2 = int.parse(t2.text);
    result = num1 ~/num2;
  }
  void Clear(){
    setState((){
      t1.text="";
      t2.text="";
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text("Calculator"),
      ),
      body: new Container(
        decoration: new BoxDecoration(color: Colors.white),
        //padding: const EdgeInsets.all(30.0),
        child:new Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Result =$result",style: new TextStyle(fontSize: 30.0,fontWeight:FontWeight.bold),),
            new Padding(padding: const EdgeInsets.only(bottom: 20.0)),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Number 1",),textAlign: TextAlign.center,style:
              new TextStyle(fontSize: 20.0,color: Colors.black),
              controller: t1,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Number 1"),textAlign: TextAlign.center,style:
              new TextStyle(fontSize: 20.0,color: Colors.black),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 50.0)),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new MaterialButton(
                  onPressed: Sub,color:Colors.white,height: 50.0,
                  child: new Chip(
                    avatar: new CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: new Text('-',style: new TextStyle(fontSize: 20.0),),
                      foregroundColor: Colors.black,
                    ),
                    label: new Text('Substract',style: new TextStyle(fontStyle: FontStyle.italic,fontSize:15.0),),backgroundColor: Colors.amber,
                  ),
                ),
                //new Padding(padding: const EdgeInsets.only(top: 3.0)),
                //   new Padding(padding: const EdgeInsets.all(10.00)),
                new MaterialButton(
                  onPressed: Add,color:Colors.white,height: 50.0,
                  child: new Chip(
                    avatar: new CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: new Text('+',style: new TextStyle(fontSize: 20.0),),
                      foregroundColor: Colors.black,
                    ),
                    label: new Text('Addition',style: new TextStyle(fontStyle: FontStyle.italic,fontSize:15.0),),backgroundColor: Colors.amber,
                   ),
                ),

            //  new Padding(padding: const EdgeInsets.only(top: 3.0)),
            new MaterialButton(
              onPressed: Mul,color:Colors.white,height: 50.0,
              child: new Chip(
                avatar: new CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: new Text('*',style: new TextStyle(fontSize: 20.0),),
                  foregroundColor: Colors.black,
                ),
                label: new Text('Multiply          ',style: new TextStyle(fontStyle: FontStyle.italic,fontSize:15.0),),backgroundColor: Colors.amber,
              ),
            ),
           //     new Padding(padding: const EdgeInsets.only(top: 3.0)),

                new MaterialButton(
              onPressed: Div,color:Colors.white,height: 50.0,
              child: new Chip(
                avatar: new CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: new Text('/',style: new TextStyle(fontSize: 20.0),),
                  foregroundColor: Colors.black,
                ),
                label: new Text('Divide   ',style: new TextStyle(fontStyle: FontStyle.italic,fontSize:15.0),),backgroundColor: Colors.amber,
              ),
            ),
             //   new Padding(padding: const EdgeInsets.only(top: 3.0)),

                new MaterialButton(
                  onPressed: Clear,color:Colors.white,height: 50.0,
                  child: new Chip(
                    avatar: new CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: new Text('#',style: new TextStyle(fontSize: 20.0),),
                      foregroundColor: Colors.black,
                    ),
                    label: new Text('Clear    ',style: new TextStyle(fontStyle: FontStyle.italic,fontSize:15.0),),backgroundColor: Colors.amber,
                  ),
                ),

          ],

        ),
        ]
        )
        ),
      );
  }
}
