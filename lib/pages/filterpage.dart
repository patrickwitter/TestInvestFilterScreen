import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
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
      ),
    );
  }
}
