import 'package:fluttertoast/fluttertoast.dart'; // Add fluttertoast dependency for toasts

void showCenterToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    gravity: ToastGravity.CENTER,
  );
}

void showBottomToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    gravity: ToastGravity.BOTTOM,
  );
}
