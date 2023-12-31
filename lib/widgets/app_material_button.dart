import 'package:flutter/material.dart';

class AppMaterialButton extends StatelessWidget {
  final String buttonTitle;
  final Function onPressed;
  final bool isDisabled;
  const AppMaterialButton(
      {super.key,
      required this.buttonTitle,
      required this.onPressed,
      this.isDisabled = true});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor:
            Theme.of(context).colorScheme.secondary.withOpacity(0.2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      ),
      onPressed: isDisabled ? null : () => onPressed(),
      child: SizedBox(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              buttonTitle,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
