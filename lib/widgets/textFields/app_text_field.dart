import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AppTextField extends StatelessWidget {
  final String fieldName;
  final String fieldText;
  final FormBuilderValidators? validators;
  final Function(String?) onChange;

  const AppTextField(
      {super.key,
      required this.fieldName,
      required this.fieldText,
      this.validators,
      required this.onChange});

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.number,
      name: fieldName,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          label: Text(
            fieldText,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          )),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.numeric(),
      ]),
      onChanged: onChange,
    );
  }
}
