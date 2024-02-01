import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/bloc/base_health_pages_bloc.dart';

import '../../../../models/types.dart';
import '../../../../utils/functions.dart';
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
      key: BlocProvider.of<BaseHealthPagesBloc>(context).state.formKey,
      child: Stack(children: [
        ListView(
          children: [
            BlocBuilder<BaseHealthPagesBloc, BaseHealthPagesState>(
              builder: (context, state) {
                return AppExpansionTile(
                    title: state.calculatorData.name,
                    description: state.calculatorData.shortDescription);
              },
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<BaseHealthPagesBloc, BaseHealthPagesState>(
              buildWhen: (previous, current) =>
                  previous.gender != current.gender,
              builder: (context, state) {
                return Row(
                  children: [
                    Radio(
                      value: Gender.male,
                      groupValue: state.gender,
                      onChanged: (value) =>
                          BlocProvider.of<BaseHealthPagesBloc>(context).add(
                              const BaseHealthPagesEvent.toggleGenderEvent()),
                    ),
                    Text(Gender.male.value),
                    Radio(
                      value: Gender.female,
                      groupValue: state.gender,
                      onChanged: (value) =>
                          BlocProvider.of<BaseHealthPagesBloc>(context).add(
                              const BaseHealthPagesEvent.toggleGenderEvent()),
                    ),
                    Text(Gender.female.value),
                  ],
                );
              },
            ),
            BlocBuilder<BaseHealthPagesBloc, BaseHealthPagesState>(
              buildWhen: (previous, current) => previous.unit != current.unit,
              builder: (context, state) {
                return Row(
                  children: [
                    Radio(
                      value: Units.imperial,
                      groupValue: state.unit,
                      onChanged: (value) =>
                          BlocProvider.of<BaseHealthPagesBloc>(context).add(
                              const BaseHealthPagesEvent.toggleUnitEvent()),
                    ),
                    Text(Units.imperial.value),
                    Radio(
                      value: Units.metric,
                      groupValue: state.unit,
                      onChanged: (value) =>
                          BlocProvider.of<BaseHealthPagesBloc>(context).add(
                              const BaseHealthPagesEvent.toggleUnitEvent()),
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
              fieldName: BaseHealthPagesTextFieldData.age.name,
              fieldText: BaseHealthPagesTextFieldData.age.name,
              onChange: (text) => BlocProvider.of<BaseHealthPagesBloc>(context)
                  .add(const BaseHealthPagesEvent.checkFormStateEvent()),
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<BaseHealthPagesBloc, BaseHealthPagesState>(
              buildWhen: (previous, current) => previous.unit != current.unit,
              builder: (context, state) {
                if (state.unit == Units.metric) {
                  return AppTextField(
                    fieldName: BaseHealthPagesTextFieldData.heightCM.name,
                    fieldText: BaseHealthPagesTextFieldData.heightCM.name,
                    onChange: (text) =>
                        BlocProvider.of<BaseHealthPagesBloc>(context).add(
                            const BaseHealthPagesEvent.checkFormStateEvent()),
                  );
                }

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: calculateWidthPercentage(context, 45),
                        child: AppTextField(
                          fieldName:
                              BaseHealthPagesTextFieldData.heightFeet.name,
                          fieldText:
                              BaseHealthPagesTextFieldData.heightFeet.name,
                          onChange: (text) =>
                              BlocProvider.of<BaseHealthPagesBloc>(context).add(
                                  const BaseHealthPagesEvent
                                      .checkFormStateEvent()),
                        )),
                    SizedBox(
                        width: calculateWidthPercentage(context, 45),
                        child: AppTextField(
                          fieldName:
                              BaseHealthPagesTextFieldData.heightInches.name,
                          fieldText:
                              BaseHealthPagesTextFieldData.heightInches.name,
                          onChange: (text) =>
                              BlocProvider.of<BaseHealthPagesBloc>(context).add(
                                  const BaseHealthPagesEvent
                                      .checkFormStateEvent()),
                        )),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<BaseHealthPagesBloc, BaseHealthPagesState>(
              builder: (context, state) {
                if (state.unit == Units.metric) {
                  return AppTextField(
                    fieldName: BaseHealthPagesTextFieldData.weightInKg.name,
                    fieldText: BaseHealthPagesTextFieldData.weightInKg.name,
                    onChange: (text) =>
                        BlocProvider.of<BaseHealthPagesBloc>(context).add(
                            const BaseHealthPagesEvent.checkFormStateEvent()),
                  );
                }
                return AppTextField(
                  fieldName: BaseHealthPagesTextFieldData.weightInPounds.name,
                  fieldText: BaseHealthPagesTextFieldData.weightInPounds.name,
                  onChange: (text) =>
                      BlocProvider.of<BaseHealthPagesBloc>(context).add(
                          const BaseHealthPagesEvent.checkFormStateEvent()),
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<BaseHealthPagesBloc, BaseHealthPagesState>(
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
            BlocBuilder<BaseHealthPagesBloc, BaseHealthPagesState>(
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
        BlocBuilder<BaseHealthPagesBloc, BaseHealthPagesState>(
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
                    BlocProvider.of<BaseHealthPagesBloc>(context)
                        .add(const BaseHealthPagesEvent.calculateEvent());
                  },
                ));
          },
        )
      ]),
    );
  }
}
