import 'package:flutter/material.dart';

Widget defaultTextFormField({
  @required TextEditingController? controller,
  @required String? labeltext,
  @required IconData? prefixIcon,
  IconData? suffixIcon,
  @required TextInputType? type,
  bool obscureText = false,
  VoidCallback? onTap,
  Function()? suffixpressed,
  Function(String)? onchanged,
  Function(String)? onsubmitted,
  @required FormFieldValidator? validate,
  Color? color,
}) =>
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            labelStyle: TextStyle(color: color),
            labelText: labeltext,
            suffixIcon: suffixIcon != null
                ? IconButton(
                onPressed: suffixpressed,
                icon: Icon(
                  suffixIcon,
                  color: color,
                ))
                : null,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            prefixIcon: Icon(
              prefixIcon,
              color: color,
            )),
        obscureText: obscureText,
        keyboardType: type,
        onTap: onTap,
        onFieldSubmitted: onsubmitted,
        onChanged: onchanged,
        validator: validate,
      ),
    );