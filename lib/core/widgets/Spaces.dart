// ignore: file_names
import 'package:beka_store/core/constants/colors.dart';
import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {
  final double height;

  const VerticalSpace({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class HorizontalSpace extends StatelessWidget {
  final double width;

  const HorizontalSpace({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
class BuildVerticalDivider extends StatelessWidget {
  const BuildVerticalDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.0,
      height: 22.0,
      color: AppColors.darkPurple,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
    );
  }
}
class BuildHorizontalDivider extends StatelessWidget {
  const BuildHorizontalDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      color: AppColors.darkPurple,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
    );
  }
}
class GreyDivider extends StatelessWidget {
  const GreyDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 1,
        child: Container(
          color: const Color(0xffDFDFDF),
        ));
  }
}
