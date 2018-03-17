import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  final String name;
  Page3({this.name});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Page 3'),
        elevation: 0.0,
      ),
      body: new Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new CircleAvatar(
                  backgroundImage: new NetworkImage('https://image.freepik.com/free-vector/vector-illustration-of-a-mountain-landscape_1441-77.jpg'),
                  radius: 70.0),
            new Padding(
              padding: const EdgeInsets.all(58.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                                      new Text('Hello ' + name, style: new TextStyle(fontSize: 20.0, color: Colors.white),),

                  new RaisedButton(child: new Text('Home'),
                    onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false )
                  )
                ],
              ),
            )
          ],
          ),
        ),
      ),
    );
  }
}