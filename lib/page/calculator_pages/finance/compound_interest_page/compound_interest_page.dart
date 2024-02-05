import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:swiss_army_calculator/page/calculator_pages/finance/compound_interest_page/bloc/compound_interest_page_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiss_army_calculator/page/calculator_pages/finance/compound_interest_page/consts.dart';
import '../../../../widgets/app_expansion_tile.dart';
import '../../../../widgets/app_material_button.dart';
import '../../../../widgets/bottom_sheet/app_bottom_sheet.dart';
import '../../../../widgets/row_of_options/row_of_options.dart';
import '../simple_interest_page/simple_interest_page.dart';
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
          children: const [
            AppExpansionTile(title: 'testing', description: 'testing'),
            SizedBox(
              height: 16,
            ),
            _InitiInvestmentField(),
            SizedBox(
              height: 16,
            ),
            _AnnualContributionField(),
            SizedBox(
              height: 16,
            ),
            _MothlyContributionField(),
            SizedBox(
              height: 16,
            ),
            _InterestRateField(),
            SizedBox(
              height: 16,
            ),
            _CompoundInterestField(),
            SizedBox(
              height: 16,
            ),
            _InvestmentLength(),
            SizedBox(
              height: 16,
            ),
            _InflationRateField()
          ],
        ),
        BlocBuilder<CompoundInterestPageBloc, CompoundInterestPageState>(
          buildWhen: (previous, current) =>
              previous.isDiabled != current.isDiabled,
          builder: (context, state) {
            return Positioned(
              bottom: 24,
              width: MediaQuery.of(context).size.width - 32,
              child: AppMaterialButton(
                  isDisabled: state.isDiabled,
                  buttonTitle: 'CALCULATE',
                  onPressed: () =>
                      BlocProvider.of<CompoundInterestPageBloc>(context)
                          .add(const CalculateCompoundInterest())),
            );
          },
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
            CompoundInterestTextFieldData.initialInvestment.name,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          )),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.numeric(),
      ]),
      onChanged: (text) => BlocProvider.of<CompoundInterestPageBloc>(context)
          .add(const CompoundInterestPageEvent.checkFormStateEvent()),
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
            CompoundInterestTextFieldData.annualContribution.name,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          )),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.numeric(),
      ]),
      onChanged: (text) => BlocProvider.of<CompoundInterestPageBloc>(context)
          .add(const CheckFormStateEvent()),
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
            CompoundInterestTextFieldData.monthlyContribution.name,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          )),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.numeric(),
      ]),
      onChanged: (text) => BlocProvider.of<CompoundInterestPageBloc>(context)
          .add(const CheckFormStateEvent()),
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
            CompoundInterestTextFieldData.interestRate.name,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          )),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.numeric(),
      ]),
      onChanged: (text) => BlocProvider.of<CompoundInterestPageBloc>(context)
          .add(const CheckFormStateEvent()),
    );
  }
}

class _CompoundInterestField extends StatelessWidget {
  const _CompoundInterestField();
  double calculateWidthPercentage(BuildContext context, double percentage) {
    double screenWidth = MediaQuery.of(context).size.width;
    double widthPercentage = (percentage / 100) * screenWidth;
    return widthPercentage;
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Opacity(
            opacity: 0.0,
            child: SizedBox(
              width: 0,
              child: TextField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                style: TextStyle(color: Colors.white.withOpacity(0)),
              ),
            ),
          ),
          ValueButton(
            buttonTitle: 'Annually',
            onPressed: () {
              appShowBottomSheet(
                  context: context,
                  title: 'Rate',
                  subTitle:
                      'This rate determines the amount of interest accrued on a principal amount over a specified period. ',
                  child: RowOfOptions<String>(
                      onPressed: (index) {},
                      pagecontext: context,
                      activeIndex: 0,
                      options: compoundInterestFrequency));
            },
          ),
        ],
      ),
    );
  }
}

class _InvestmentLength extends StatelessWidget {
  const _InvestmentLength();
  double calculateWidthPercentage(BuildContext context, double percentage) {
    double screenWidth = MediaQuery.of(context).size.width;
    double widthPercentage = (percentage / 100) * screenWidth;
    return widthPercentage;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            width: calculateWidthPercentage(context, 45),
            child: FormBuilderTextField(
              keyboardType: TextInputType.number,
              name: CompoundInterestTextFieldData.lengthYears.name,
              initialValue: 5.toString(),
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  label: Text(
                    CompoundInterestTextFieldData.lengthYears.name,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  )),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.numeric(),
              ]),
              onChanged: (text) =>
                  BlocProvider.of<CompoundInterestPageBloc>(context)
                      .add(const CheckFormStateEvent()),
            )),
        SizedBox(
            width: calculateWidthPercentage(context, 45),
            child: FormBuilderTextField(
              keyboardType: TextInputType.number,
              name: CompoundInterestTextFieldData.lengthMonths.name,
              initialValue: 0.toString(),
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  label: Text(
                    CompoundInterestTextFieldData.lengthMonths.name,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  )),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.numeric(),
              ]),
              onChanged: (text) =>
                  BlocProvider.of<CompoundInterestPageBloc>(context)
                      .add(const CheckFormStateEvent()),
            ))
      ],
    );
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
            CompoundInterestTextFieldData.inflationRate.name,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          )),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.numeric(),
      ]),
      onChanged: (text) => BlocProvider.of<CompoundInterestPageBloc>(context)
          .add(const CheckFormStateEvent()),
    );
  }
}
