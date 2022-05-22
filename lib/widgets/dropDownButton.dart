// ignore_for_file: file_names

import 'package:filter_page/controllers/dropdown_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    Key? key,
    required this.initialText,
    required this.items,
  }) : super(key: key);

  final String initialText;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    final dropdownCtrl = Get.put(
      DropDownController(initialText),
      tag: initialText,
    );

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

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      width: MediaQuery.of(context).size.width * .4,
      decoration: BoxDecoration(
        color: Theme.of(context).iconTheme.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: Obx(
          () => DropdownButton<String>(
            isExpanded: true,
            icon: Icon(
              Icons.arrow_drop_down,
              size: 30,
              color: Theme.of(context).textTheme.headline4?.color,
            ),
            value: dropdownCtrl.value,
            onChanged: (selval) => dropdownCtrl.setval = selval!,
            items:
                items.map((filter) => createDropDownMenuItem(filter)).toList(),
          ),
        ),
      ),
    );
  }
}
