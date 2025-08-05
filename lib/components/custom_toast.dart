import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastHelper {
  // Private constructor
  ToastHelper._();

  /// NOTE: fluttertoast doesn't have a separate 'title' and 'message'.
  /// We combine them into a single `msg` string.

  /// Shows a toast at the center of the screen
  static void showCenterToast({
    required String title,
    required String message,
  }) {
    Fluttertoast.showToast(
      msg: "$title\n$message", // Combine title and message
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      backgroundColor: Colors.blueGrey,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  /// Shows a toast at the bottom of the screen
  static void showBottomToast({
    required String title,
    required String message,
  }) {
    Fluttertoast.showToast(
      msg: message, // For bottom toasts, often just the message is enough
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black87,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}