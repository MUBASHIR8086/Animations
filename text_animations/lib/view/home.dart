import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:text_animations/controller/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Textprovider>(builder: (context, value, child) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedDefaultTextStyle(
                  child: Text("Hello"),
                  style: TextStyle(
                      fontSize: value.isloged ? 40 : 20, color: Colors.amber),
                  duration: Duration(seconds: 2)),
              Gap(10),
              ElevatedButton(
                  onPressed: () {
                    value.textsize();
                  },
                  child: Text("click"))
            ],
          ),
        );
      }),
    );
  }
}
