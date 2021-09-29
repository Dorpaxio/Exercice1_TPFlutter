import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tp1_flutter/circle_image.dart';
import 'package:tp1_flutter/profile_rectangle.dart';

void main() {
  runApp(const Tp1App());
}

class Tp1App extends StatelessWidget {
  const Tp1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        home: CupertinoPageScaffold(
            navigationBar:
                const CupertinoNavigationBar(middle: Text('Exercice 1')),
            child: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                        alignment: Alignment.topCenter,
                        clipBehavior: Clip.none,
                        children: const <Widget>[
                          ProfileRectangle(),
                          Positioned(top: -80, child: CircleImage())
                        ])
                  ]),
            )));
  }
}
