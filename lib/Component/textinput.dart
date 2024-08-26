import 'package:flutter/material.dart';

Widget TextInputSp({
  required TextEditingController controller,
  required TextInputType textInputType,
  required Widget prif,
  required String? Function(String?)? vali,
  required Widget labely,

  
  TextInputAction? textInputAction,
  Widget? sufix,
  Widget? sufixIcon,
  bool obs = false,
  EdgeInsetsGeometry? paddy,
  EdgeInsetsGeometry? mary,
  EdgeInsetsGeometry? commpadd,
  double? wid,
  String? hinty,
  void Function(String)?onchan,
  
}) =>
    Container(
      width: wid,
      padding: paddy,
      margin: mary,
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        
        obscureText: obs,
        decoration: InputDecoration(
          hintText: hinty,
          contentPadding: commpadd,
          label: labely,
          prefixIcon: prif,
          suffixIcon: sufixIcon,
          suffix: sufix,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              16.7,
            ),
          ),
        ),
        validator: vali,
        onChanged:onchan ,
      ),
    );
