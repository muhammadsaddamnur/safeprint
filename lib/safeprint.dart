library safeprint;

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

bool isDev = false;

class SafePrint {
  ///Init method for setting environment [true] for Dev, [false] for Prod.
  ///
  ///Default value is [false]
  static init({value}) {
    isDev = value;
  }

  ///This alternatif method for [log] on dart
  static safeLog(value, {bool time = true}) {
    if (isDev) {
      String pre = "\u001b[32m[SafeLog Dude]";
      String debugTime = !time
          ? " 😎👉"
          : "\u001b[34m[⏱️${DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now())}] 😎👉";
      String suffix = "\u001b[33m$value";
      log(pre + debugTime + suffix);
    }
  }

  ///This alternatif method for [debugPrint] on dart
  static safeDebug(value, {bool time = true}) {
    if (isDev) {
      String pre = "\u001b[32m[SafeDebug Dude]";
      String debugTime = !time
          ? " 😎👉"
          : "\u001b[34m[⏱️${DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now())}] 😎👉";
      String suffix = "\u001b[33m$value";
      debugPrint(pre.toString() + debugTime.toString() + suffix.toString());
    }
  }

  ///This alternatif method for [print] on dart
  static safePrint(value, {bool time = true}) {
    if (isDev) {
      String pre = "\u001b[32m[SafePrint Dude]";
      String debugTime = !time
          ? " 😎👉"
          : "\u001b[34m[⏱️${DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now())}] 😎👉";
      String suffix = "\u001b[33m$value";
      print(pre + debugTime + suffix);
    }
  }
}
