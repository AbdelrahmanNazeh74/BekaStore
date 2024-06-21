import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final Widget content;
  final Color borderColor;
  final bool addBorder;
  final Color color;
  final double width;
  final double height;
  final bool disabled;
  final double radius;
  final double padding;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.content,
    this.borderColor = Colors.black12,
    this.color = Colors.black,
    this.width = 200,
    this.height = 50,
    this.addBorder = false,
    this.disabled = false,
    this.radius = 12,
    this.padding = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: !disabled ? color : AppColors.darkPurple,
        borderRadius: BorderRadius.circular(radius),
        border: addBorder ? Border.all(color: borderColor, width: 1) : null,
      ),
      child: MaterialButton(
        onPressed: () => disabled ? null : onPressed(),
        child: content,
      ),
    );
  }
}
