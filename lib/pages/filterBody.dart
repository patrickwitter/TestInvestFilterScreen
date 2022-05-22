import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../models/filters.dart';
import '../widgets/FilterSection.dart';
import '../widgets/customTextButton.dart';
import '../widgets/dropDownButton.dart';

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
                  initialText: Filters.price[0],
                  items: Filters.price,
                ),
                Text(
                  "to",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        fontSize: 12.sp,
                      ),
                ),
                CustomDropDownButton(
                  initialText: Filters.price[0],
                  items: Filters.price,
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
