import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:swiss_army_calculator/models/types.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/basal_metabolic_rate_page/basal_metabolic_rate_field_names.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/basal_metabolic_rate_page/bloc/basal_metabolic_rate_page_bloc.dart';
import 'package:swiss_army_calculator/widgets/data_table.dart';

import '../../../../utils/functions.dart';
import '../../../../widgets/app_expansion_tile.dart';
import '../../../../widgets/app_material_button.dart';
import '../../../../widgets/textFields/app_text_field.dart';

class BasalMetabolicRatePage extends StatelessWidget {
  const BasalMetabolicRatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      autovalidateMode: AutovalidateMode.disabled,
      key: BlocProvider.of<BasalMetabolicRatePageBloc>(context).state.formKey,
      child: Stack(children: [
        ListView(
          children: [
            BlocBuilder<BasalMetabolicRatePageBloc,
                BasalMetabolicRatePageState>(
              builder: (context, state) {
                return AppExpansionTile(
                    title: state.calculatorData.name,
                    description: state.calculatorData.shortDescription);
              },
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<BasalMetabolicRatePageBloc,
                BasalMetabolicRatePageState>(
              buildWhen: (previous, current) =>
                  previous.gender != current.gender,
              builder: (context, state) {
                return Row(
                  children: [
                    Radio(
                      value: Gender.male,
                      groupValue: state.gender,
                      onChanged: (value) =>
                          BlocProvider.of<BasalMetabolicRatePageBloc>(context)
                              .add(const BasalMetabolicRatePageEvent
                                  .toggleGenderEvent()),
                    ),
                    Text(Gender.male.value),
                    Radio(
                      value: Gender.female,
                      groupValue: state.gender,
                      onChanged: (value) =>
                          BlocProvider.of<BasalMetabolicRatePageBloc>(context)
                              .add(const BasalMetabolicRatePageEvent
                                  .toggleGenderEvent()),
                    ),
                    Text(Gender.female.value),
                  ],
                );
              },
            ),
            BlocBuilder<BasalMetabolicRatePageBloc,
                BasalMetabolicRatePageState>(
              buildWhen: (previous, current) => previous.unit != current.unit,
              builder: (context, state) {
                return Row(
                  children: [
                    Radio(
                      value: Units.imperial,
                      groupValue: state.unit,
                      onChanged: (value) =>
                          BlocProvider.of<BasalMetabolicRatePageBloc>(context)
                              .add(const BasalMetabolicRatePageEvent
                                  .toggleUnitEvent()),
                    ),
                    Text(Units.imperial.value),
                    Radio(
                      value: Units.metric,
                      groupValue: state.unit,
                      onChanged: (value) =>
                          BlocProvider.of<BasalMetabolicRatePageBloc>(context)
                              .add(const BasalMetabolicRatePageEvent
                                  .toggleUnitEvent()),
                    ),
                    Text(Units.metric.value),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AppTextField(
              fieldName: BasalMetabolicRateTextFieldData.age.name,
              fieldText: BasalMetabolicRateTextFieldData.age.name,
              onChange: (text) =>
                  BlocProvider.of<BasalMetabolicRatePageBloc>(context).add(
                      const BasalMetabolicRatePageEvent.checkFormStateEvent()),
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<BasalMetabolicRatePageBloc,
                BasalMetabolicRatePageState>(
              buildWhen: (previous, current) => previous.unit != current.unit,
              builder: (context, state) {
                if (state.unit == Units.metric) {
                  return AppTextField(
                    fieldName: BasalMetabolicRateTextFieldData.heightCM.name,
                    fieldText: BasalMetabolicRateTextFieldData.heightCM.name,
                    onChange: (text) =>
                        BlocProvider.of<BasalMetabolicRatePageBloc>(context)
                            .add(const BasalMetabolicRatePageEvent
                                .checkFormStateEvent()),
                  );
                }

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: calculateWidthPercentage(context, 45),
                        child: AppTextField(
                          fieldName:
                              BasalMetabolicRateTextFieldData.heightFeet.name,
                          fieldText:
                              BasalMetabolicRateTextFieldData.heightFeet.name,
                          onChange: (text) =>
                              BlocProvider.of<BasalMetabolicRatePageBloc>(
                                      context)
                                  .add(const BasalMetabolicRatePageEvent
                                      .checkFormStateEvent()),
                        )),
                    SizedBox(
                        width: calculateWidthPercentage(context, 45),
                        child: AppTextField(
                          fieldName:
                              BasalMetabolicRateTextFieldData.heightInches.name,
                          fieldText:
                              BasalMetabolicRateTextFieldData.heightInches.name,
                          onChange: (text) =>
                              BlocProvider.of<BasalMetabolicRatePageBloc>(
                                      context)
                                  .add(const BasalMetabolicRatePageEvent
                                      .checkFormStateEvent()),
                        )),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<BasalMetabolicRatePageBloc,
                BasalMetabolicRatePageState>(
              builder: (context, state) {
                if (state.unit == Units.metric) {
                  return AppTextField(
                    fieldName: BasalMetabolicRateTextFieldData.weightInKg.name,
                    fieldText: BasalMetabolicRateTextFieldData.weightInKg.name,
                    onChange: (text) =>
                        BlocProvider.of<BasalMetabolicRatePageBloc>(context)
                            .add(const BasalMetabolicRatePageEvent
                                .checkFormStateEvent()),
                  );
                }
                return AppTextField(
                  fieldName:
                      BasalMetabolicRateTextFieldData.weightInPounds.name,
                  fieldText:
                      BasalMetabolicRateTextFieldData.weightInPounds.name,
                  onChange: (text) =>
                      BlocProvider.of<BasalMetabolicRatePageBloc>(context).add(
                          const BasalMetabolicRatePageEvent
                              .checkFormStateEvent()),
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<BasalMetabolicRatePageBloc,
                BasalMetabolicRatePageState>(
              buildWhen: (previous, current) =>
                  previous.result != current.result,
              builder: (context, state) {
                if (state.result == 0) return const SizedBox();
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Center(
                    child: Text(
                        'Your BMR has been calculated at  ${state.result.toStringAsFixed(2)} Calories/day',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                );
              },
            ),
            BlocBuilder<BasalMetabolicRatePageBloc,
                BasalMetabolicRatePageState>(
              buildWhen: (previous, current) =>
                  previous.rowData != current.rowData,
              builder: (context, state) {
                if (state.rowData.isEmpty) return const SizedBox();
                return DataTableExample(
                  columns: const ['Activity Level', 'Calorie'],
                  rows: state.rowData,
                );
              },
            ),
          ],
        ),
        BlocBuilder<BasalMetabolicRatePageBloc, BasalMetabolicRatePageState>(
          buildWhen: (previous, current) =>
              previous.isDiabled != current.isDiabled,
          builder: (context, state) {
            return Positioned(
                bottom: 24,
                width: MediaQuery.of(context).size.width - 32,
                child: AppMaterialButton(
                  isDisabled: state.isDiabled,
                  buttonTitle: 'CALCULATE',
                  onPressed: () {
                    BlocProvider.of<BasalMetabolicRatePageBloc>(context).add(
                        const BasalMetabolicRatePageEvent.calculateBMREvent());
                  },
                ));
          },
        )
      ]),
    );
  }
}
