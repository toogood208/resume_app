 import 'package:flutter/material.dart';

AnimatedContainer slider(page, pagePosition, active,) {
    double margin = active ? 10 : 20;
    return AnimatedContainer(
      child: page[pagePosition],
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
    
    );
  }