import 'dart:io';
import 'package:flutter/foundation.dart';

bool isMobile() {
  if (kIsWeb) {
    return false;
  } else {
    return Platform.isIOS||Platform.isAndroid;
  }
}

bool isDesktop() {
  if (kIsWeb) {
    return false;
  } else {
    return Platform.isLinux || Platform.isFuchsia || Platform.isWindows ||
        Platform.isMacOS;
  }
}

bool isWeb(){
    return kIsWeb;
}

