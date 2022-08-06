import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:flutter/widgets.dart';
import 'package:portfolio_project/core/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  double deviceWidth = mediaQuery.size.shortestSide;
  if (kIsWeb) {
    return DeviceScreenType.Desktop;
  }
  if (deviceWidth > 950 ||
      Platform.isWindows ||
      Platform.isLinux ||
      Platform.isMacOS) {
    return DeviceScreenType.Desktop;
  }

  if (deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }

  return DeviceScreenType.Mobile;
}
