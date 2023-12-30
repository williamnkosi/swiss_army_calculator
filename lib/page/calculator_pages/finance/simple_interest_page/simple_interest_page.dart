import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:swiss_army_calculator/info/finance_info.dart';
import 'package:swiss_army_calculator/widgets/app_expansion_tile.dart';

import '../../../../models/calculator_types.dart';
import '../../../../widgets/app_material_button.dart';
import '../../../../widgets/drop_down_button.dart';

import '../../../../widgets/indicator.dart';
import '../../../../widgets/pie_chart.dart/pie_chart.dart';
import 'bloc/simple_interest_page_bloc.dart';
import 'bloc/simple_interest_page_event.dart';
import 'bloc/simple_interest_page_state.dart';
import 'simple_interes_text_field_names.dart';

class SimpleInterest extends StatelessWidget {
  const SimpleInterest({super.key});

  void _checkFormState(BuildContext context) =>
      BlocProvider.of<SimpleInterestPageBloc>(context)
          .add(const CheckFormStateEvent());

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      autovalidateMode: AutovalidateMode.disabled,
      key: BlocProvider.of<SimpleInterestPageBloc>(context).state.formKey,
      child: ListView(
        children: [
          AppExpansionTile(
              title: FinanceCalculators.simpleInterest.value,
              description: finanaceData[FinanceCalculators.simpleInterest]!),
          const SizedBox(
            height: 16,
          ),
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
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Indicator(
                color: Colors.blue,
                text: 'First',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Colors.red,
                text: 'Second',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
            ],
          ),
          BlocBuilder<SimpleInterestPageBloc, SimpleInterestPageState>(
            buildWhen: (previous, current) =>
                previous.sections != current.sections,
            builder: (context, state) {
              return SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: PieChartWidget(sections: state.sections));
            },
          ),
          BlocBuilder<SimpleInterestPageBloc, SimpleInterestPageState>(
            builder: (context, state) {
              return Column(
                children: [
                  const Text('This is the result'),
                  Text(state.result.toString())
                ],
              );
            },
          ),
          BlocBuilder<SimpleInterestPageBloc, SimpleInterestPageState>(
            builder: (context, state) {
              return AppMaterialButton(
                  isDisabled: state.isDiabled,
                  buttonTitle: 'Calculate',
                  onPressed: () =>
                      BlocProvider.of<SimpleInterestPageBloc>(context)
                          .add(const CalculateResultEvent()));
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
  final Function check;
  const Principal({
    super.key,
    required this.check,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.number,
      name: SimpleInterestTextFieldNames.principal.value,
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
            name: SimpleInterestTextFieldNames.rate.value,
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
            name: SimpleInterestTextFieldNames.duration.value,
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
