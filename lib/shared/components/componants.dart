import 'package:flutter/material.dart';

Widget filedForm({
  required String label,
  required IconData prefixIcon,
  required TextInputType keyboardType,
  required Function validate,
  IconData? suffix,
  Function? onpressedSuffix,
  bool isPass = false,
  Color colorBorder = Colors.blue,
  required Color floatingLabelcolor,
}) {
  return TextFormField(
    keyboardType: keyboardType,
    obscureText: isPass,
    decoration: InputDecoration(
      label: Text(label),
      floatingLabelStyle: TextStyle(
        color: floatingLabelcolor,
      ),
      prefixIcon: Icon(prefixIcon),
      suffix: IconButton(
        onPressed: () {
          onpressedSuffix!();
        },
        icon: Icon(suffix),
      ),
      border: const OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: colorBorder,
        ),
      ),
    ),
    validator: (value) => validate(value),
  );
}
