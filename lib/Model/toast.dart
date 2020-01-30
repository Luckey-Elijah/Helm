import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

Future<bool> spawnToastMessage(String text) {
  return Fluttertoast.showToast(
    msg: '$text',
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIos: 1,
    backgroundColor: Colors.grey,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
