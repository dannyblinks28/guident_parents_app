import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../components/widgets.dart';
import '../constants/const.dart';

bool isEmailValid(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

showToast(context, String msg, bool isError) {
  FToast fToast = FToast();
  fToast.init(context);

  Widget toast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: isError ? kRed : kPrimaryColor,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(isError ? Icons.cancel : Icons.check,
            size: 20, color: Colors.white),
        const SizedBox(
          width: 12.0,
        ),
        Expanded(
          child: Text(
            msg,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
    ),
  );

  fToast.showToast(
    child: toast,
    gravity: ToastGravity.TOP,
    toastDuration: const Duration(seconds: 2),
  );
}

showSnackBar(String? text, bool isError) {
  if (text == null) return;

  final snackBar = SnackBar(
      content: buildText(text, kWhiteColor, 14, FontWeight.normal,
          TextAlign.start, TextOverflow.clip),
      backgroundColor: isError ? kRed : kGreenColor);

  messengerKey.currentState!
    ..removeCurrentSnackBar()
    ..showSnackBar(snackBar);
}

showLoadingDialog(BuildContext context, String loadingText) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return Dialog(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(color: Color(0xff3C7DBF)),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: buildText(loadingText, kBlackColor, textMedium,
                    FontWeight.w300, TextAlign.start, TextOverflow.clip),
              ),
            ],
          ),
        ),
      );
    },
  );
}
