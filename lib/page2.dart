import 'package:flutter/material.dart';
import './page3.dart';

class Page2 extends StatelessWidget {
  final String name;
  Page2({this.name});
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Page 2'),
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
                  backgroundImage: new NetworkImage(
                      'https://image.freepik.com/free-vector/business-person-cartoon-with-a-light-bulb_1207-283.jpg'),
                  radius: 70.0),
              new Text(
                'Hello ' + name,
                style: new TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              new Padding(
                padding: const EdgeInsets.all(58.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new RaisedButton(
                        child: new Text('Home'),
                        onPressed: () => Navigator.of(context).pop()),
                    new RaisedButton(
                      child: new Text('Page 3'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new Page3(name: 'Rianpit')));
                      },
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
