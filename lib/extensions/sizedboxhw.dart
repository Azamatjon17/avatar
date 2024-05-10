import 'package:flutter/material.dart';

extension Sizedbox on int {
  height() {
    return SizedBox(
      height: toDouble(),
    );
  }
  width() {
    return SizedBox(
      width: toDouble(),
    );
  }
}
