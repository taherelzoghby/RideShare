import 'package:flutter/material.dart';

List<Widget> dotted = List.generate(
  12,
  (index) => Padding(
    padding: const EdgeInsets.all(2),
    child: Container(
      height: 3,
      width: 2,
      color: Colors.green,
    ),
  ),
);
