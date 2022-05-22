// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../models/filters.dart';

import '../widgets/custom_textbutton.dart';
import '../widgets/dropdown_button.dart';
import '../widgets/filter_section.dart';

class FilterBody extends StatelessWidget {
  const FilterBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FilterSection(
            title: "Popularity",
            filters: Filters.popularity,
            crossAxisCount: 3,
            buttonRatio: 3,
          ),
          FilterSection(
            title: "Currency",
            filters: Filters.currency,
            crossAxisCount: 5,
            buttonRatio: 1,
          ),
          FilterSection(
            title: "Name",
            filters: Filters.name,
            crossAxisCount: 3,
            buttonRatio: 3,
          ),
          FilterSection(
            title: "Price",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDropDownButton(
                  initialText: Filters.pricemin[0],
                  items: Filters.pricemin,
                ),
                Text(
                  "to",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        fontSize: 12.sp,
                      ),
                ),
                CustomDropDownButton(
                  initialText: Filters.pricemax[0],
                  items: Filters.pricemax,
                ),
              ],
            ),
          ),
          FilterSection(
            title: "Symbol",
            filters: Filters.symbol,
            crossAxisCount: 3,
            buttonRatio: 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CustomTextButton(
              title: "Apply Filter",
              action: () {},
            ),
          )
        ],
      ),
    );
  }
}
