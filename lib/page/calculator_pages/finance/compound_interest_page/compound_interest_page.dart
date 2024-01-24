import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:swiss_army_calculator/page/calculator_pages/finance/compound_interest_page/bloc/compound_interest_page_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../info/finance_info.dart';
import '../../../../models/calculator_types.dart';
import '../../../../widgets/app_expansion_tile.dart';
import '../../../../widgets/app_material_button.dart';
import 'compound_interest_text_field_data.dart';

class CompoundInterestPage extends StatelessWidget {
  const CompoundInterestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      autovalidateMode: AutovalidateMode.disabled,
      key: BlocProvider.of<CompoundInterestPageBloc>(context).state.formKey,
      child: Stack(children: [
        ListView(
          children: [
            AppExpansionTile(
                title: FinanceCalculators.compoundInterest.value,
                description:
                    finanaceData[FinanceCalculators.compoundInterest]!),
            const SizedBox(
              height: 16,
            ),
            const _InitiInvestmentField(),
            const SizedBox(
              height: 16,
            ),
            const _AnnualContributionField(),
            const SizedBox(
              height: 16,
            ),
            const _MothlyContributionField(),
            const SizedBox(
              height: 16,
            ),
            const _InterestRateField(),
            const SizedBox(
              height: 16,
            ),
            const _CompoundInterestField(),
            const SizedBox(
              height: 16,
            ),
            const _InvestmentRateField(),
            const SizedBox(
              height: 16,
            ),
            const _InflationRateField()
          ],
        ),
        Positioned(
          bottom: 24,
          width: MediaQuery.of(context).size.width - 32,
          child: AppMaterialButton(
              isDisabled: false, buttonTitle: 'CALCULATE', onPressed: () {}),
        )
      ]),
    );
  }
}

class _InitiInvestmentField extends StatelessWidget {
  const _InitiInvestmentField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.number,
      name: CompoundInterestTextFieldData.initialInvestment.name,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          label: Text(
            CompoundInterestTextFieldData.initialInvestment.label,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          )),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.numeric(),
      ]),
    );
  }
}

class _AnnualContributionField extends StatelessWidget {
  const _AnnualContributionField();

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.number,
      name: CompoundInterestTextFieldData.annualContribution.name,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          label: Text(
            CompoundInterestTextFieldData.annualContribution.label,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          )),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.numeric(),
      ]),
    );
  }
}

class _MothlyContributionField extends StatelessWidget {
  const _MothlyContributionField();

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.number,
      name: CompoundInterestTextFieldData.monthlyContribution.name,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          label: Text(
            CompoundInterestTextFieldData.monthlyContribution.label,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          )),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.numeric(),
      ]),
    );
  }
}

class _InterestRateField extends StatelessWidget {
  const _InterestRateField();

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.number,
      name: CompoundInterestTextFieldData.interestRate.name,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          label: Text(
            CompoundInterestTextFieldData.interestRate.label,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          )),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.numeric(),
      ]),
    );
  }
}

class _CompoundInterestField extends StatelessWidget {
  const _CompoundInterestField();

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.number,
      name: CompoundInterestTextFieldData.compounded.name,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          label: Text(
            CompoundInterestTextFieldData.compounded.label,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          )),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.numeric(),
      ]),
    );
  }
}

class _InvestmentRateField extends StatelessWidget {
  const _InvestmentRateField();

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}

class _InflationRateField extends StatelessWidget {
  const _InflationRateField();

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.number,
      name: CompoundInterestTextFieldData.inflationRate.name,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          label: Text(
            CompoundInterestTextFieldData.inflationRate.label,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          )),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.numeric(),
      ]),
    );
  }
}
