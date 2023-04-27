import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../core/constants/colors.dart';

showToast({required String msg}) {
  Fluttertoast.showToast(
    webPosition: "center",
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 3,
    backgroundColor: AppColors.green,
    webBgColor: "#00BB13",
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
