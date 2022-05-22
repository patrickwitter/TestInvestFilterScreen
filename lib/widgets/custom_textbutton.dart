// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.title,
    required this.action,
  }) : super(key: key);

  final String title;
  final Function() action;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).cardColor,
      ),
      onPressed: action,
      child: Container(
        alignment: Alignment.center,
        width: 70.w,
        padding: const EdgeInsets.all(10),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                fontSize: 12.sp,
                color: Theme.of(context).scaffoldBackgroundColor,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
