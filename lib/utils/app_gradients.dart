import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mapbay/utils/core.dart';

class AppGradients {
  static final linear = LinearGradient(colors: [
    AppColors.bluePrimary,
    AppColors.colorSecondary,
  ], stops: [
    0.0,
    0.695
  ], transform: GradientRotation(2.13959913 * pi));
}
