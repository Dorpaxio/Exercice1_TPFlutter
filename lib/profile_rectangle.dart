import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProfileRectangle extends StatelessWidget {
  const ProfileRectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset.fromDirection(3.14 / 2, 5))
            ]),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  direction: Axis.vertical,
                  spacing: 5,
                  children: [
                    Text(
                      'Charles DESGENETEZ',
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .merge(const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      'charles.desgenetez@gmail.com',
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .merge(const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200)
                              .apply(
                                  fontSizeFactor:
                                      MediaQuery.of(context).textScaleFactor)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(CupertinoIcons.person, color: Colors.white),
                        Text(
                          '@superexercice1',
                          style: CupertinoTheme.of(context)
                              .textTheme
                              .textStyle
                              .merge(const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200)),
                        )
                      ],
                    )
                  ]),
            ]));
  }
}
