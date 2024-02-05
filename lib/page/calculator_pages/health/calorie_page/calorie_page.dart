import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/calorie_page/bloc/calorie_page_bloc.dart';

import '../../../../models/types.dart';
import '../../../../utils/functions.dart';
import '../../../../widgets/app_drop_down_button.dart';
import '../../../../widgets/app_expansion_tile.dart';
import '../../../../widgets/app_material_button.dart';
import '../../../../widgets/data_table.dart';
import '../../../../widgets/textFields/app_text_field.dart';
import '../health_page_text_field_names.dart';

class CaloriePage extends StatelessWidget {
  const CaloriePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      autovalidateMode: AutovalidateMode.disabled,
      key: BlocProvider.of<CaloriePageBloc>(context).state.formKey,
      child: Stack(children: [
        ListView(
          children: [
            BlocBuilder<CaloriePageBloc, CaloriePageState>(
              builder: (context, state) {
                return AppExpansionTile(
                    title: state.calculatorData.name,
                    description: state.calculatorData.shortDescription);
              },
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<CaloriePageBloc, CaloriePageState>(
              buildWhen: (previous, current) =>
                  previous.gender != current.gender,
              builder: (context, state) {
                return Row(
                  children: [
                    Radio(
                      value: Gender.male,
                      groupValue: state.gender,
                      onChanged: (value) =>
                          BlocProvider.of<CaloriePageBloc>(context)
                              .add(const CaloriePageEvent.toggleGenderEvent()),
                    ),
                    Text(Gender.male.value),
                    Radio(
                      value: Gender.female,
                      groupValue: state.gender,
                      onChanged: (value) =>
                          BlocProvider.of<CaloriePageBloc>(context)
                              .add(const CaloriePageEvent.toggleGenderEvent()),
                    ),
                    Text(Gender.female.value),
                  ],
                );
              },
            ),
            BlocBuilder<CaloriePageBloc, CaloriePageState>(
              buildWhen: (previous, current) => previous.unit != current.unit,
              builder: (context, state) {
                return Row(
                  children: [
                    Radio(
                      value: Units.imperial,
                      groupValue: state.unit,
                      onChanged: (value) =>
                          BlocProvider.of<CaloriePageBloc>(context)
                              .add(const CaloriePageEvent.toggleUnitEvent()),
                    ),
                    Text(Units.imperial.value),
                    Radio(
                      value: Units.metric,
                      groupValue: state.unit,
                      onChanged: (value) =>
                          BlocProvider.of<CaloriePageBloc>(context)
                              .add(const CaloriePageEvent.toggleUnitEvent()),
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
              fieldName: HealthTextData.age.name,
              fieldText: HealthTextData.age.name,
              onChange: (text) => BlocProvider.of<CaloriePageBloc>(context)
                  .add(const CaloriePageEvent.checkFormStateEvent()),
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<CaloriePageBloc, CaloriePageState>(
              buildWhen: (previous, current) => previous.unit != current.unit,
              builder: (context, state) {
                if (state.unit == Units.metric) {
                  return AppTextField(
                    fieldName: HealthTextData.heightCM.name,
                    fieldText: HealthTextData.heightCM.name,
                    onChange: (text) =>
                        BlocProvider.of<CaloriePageBloc>(context)
                            .add(const CaloriePageEvent.checkFormStateEvent()),
                  );
                }

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: calculateWidthPercentage(context, 45),
                        child: AppTextField(
                          fieldName: HealthTextData.heightFeet.name,
                          fieldText: HealthTextData.heightFeet.name,
                          onChange: (text) =>
                              BlocProvider.of<CaloriePageBloc>(context).add(
                                  const CaloriePageEvent.checkFormStateEvent()),
                        )),
                    SizedBox(
                        width: calculateWidthPercentage(context, 45),
                        child: AppTextField(
                          fieldName: HealthTextData.heightInches.name,
                          fieldText: HealthTextData.heightInches.name,
                          onChange: (text) =>
                              BlocProvider.of<CaloriePageBloc>(context).add(
                                  const CaloriePageEvent.checkFormStateEvent()),
                        )),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<CaloriePageBloc, CaloriePageState>(
              builder: (context, state) {
                if (state.unit == Units.metric) {
                  return AppTextField(
                    fieldName: HealthTextData.weightInKg.name,
                    fieldText: HealthTextData.weightInKg.name,
                    onChange: (text) =>
                        BlocProvider.of<CaloriePageBloc>(context)
                            .add(const CaloriePageEvent.checkFormStateEvent()),
                  );
                }
                return AppTextField(
                  fieldName: HealthTextData.weightInPounds.name,
                  fieldText: HealthTextData.weightInPounds.name,
                  onChange: (text) => BlocProvider.of<CaloriePageBloc>(context)
                      .add(const CaloriePageEvent.checkFormStateEvent()),
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<CaloriePageBloc, CaloriePageState>(
              builder: (context, state) {
                return const AppDropDownButton(
                  title: 'Activity Level',
                  child: Text('This is the activity level'),
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<CaloriePageBloc, CaloriePageState>(
              buildWhen: (previous, current) =>
                  previous.result != current.result,
              builder: (context, state) {
                if (state.result == 0) return const SizedBox();
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Center(
                    child: Text(
                        'To maintain you current weight, you need to consume about ${state.result.toStringAsFixed(2)} Calories/day',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                );
              },
            ),
            BlocBuilder<CaloriePageBloc, CaloriePageState>(
              buildWhen: (previous, current) =>
                  previous.weightGainRowData != current.weightGainRowData,
              builder: (context, state) {
                if (state.weightGainRowData.isEmpty) return const SizedBox();
                return DataTableExample(
                  columns: const ['Activity Level', 'Calories'],
                  rows: state.weightGainRowData,
                );
              },
            ),
            BlocBuilder<CaloriePageBloc, CaloriePageState>(
              buildWhen: (previous, current) =>
                  previous.weightLossRowData != current.weightLossRowData,
              builder: (context, state) {
                if (state.weightLossRowData.isEmpty) return const SizedBox();
                return DataTableExample(
                  columns: const ['Activity Level', 'Calories'],
                  rows: state.weightLossRowData,
                );
              },
            ),
          ],
        ),
        BlocBuilder<CaloriePageBloc, CaloriePageState>(
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
                    BlocProvider.of<CaloriePageBloc>(context)
                        .add(const CaloriePageEvent.calculateCaloriesEvent());
                  },
                ));
          },
        )
      ]),
    );
  }
}
