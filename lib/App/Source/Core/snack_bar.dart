import 'package:flutter/material.dart';

showSnackBar(
    {required BuildContext context,
    required String text,
    bool isError = true}) async {
  SnackBar snackBar = SnackBar(
    content: Text(text),
  );
}
