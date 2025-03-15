import 'package:animation_container/controller/animationprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Animationprovider>(builder: (context, value, child) {
        return Center(
          child: GestureDetector(
            onTap: () {
              value.anisize();
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 3),
              height: value.islogedin ? 200 : 100,
              width: value.islogedin ? 200 : 100,
              color: value.islogedin ? Colors.amber : Colors.black,
            ),
          ),
        );
      }),
    );
  }
}
