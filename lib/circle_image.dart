import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 170,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset.fromDirection(3.14 / 2, 5))
          ],
          shape: BoxShape.circle,
          image: const DecorationImage(
              image: NetworkImage(
                  'https://i.skyrock.net/9456/79169456/pics/3013997745_1_3_EAFO4DGG.jpg'),
              fit: BoxFit.fill)),
    );
  }
}
