import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlaceHolder(),
    );
  }
}

class PlaceHolder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PlaceHolderState();
  }
}

class PlaceHolderState extends State<PlaceHolder> {
  String buttonCheck = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Type Of Button'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: ListView(
            children: [
              RaisedButton(
                color: Colors.orange,
                child: Text(
                  'Raised Button',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    buttonCheck = 'True';
                  });
                },
              ),
              FlatButton(
                color: Colors.purple,
                child: Text(
                  'Flat Button',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    buttonCheck = 'True';
                  });
                },
              ),
              OutlineButton(
                color: Colors.purple,
                onPressed: () {
                  setState(() {
                    buttonCheck = 'True';
                  });
                },
                child: Text(
                  'Outline Button',
                  style: TextStyle(),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    buttonCheck = 'True';
                  });
                },
                child: Container(
                  width: 200.0,
                  padding: EdgeInsets.all(10),
                  color: Colors.black54,
                  child: Text(
                    'InkWell',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    buttonCheck = 'True';
                  });
                },
                child: Container(
                  width: 200.0,
                  color: Colors.brown,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Gesture Detector',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              FloatingActionButton(
                backgroundColor: Colors.red,
                child: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    buttonCheck = 'True';
                  });
                },
              ),
              SizedBox(
                height: 15.0,
              ),
              FloatingActionButton.extended(
                backgroundColor: Colors.blue,
                icon: Icon(Icons.add),
                label: Text('Floating Action Button'),
                onPressed: () {
                  setState(() {
                    buttonCheck = 'True';
                  });
                },
              ),
              SizedBox(
                height: 15.0,
              ),
              IconButton(
                color: Colors.purple,
                icon: Icon(
                  Icons.ac_unit,
                  size: 40.0,
                ),
                onPressed: () {
                  setState(() {
                    buttonCheck = 'True';
                  });
                },
              ),
              SizedBox(
                height: 35.0,
              ),
              Center(
                child: Container(
                  child: Text(
                    '$buttonCheck',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
