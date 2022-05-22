// ignore_for_file: file_names

import 'package:filter_page/widgets/FilterGrid.dart';
import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({
    Key? key,
    required this.title,
    this.filters,
    this.crossAxisCount = 0,
    this.buttonRatio = 0,
    this.child,
  }) : super(key: key);

  final Widget? child;
  final String title;
  final List<String>? filters;
  final int? crossAxisCount;
  final double? buttonRatio;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 12.0,
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * .3,
            ),
            child: child ??
                FilterGrid(
                  buttonRatio: buttonRatio!,
                  crossAxisCount: crossAxisCount!,
                  filters: filters!,
                ),
          )
        ],
      ),
    );
  }
}
