import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_amazon_clone/constants/utils.dart';
import 'package:http/http.dart' as http;

void httpErrorHandle({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  switch (response.statusCode) {
    //showsnackbar(context, text)
    case 200:
      onSuccess();
      break;
    case 400:
      showSnackBar(context, jsonDecode(response.body)['msg']);
      //  print('This is a number 400');
      break;
    case 500:
      showSnackBar(context, jsonDecode(response.body)['error']);
      //  print('This is a number 500');
      break;
      default:
       showSnackBar(context, response.body);
  }
}
