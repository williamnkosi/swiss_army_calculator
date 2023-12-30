import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:swiss_army_calculator/info/finance_info.dart';
import 'package:swiss_army_calculator/widgets/app_expansion_tile.dart';

import '../../../../models/calculator_types.dart';
import '../../../../widgets/app_material_button.dart';
import '../../../../widgets/drop_down_button.dart';

import 'bloc/simple_interest_page_bloc.dart';
import 'bloc/simple_interest_page_event.dart';
import 'bloc/simple_interest_page_state.dart';

final _formKey = GlobalKey<FormBuilderState>();

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  final _textFieldPrinciple = 'principle';
  final _textFieldRate = 'rate';
  final _textFieldDuration = 'duration';

  void _checkFormState() {
    BlocProvider.of<SimpleInterestPageBloc>(context)
        .add(CheckFormStateEvent(formKey: _formKey));
  }

  void _onPress() {
    try {
      final principle = double.parse(
          _formKey.currentState!.fields[_textFieldPrinciple]!.value);
      final rate =
          double.parse(_formKey.currentState!.fields[_textFieldRate]!.value);
      final duration = double.parse(
          _formKey.currentState!.fields[_textFieldDuration]!.value);
      BlocProvider.of<SimpleInterestPageBloc>(context).add(CalculateResultEvent(
          principle: principle, rate: rate, duration: duration));
    } catch (e) {
      print(e);
    }
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
                  name: _textFieldPrinciple,
                  check: _checkFormState,
                ),
                const SizedBox(
                  height: 16,
                ),
                InterestRate(
                  name: _textFieldRate,
                  check: _checkFormState,
                ),
                const SizedBox(
                  height: 16,
                ),
                Duration(
                  name: _textFieldDuration,
                  check: _checkFormState,
                ),
                BlocBuilder<SimpleInterestPageBloc, SimpleInterestPageState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        Text('This is the result'),
                        Text(state.result.toString())
                      ],
                    );
                  },
                )
              ],
            ),
          ),
          BlocBuilder<SimpleInterestPageBloc, SimpleInterestPageState>(
            builder: (context, state) {
              return AppMaterialButton(
                  isDisabled: state.isDiabled,
                  buttonTitle: 'Calculate',
                  onPressed: () => _onPress());
            },
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
  final String name;
  final Function check;
  const Principal({
    super.key,
    required this.name,
    required this.check,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.number,
      name: name,
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
  final String name;
  final Function check;
  const InterestRate({
    super.key,
    required this.name,
    required this.check,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: FormBuilderTextField(
            keyboardType: TextInputType.number,
            name: name,
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
  final String name;
  final Function check;
  const Duration({
    Key? key,
    required this.name,
    required this.check,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: FormBuilderTextField(
            keyboardType: TextInputType.number,
            name: name,
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
