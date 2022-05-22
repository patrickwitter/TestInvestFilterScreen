import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'filterBody.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 25.w,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          "Filter",
          style: Theme.of(context).textTheme.headline4,
        ),
        centerTitle: true,
        leading: TextButton(
            onPressed: () => {},
            child: Text(
              "Cancel",
              style: Theme.of(context).textTheme.headline4,
            )),
        actions: [
          TextButton(
            onPressed: () => {},
            child: Text(
              "Reset",
              style: Theme.of(context).textTheme.headline4,
            ),
          )
        ],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: FilterBody(),
        ),
      ),
    );
  }
}
