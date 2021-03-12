import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  _tapButton() {
    debugPrint('Tapped button');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.email),
              onPressed: () => debugPrint('Email Tapped!')),
          IconButton(icon: Icon(Icons.access_alarms), onPressed: _tapButton),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen.shade500,
        child: Icon(Icons.call_missed),
        onPressed: () => debugPrint('Hello'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'First'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'Second'),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: 'Third'),
        ],
        onTap: (int index) => debugPrint('Tapped item: $index'),
      ),
      backgroundColor: Colors.redAccent.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomButton()
              // InkWell(
              //   child: Text(
              //     'Tap me!',
              //     style: TextStyle(fontSize: 23.4),
              //   ),
              //   onTap: () => debugPrint('tapped..'),
              // )
            ]),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          final snackBar = SnackBar(
            content: Text('Hello Again!'),
            backgroundColor: Colors.amberAccent.shade700,
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.pinkAccent,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text('Button'),
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.orange,
      child: Center(
        child: Text(
          'Hello flutter',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 23.4,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
