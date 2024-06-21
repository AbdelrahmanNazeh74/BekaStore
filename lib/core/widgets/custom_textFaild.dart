import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';

// ignore: must_be_immutable
class CustomTextFromField extends StatelessWidget {
  bool isPassword = false;

  bool? isValidator = false;
  int? maxLines;
  int? maxLength;
  final TextEditingController? controller;
  String? Function(String?)? validate;
  String? placeHolder;
  IconData? icon;
  bool enabled;
  String? suffixText;
  Widget? suffixIcon;
  Widget? suffixWidget;
  TextInputType? inputType;
  double? height;
  Color? fillColor;
  Color? textColor;
  Color? typeColor;
  Color? borderColors;
  Widget? prefix;
  int? fontSize;
  double? radius;

  Function()? onChangevisibility;
  bool? isMasked = false;
  final Function(String) onChanged;

  CustomTextFromField(
      {this.placeHolder,
      this.icon,
      this.enabled = true,
      this.isValidator,
      this.suffixWidget,
      this.controller,
      this.fontSize = 15,
      this.suffixIcon,
      this.fillColor,
      this.typeColor,
      this.radius = 7.0,
      required this.validate,
      this.suffixText,
      this.inputType,
      this.textColor,
      this.prefix,
      this.onChangevisibility,
      this.isPassword = false,
      required this.borderColors,
      required this.onChanged,
      this.isMasked,
      this.maxLines = 1,
      this.maxLength,
      this.height = 50.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        textInputAction: TextInputAction.done,
        obscureText: isPassword,
        enabled: enabled,
        maxLines: maxLines,
        maxLength: maxLength,
        validator: validate,
        textAlign: TextAlign.start,
        style: TextStyle(),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius!),
            borderSide: BorderSide(
              width: .1,
              color: borderColors!,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius!)),
            borderSide: BorderSide(color: borderColors!, width: .2),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(
              width: .7,
              color: Color.fromRGBO(242, 122, 85, 1),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius!)),
            borderSide: BorderSide(
              width: .7,
              color: AppColors.darkPurple,
            ),
          ),
          suffix: suffixWidget,
          suffixIcon: suffixIcon,
          prefixIcon: prefix,
          fillColor: fillColor ?? const Color(0xFFF4F4F4),
          filled: true,
          hintText: placeHolder,
          suffixText: suffixText,
          suffixStyle: TextStyle(
            textBaseline: TextBaseline.alphabetic,
            fontSize: 16.0,
            color: textColor ?? Colors.black,
            fontFamily: "Regular",
          ),
          hintStyle: GoogleFonts.montserrat(
              textBaseline: TextBaseline.alphabetic,
              fontSize: 14.0,
              color: textColor ?? Colors.grey,
              fontWeight: FontWeight.w500),
          labelStyle: const TextStyle(
            fontSize: 15.0,
            letterSpacing: 0.3,
            fontFamily: "Regular",
          ),
        ),
        keyboardType: inputType,
      ),
    );
  }
}
