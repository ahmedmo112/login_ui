// ignore_for_file: unnecessary_statements

import 'package:flutter/material.dart';


//! ////////////////////////////////////////////
void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget), (route) => false);
//! ///////////////////////////////////////////

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: 45.0,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );


    Widget defaultButtonwithIcon({
  // double width = double.infinity,
  double imageWidth = 22,
  Color background = Colors.blue,
  bool isUpperCase = true,
  bool isAsset = false,
  double radius = 3.0,
  required Function function,
  required String text,
  required String image,
}) =>
    Container(
       width: 125,
       height: 35.0,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: [
            SizedBox(
              width: imageWidth,
              child: isAsset? Image.asset(image,fit: BoxFit.fitWidth,): Image.network(image,fit: BoxFit.fitWidth,)),
          
           
            Text(
              isUpperCase ? text.toUpperCase() : text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
           // SizedBox(width: 10,),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(dynamic? val)? onSubmit,
  Function? onChange,
  Function? onTap,
  bool isPassword = false,
  required String? Function(String? val)? validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      style: TextStyle(color: Colors.blue),
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: (s) {
        onSubmit!(s);
      },
      onChanged: (s) {
        onChange ?? () {};
      },
      onTap: () {
        onTap ?? () {};
      },
      validator: (value) {
        return validate!(value);
      },
      
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
          labelText: label,
          prefixIcon: Icon(prefix, size: 17,),
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: () {
                    suffixPressed!();
                  },
                  icon: Icon(
                    suffix,
                   
                  ),
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white)
          ),
            
          ),
    );









