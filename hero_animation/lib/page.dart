import 'package:flutter/material.dart';

class Heropage extends StatelessWidget {
  const Heropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListTile(
        leading: Hero(
            tag: 'Hero',
            child: Container(
              height: 50,
              width: 50,
              color: Colors.amber,
            )),
        onTap: () => gotosecondpage(context),
      ),
    );
  }

  void gotosecondpage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Scond page"),
        ),
        body: Center(
          child: Hero(
              tag: 'Hero',
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              )),
        ),
      );
    }));
  }
}
