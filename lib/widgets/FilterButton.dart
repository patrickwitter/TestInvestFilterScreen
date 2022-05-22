// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    Key? key,
    required this.filter,
    required this.action,
  }) : super(key: key);

  final String filter;
  final Function() action;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: action,
        child: Text(
          filter,
          style: Theme.of(context).textTheme.button,
        ),
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).iconTheme.color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
