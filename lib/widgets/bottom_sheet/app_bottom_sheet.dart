import 'package:flutter/material.dart';

void appShowBottomSheet(
    {required BuildContext context,
    String? title,
    String? subTitle,
    required Widget child}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.45,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                Text(
                  title ?? '',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  subTitle ?? '',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            child,
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the bottom sheet
              },
              child:
                  Text('Close', style: Theme.of(context).textTheme.titleMedium),
            ),
          ],
        ),
      );
    },
  );
}
