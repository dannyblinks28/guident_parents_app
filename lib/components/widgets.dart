import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/const.dart';
 

Widget bildListTile(
    IconData icon, String title, VoidCallback function, Color color) {
  return ListTile(
    leading: Icon(icon),
    title: Text(title),
    onTap: function,
    iconColor: color,
    tileColor: color,
  );
}

Widget buildIcon(
  Icon icon,
  Color color,
  VoidCallback function,
) {
  return IconButton(
    icon: icon,
    color: kBlackColor,
    onPressed: function,
  );
}

Widget adminText(
  String text,
  double fontSize,
  FontWeight fontWeight,
) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: 'Product_Sans',
    ),
  );
}

Text buildText(String text, Color color, double fontSize, FontWeight fontWeight,
    TextAlign textAlign, TextOverflow overflow) {
  return Text(
    text,
    textAlign: textAlign,
    overflow: overflow,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: 'Product_Sans',
      color: color,
    ),
  );
}

Widget buildTextFieldLogin(
    String hint, TextEditingController controller, TextInputType inputType) {
  return TextField(
    onChanged: (value) {
      //Do something with the user input.
    },
    keyboardType: inputType,
    controller: controller,
    decoration: InputDecoration(
      filled: false,
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 1, color: kStrokeColor),
      ),
      disabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 1, color: kStrokeColor),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 1, color: kStrokeColor),
      ),
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1, color: kStrokeColor)),
      errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1, color: Colors.black)),
      focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1, color: kRed)),
      focusColor: kWhiteColor,
      hoverColor: kWhiteColor,
      hintText: hint,
      hintStyle: const TextStyle(
        fontSize: textMedium,
        fontWeight: FontWeight.normal,
        fontFamily: 'Product_Sans',
        color: kGrey0,
      ),
    ),
    cursorColor: kWhiteColor,
    style: const TextStyle(
      fontSize: textMedium,
      fontWeight: FontWeight.normal,
      fontFamily: 'Product_Sans',
      color: kGrey0,
    ),
  );
}

SizedBox buildOTPBoxes(
    TextEditingController controller,
    double height,
    double width,
    double fontSize,
    double hintFontSize,
    int textInputLimit,
    FocusNode currentFocusNode,
    FocusNode nextFocusNode,
    FocusNode previousNode,
    BuildContext context) {
  return SizedBox(
    width: width,
    height: height,
    child: TextFormField(
      onChanged: (val) {
        val.isNotEmpty
            ? FocusScope.of(context).requestFocus(nextFocusNode)
            : FocusScope.of(context).requestFocus(previousNode);
      },
      keyboardType: TextInputType.text,
      controller: controller,
      cursorColor: Colors.black,
      focusNode: currentFocusNode,
      textAlign: TextAlign.center,
      // inputFormatters: [
      //   FilteringTextInputFormatter.digitsOnly,
      //   LengthLimitingTextInputFormatter(textInputLimit),
      // ],
      style: TextStyle(
        fontSize: fontSize,
        color: kBlackColor,
        fontFamily: 'Ubuntu',
      ),
      validator: (val) => val!.isEmpty ? 'x' : null,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1, color: kGrey2),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1, color: kPrimaryColor),
        ),
        hintStyle: TextStyle(
          color: Colors.grey[400],
          fontSize: hintFontSize,
          fontFamily: 'Ubuntu',
        ),
      ),
    ),
  );
}

Widget buildContainerRect(String text) {
  return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(color: kGrey3),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: buildText(text, kGrey3, textMedium, FontWeight.normal,
            TextAlign.center, TextOverflow.clip),
      ));
}

Widget buildContainerBox(String text, Color textColor, Color color,
    double width, double opacity, String image) {
  return Container(
      width: width / 2.3,
      height: width / 3.5,
      decoration: BoxDecoration(
        color: color.withOpacity(opacity),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildText(text, textColor, textSLarge, FontWeight.normal,
                TextAlign.center, TextOverflow.clip),
            const SizedBox(
              height: 10,
            ),
            SizedBox(width: 40, child: Image.asset(image))
          ],
        ),
      ));
}
