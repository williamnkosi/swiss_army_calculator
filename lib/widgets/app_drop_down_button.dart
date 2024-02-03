import 'package:flutter/material.dart';

import 'bottom_sheet/app_bottom_sheet.dart';

class AppDropDownButton extends StatelessWidget {
  final String title;
  final Widget child;

  const AppDropDownButton({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        appShowBottomSheet(
            context: context,
            title: 'Rate',
            subTitle:
                'This rate determines the amount of interest accrued on a principal amount over a specified period. ',
            child: child);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(6.0), // Set your desired border radius
        ),
        elevation: 4,
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.w700),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
