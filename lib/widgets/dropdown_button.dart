// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({
    Key? key,
    required this.initialText,
    required this.items,
  }) : super(key: key);

  final String initialText;
  final List<String> items;
  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  late String value;

  @override
  void initState() {
    value = widget.initialText;
    super.initState();
  }

  DropdownMenuItem<String> createDropDownMenuItem(String text) {
    return DropdownMenuItem(
      value: text,
      child: Text(
        text,
        style: Theme.of(context).textTheme.button?.copyWith(
              fontSize: 13.sp,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      width: 40.w,
      decoration: BoxDecoration(
        color: Theme.of(context).iconTheme.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          icon: Icon(
            Icons.arrow_drop_down,
            size: 30,
            color: Theme.of(context).textTheme.headline4?.color,
          ),
          value: value,
          onChanged: (selval) => setState(() => value = selval!),
          items: widget.items
              .map((filter) => createDropDownMenuItem(filter))
              .toList(),
        ),
      ),
    );
  }
}
