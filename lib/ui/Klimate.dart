import "package:flutter/material.dart";

class Klimate extends StatefulWidget {
  @override
  _KlimateState createState() => new _KlimateState();
}

class _KlimateState extends State<Klimate> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('Klimate'),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.menu), onPressed: () => debugPrint("hi"))
        ],
      ),
      body: new Stack(
        children: <Widget>[
          new Image.asset('images/umbrella.png',
          width: 490.0,
          height: 1200.0,
          fit: BoxFit.fill,),

          new Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.fromLTRB(0.0, 10.9, 20.0, 0.0),
            child: new Text('Economy',
            style: cityStyle(),),
          )
        ],
      ),
    );
  }
}

TextStyle cityStyle()
{
  return new TextStyle(
    color: Colors.white,
    fontSize: 22.9,
    fontStyle: FontStyle.italic
  );
}
