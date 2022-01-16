import 'package:flutter/material.dart';

class DeviceSettings {

  /// Returns the current device's text scale factor [double].
  static double textScaleFactor(BuildContext context) { return MediaQuery.of(context).textScaleFactor;}

  /// Returns the current device's screen width [double].
  static double deviceWidth(BuildContext context) { return MediaQuery.of(context).size.width; }

  /// Returns the current device's screen height [double].
  static double deviceHeight(BuildContext context) { return MediaQuery.of(context).size.height; }

  /// Returns the current device's pixel ratio [double].
  static double devicePixelRatio(BuildContext context) { return MediaQuery.of(context).devicePixelRatio; }

  /// Returns the current device's orientation [DeviceOrientation].
  static Orientation deviceOrientation(BuildContext context) { return MediaQuery.of(context).orientation; }

  /// Returns the current device's Status Bar height [double].
  static double statusBarHeight(BuildContext context) { return MediaQuery.of(context).padding.top; }

  /// Returns the current device's Bottom Bar height [double].
  static double bottomBarHeight(BuildContext context) { return MediaQuery.of(context).padding.bottom; }

  /// Returns the App/Navigation Bar height [double].
  static double appBarHeight(AppBar appBar) { return appBar.preferredSize.height; }

  /// Returns the App main view height (DeviceHeight - statusBarHeight - appBarHeight) [double].
  static double appMainViewHeight(BuildContext context) { return deviceHeight(context) - statusBarHeight(context) - appBarHeight(AppBar()); }

  /// Returns the App main view width (DeviceWidth) [double].
  static double appMainViewWidth(BuildContext context) { return deviceWidth(context); }

  /// Returns the App top view height (appBarHeight + statusBarHeight) [double].
  static double appMainViewTop(BuildContext context) { return statusBarHeight(context) + appBarHeight(AppBar()); }



}