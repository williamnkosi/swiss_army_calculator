import 'package:flutter/material.dart';

class RowOfOptions<T> extends StatelessWidget {
  final BuildContext pagecontext;
  final Function(int index) onPressed;
  final dynamic state;
  final List<T> options;
  final int activeIndex;
  const RowOfOptions({
    Key? key,
    required this.pagecontext,
    required this.onPressed,
    this.state,
    required this.options,
    required this.activeIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: options.length,
          itemBuilder: (BuildContext _, int index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: InkWell(
                splashColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.3),
                onTap: () async {
                  onPressed(index);

                  Navigator.pop(context);
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: index == activeIndex
                          ? Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.1)
                          : null, // Optional: Set border radius
                    ),
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        options[index] as String,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    )),
              ),
            );
          }),
    );
  }
}
