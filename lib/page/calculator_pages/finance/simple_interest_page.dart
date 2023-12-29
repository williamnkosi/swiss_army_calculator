import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:swiss_army_calculator/info/finance_info.dart';
import 'package:swiss_army_calculator/widgets/app_expansion_tile.dart';

import '../../../models/calculator_types.dart';
import '../../../widgets/app_material_button.dart';
import '../../../widgets/drop_down_button.dart';

final _formKey = GlobalKey<FormBuilderState>();

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  bool isDisabled = true;
  _calculate() {}

  void _checkFormState() {
    bool state = isDisabled;
    try {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState?.saveAndValidate();
        state = false;
      } else {
        state = true;
      }
    } catch (e) {
      state = true;
    }
    setState(() {
      isDisabled = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      autovalidateMode: AutovalidateMode.disabled,
      key: _formKey,
      child: Column(
        children: [
          AppExpansionTile(
              title: FinanceCalculators.simpleInterest.value,
              description: finanaceData[FinanceCalculators.simpleInterest]!),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Column(
              children: [
                Principal(
                  check: _checkFormState,
                ),
                const SizedBox(
                  height: 16,
                ),
                InterestRate(
                  check: _checkFormState,
                ),
                const SizedBox(
                  height: 16,
                ),
                Duration(
                  check: _checkFormState,
                ),
              ],
            ),
          ),
          AppMaterialButton(
            buttonTitle: 'Calculate',
            onPressed: () => _calculate(),
            isDisabled: isDisabled,
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}

class Principal extends StatelessWidget {
  final Function check;
  const Principal({
    super.key,
    required this.check,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.number,
      name: 'principle',
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Principle Amount',
      ),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.numeric(),
      ]),
      onChanged: (text) => check(),
    );
  }
}

class InterestRate extends StatelessWidget {
  final Function check;
  const InterestRate({
    super.key,
    required this.check,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: FormBuilderTextField(
            keyboardType: TextInputType.number,
            name: 'interest rate',
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Interest Rate (%)',
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.numeric(),
            ]),
            onChanged: (text) => check(),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        const DropdownButtonExample(
          values: ['Years', 'Months', 'Days'],
        )
      ],
    );
  }
}

class Duration extends StatelessWidget {
  final Function check;
  const Duration({
    Key? key,
    required this.check,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: FormBuilderTextField(
            keyboardType: TextInputType.number,
            name: 'duration',
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Time Period',
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.numeric(),
            ]),
            onChanged: (text) => check(),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        const DropdownButtonExample(
          values: ['Annually', 'Monthly', 'Daily'],
        )
      ],
    );
  }
}
