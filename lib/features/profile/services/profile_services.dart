import 'package:flutter/material.dart';
import 'package:flutter_amazon_clone/constants/utils.dart';
import 'package:flutter_amazon_clone/features/auth/screens/auth_screens.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileServices {
  void logOut(BuildContext context) async {
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      await sharedPreferences.setString('x-auth-token', '');
      if (context.mounted) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          AuthScreen.routeName,
          (route) => false,
        );
      }
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
