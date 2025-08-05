import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

class DashLineController extends GetxController {
  final axis = Axis.vertical.obs;
  // Renamed variables for clarity
  final dashThickness = 2.0.obs;
  final dashLength = 4.0.obs;
  final leadingPadding = 0.0.obs;
  final trailingPadding = 0.0.obs;
  final color = Rx<Color>(Colors.grey);

  void toggleAxis() {
    axis.value = axis.value == Axis.vertical ? Axis.horizontal : Axis.vertical;
  }

  void changeColor() {
    color.value = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  // Updated methods to match new variable names
  void updateDashThickness(double val) => dashThickness.value = max(1.0, dashThickness.value + val);
  void updateDashLength(double val) => dashLength.value = max(1.0, dashLength.value + val);
  void updateLeadingPadding(double val) => leadingPadding.value = max(0.0, leadingPadding.value + val);
  void updateTrailingPadding(double val) => trailingPadding.value = max(0.0, trailingPadding.value + val);

  void resetAll() {
    axis.value = Axis.vertical;
    dashThickness.value = 2.0;
    dashLength.value = 4.0;
    leadingPadding.value = 0.0;
    trailingPadding.value = 0.0;
    color.value = Colors.grey;
  }
}
