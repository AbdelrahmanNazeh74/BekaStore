import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class NormalTextWidget extends StatefulWidget {
  String text;
  bool isTitle;
  Color? color;
  double? fontSize;
  String? fontFamily;
  TextDecoration? textDecoration;
  FontWeight? fontWeight;
  TextOverflow textOverflow;
  TextAlign? textAlign;
  double? lineHeight;
  NormalTextWidget(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.fontSize,
      this.isTitle = false,
      this.fontWeight,
      this.textDecoration,
      this.textAlign,
      this.lineHeight = 1.5,
      this.fontFamily,
      this.textOverflow = TextOverflow.clip});

  @override
  // ignore: library_private_types_in_public_api
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<NormalTextWidget> {
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      widget.text,
      textAlign: widget.textAlign,
      // minFontSize: 18,
      maxLines: 12,
      style: GoogleFonts.montserrat(
          color: widget.color,
          decoration: widget.textDecoration,
          fontSize: widget.fontSize,

          // height: Get.locale == Locale('ar') ? widget.lineHeight : 0,
          fontWeight: widget.fontWeight),
      overflow: widget.textOverflow,
    );
  }
}
