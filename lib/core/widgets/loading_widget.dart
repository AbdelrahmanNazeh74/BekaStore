import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LoadingWidget extends StatelessWidget {
  final String? title;
  final Color? titleColor;

  const LoadingWidget({Key? key, this.title, this.titleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator.adaptive(
            backgroundColor: Colors.black,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
          // const SizedBox(height: 10),
          if (title != null)
            Text(
              title!,
              style: TextStyle(
                color: titleColor ?? AppColors.mainColor,
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }
}
