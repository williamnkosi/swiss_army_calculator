import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../../../widgets/drop_down_button.dart';

class SimpleInterest extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();
  SimpleInterest({super.key});

  _calculate() {}

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          const Expanded(
            child: Column(
              children: [
                Principal(),
                SizedBox(
                  height: 16,
                ),
                InterestRate(),
                SizedBox(
                  height: 16,
                ),
                Duration(),
              ],
            ),
          ),
          MaterialButton(
            color: Theme.of(context).colorScheme.inversePrimary,
            onPressed: () {},
            child: const SizedBox(
              width: double.infinity,
              child: Center(
                  child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Raised Button'),
              )),
            ),
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}

class Duration extends StatelessWidget {
  const Duration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: FormBuilderTextField(
            name: 'duration',
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Time Period',
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.numeric(),
            ]),
            onChanged: (val) {
              print(val); // Print the text value write into TextField
            },
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

class InterestRate extends StatelessWidget {
  const InterestRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Flexible(
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Interest Rate (%)',
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        DropdownButtonExample(
          values: ['Years', 'Months', 'Days'],
        )
      ],
    );
  }
}

class Principal extends StatelessWidget {
  const Principal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Principle Amount',
      ),
    );
  }
}
