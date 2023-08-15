import 'package:flutter/material.dart';

class CommonFunction {
  // Function to return width
  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // Function to return actual height
  static double getActualHeight(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    height = height - padding.top - padding.bottom;
    return height;
  }

  // Function to return height without Appbar
  static double getHeightWithoutAppbar(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    height = height - padding.top - padding.bottom - kToolbarHeight;
    return height;
  }

  // Function to return height without BottomNavbar
  static double getHeightWithoutBottomNavbar(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    height = height - padding.top - padding.bottom - kBottomNavigationBarHeight;
    return height;
  }

  // Function to return height without BottomNavbar and Appbar
  static double getHeightWithoutBottomNavbarAndAppbar(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    height = height -
        padding.top -
        padding.bottom -
        kToolbarHeight -
        kBottomNavigationBarHeight;
    return height;
  }

  // Function to format date
  static String formatDate(DateTime dt) {
    String ans = "";
    ans += dt.day.toString().padLeft(2, "0");
    ans += "-";
    ans += dt.month.toString().padLeft(2, "0");
    ans += "-";
    ans += dt.year.toString();
    return ans;
  }
}
