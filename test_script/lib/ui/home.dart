import 'package:flutter/material.dart';

class scaffoldex extends StatelessWidget {
  const scaffoldex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scaffold"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.email),
                onPressed: () => debugPrint("email tapped"))
          ],
        ),
        body: Center(child: Text("This is the body of the app :)")));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepOrange,
      //Place the text in the center
      child: Center(
          child: Text(
        "Hejsan!",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
            fontStyle: FontStyle.italic),
      )),
    );
  }
}
