// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'FilterButton.dart';

class FilterGrid extends StatelessWidget {
  const FilterGrid({
    Key? key,
    required this.buttonRatio,
    required this.crossAxisCount,
    required this.filters,
  }) : super(key: key);

  final double buttonRatio;
  final int crossAxisCount;
  final List<String> filters;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: buttonRatio,
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return FilterButton(
          filter: filters[index],
          action: () => {},
        );
      },
      itemCount: filters.length,
    );
  }
}
