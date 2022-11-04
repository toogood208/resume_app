import 'package:flutter/material.dart';

List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: currentIndex == index ? 30 : 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : Colors.black26,
            borderRadius: BorderRadius.circular(10)),
      );
    });
  }