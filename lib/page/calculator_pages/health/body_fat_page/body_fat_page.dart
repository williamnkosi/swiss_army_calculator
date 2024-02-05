import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/body_fat_page/bloc/body_fat_page_bloc.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/health_page_text_field_names.dart';

import '../../../../models/types.dart';
import '../../../../utils/functions.dart';
import '../../../../widgets/app_expansion_tile.dart';
import '../../../../widgets/app_material_button.dart';
import '../../../../widgets/data_table.dart';
import '../../../../widgets/textFields/app_text_field.dart';

class BodyFatPage extends StatelessWidget {
  const BodyFatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      autovalidateMode: AutovalidateMode.disabled,
      key: BlocProvider.of<BodyFatPageBloc>(context).state.formKey,
      child: Stack(children: [
        ListView(
          children: [
            BlocBuilder<BodyFatPageBloc, BodyFatPageState>(
              builder: (context, state) {
                return AppExpansionTile(
                    title: state.calculatorData.name,
                    description: state.calculatorData.shortDescription);
              },
            ),
            const SizedBox(
              height: 16,
            ),
            const GenderSection(),
            const UnitSection(),
            const FormualaSection(),
            const AgeSection(),
            const WeightSection(),
            const SizedBox(
              height: 16,
            ),
            const HeightSection(),
            const SizedBox(
              height: 16,
            ),
            const NeckSection(),
            const SizedBox(
              height: 16,
            ),
            const WaistSection(),
            const SizedBox(
              height: 16,
            ),
            const TextResultSection(),
            BlocBuilder<BodyFatPageBloc, BodyFatPageState>(
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
        BlocBuilder<BodyFatPageBloc, BodyFatPageState>(
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
                    BlocProvider.of<BodyFatPageBloc>(context)
                        .add(const BodyFatPageEvent.calculateBodyFatEvent());
                  },
                ));
          },
        )
      ]),
    );
  }
}

class TextResultSection extends StatelessWidget {
  const TextResultSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BodyFatPageBloc, BodyFatPageState>(
      buildWhen: (previous, current) => previous.result != current.result,
      builder: (context, state) {
        if (state.result == 0) return const SizedBox();
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(
            child: Text(
                'Your BMR has been calculated at  ${state.result.toStringAsFixed(2)} Calories/day',
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        );
      },
    );
  }
}

class AgeSection extends StatelessWidget {
  const AgeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BodyFatPageBloc, BodyFatPageState>(
      buildWhen: (previous, current) =>
          previous.navyVsBmiMethod != current.navyVsBmiMethod,
      builder: (context, state) {
        if (state.navyVsBmiMethod == NavyVsBmiMethod.bmi) {
          return AppTextField(
            fieldName: HealthTextData.age.name,
            fieldText: HealthTextData.age.name,
            onChange: (text) => BlocProvider.of<BodyFatPageBloc>(context)
                .add(const BodyFatPageEvent.checkFormStateEvent()),
          );
        }

        return const SizedBox();
      },
    );
  }
}

class UnitSection extends StatelessWidget {
  const UnitSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BodyFatPageBloc, BodyFatPageState>(
      buildWhen: (previous, current) => previous.unit != current.unit,
      builder: (context, state) {
        return Row(
          children: [
            Radio(
              value: Units.imperial,
              groupValue: state.unit,
              onChanged: (value) => BlocProvider.of<BodyFatPageBloc>(context)
                  .add(const BodyFatPageEvent.toggleUnitEvent()),
            ),
            Text(Units.imperial.value),
            Radio(
              value: Units.metric,
              groupValue: state.unit,
              onChanged: (value) => BlocProvider.of<BodyFatPageBloc>(context)
                  .add(const BodyFatPageEvent.toggleUnitEvent()),
            ),
            Text(Units.metric.value),
          ],
        );
      },
    );
  }
}

class GenderSection extends StatelessWidget {
  const GenderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BodyFatPageBloc, BodyFatPageState>(
      buildWhen: (previous, current) => previous.gender != current.gender,
      builder: (context, state) {
        return Row(
          children: [
            Radio(
              value: Gender.male,
              groupValue: state.gender,
              onChanged: (value) => BlocProvider.of<BodyFatPageBloc>(context)
                  .add(const BodyFatPageEvent.toggleGenderEvent()),
            ),
            Text(Gender.male.value),
            Radio(
              value: Gender.female,
              groupValue: state.gender,
              onChanged: (value) => BlocProvider.of<BodyFatPageBloc>(context)
                  .add(const BodyFatPageEvent.toggleGenderEvent()),
            ),
            Text(Gender.female.value),
          ],
        );
      },
    );
  }
}

class FormualaSection extends StatelessWidget {
  const FormualaSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BodyFatPageBloc, BodyFatPageState>(
      buildWhen: (previous, current) =>
          previous.navyVsBmiMethod != current.navyVsBmiMethod,
      builder: (context, state) {
        return Row(
          children: [
            Radio(
              value: NavyVsBmiMethod.navy,
              groupValue: state.navyVsBmiMethod,
              onChanged: (value) => BlocProvider.of<BodyFatPageBloc>(context)
                  .add(const BodyFatPageEvent.toggleFormulaMethodEvent()),
            ),
            Text(NavyVsBmiMethod.navy.value),
            Radio(
              value: NavyVsBmiMethod.bmi,
              groupValue: state.navyVsBmiMethod,
              onChanged: (value) => BlocProvider.of<BodyFatPageBloc>(context)
                  .add(const BodyFatPageEvent.toggleFormulaMethodEvent()),
            ),
            Text(NavyVsBmiMethod.bmi.value),
          ],
        );
      },
    );
  }
}

class WeightSection extends StatelessWidget {
  const WeightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BodyFatPageBloc, BodyFatPageState>(
      buildWhen: (previous, current) =>
          previous.navyVsBmiMethod != current.navyVsBmiMethod,
      builder: (context, state) {
        if (state.navyVsBmiMethod == NavyVsBmiMethod.bmi) {
          if (state.unit == Units.metric) {
            return Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                AppTextField(
                  fieldName: HealthTextData.weightInKg.name,
                  fieldText: HealthTextData.weightInKg.name,
                  onChange: (text) => BlocProvider.of<BodyFatPageBloc>(context)
                      .add(const BodyFatPageEvent.checkFormStateEvent()),
                ),
              ],
            );
          }
          return Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              AppTextField(
                fieldName: HealthTextData.weightInPounds.name,
                fieldText: HealthTextData.weightInPounds.name,
                onChange: (text) => BlocProvider.of<BodyFatPageBloc>(context)
                    .add(const BodyFatPageEvent.checkFormStateEvent()),
              ),
            ],
          );
        }

        return const SizedBox();
      },
    );
  }
}

class HeightSection extends StatelessWidget {
  const HeightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BodyFatPageBloc, BodyFatPageState>(
      buildWhen: (previous, current) => previous.unit != current.unit,
      builder: (context, state) {
        if (state.unit == Units.metric) {
          return AppTextField(
            fieldName: HealthTextData.heightCM.name,
            fieldText: HealthTextData.heightCM.name,
            onChange: (text) => BlocProvider.of<BodyFatPageBloc>(context)
                .add(const BodyFatPageEvent.checkFormStateEvent()),
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
                  onChange: (text) => BlocProvider.of<BodyFatPageBloc>(context)
                      .add(const BodyFatPageEvent.checkFormStateEvent()),
                )),
            SizedBox(
                width: calculateWidthPercentage(context, 45),
                child: AppTextField(
                  fieldName: HealthTextData.heightInches.name,
                  fieldText: HealthTextData.heightInches.name,
                  onChange: (text) => BlocProvider.of<BodyFatPageBloc>(context)
                      .add(const BodyFatPageEvent.checkFormStateEvent()),
                )),
          ],
        );
      },
    );
  }
}

class NeckSection extends StatelessWidget {
  const NeckSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BodyFatPageBloc, BodyFatPageState>(
      buildWhen: (previous, current) => previous.unit != current.unit,
      builder: (context, state) {
        if (state.unit == Units.metric) {
          return AppTextField(
            fieldName: HealthTextData.neckInCM.name,
            fieldText: HealthTextData.neckInCM.name,
            onChange: (text) => BlocProvider.of<BodyFatPageBloc>(context)
                .add(const BodyFatPageEvent.checkFormStateEvent()),
          );
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: calculateWidthPercentage(context, 45),
                child: AppTextField(
                  fieldName: HealthTextData.neckFeet.name,
                  fieldText: HealthTextData.neckFeet.name,
                  onChange: (text) => BlocProvider.of<BodyFatPageBloc>(context)
                      .add(const BodyFatPageEvent.checkFormStateEvent()),
                )),
            SizedBox(
                width: calculateWidthPercentage(context, 45),
                child: AppTextField(
                  fieldName: HealthTextData.neckInches.name,
                  fieldText: HealthTextData.neckInches.name,
                  onChange: (text) => BlocProvider.of<BodyFatPageBloc>(context)
                      .add(const BodyFatPageEvent.checkFormStateEvent()),
                )),
          ],
        );
      },
    );
  }
}

class WaistSection extends StatelessWidget {
  const WaistSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BodyFatPageBloc, BodyFatPageState>(
      buildWhen: (previous, current) => previous.unit != current.unit,
      builder: (context, state) {
        if (state.unit == Units.metric) {
          return AppTextField(
            fieldName: HealthTextData.waistInCM.name,
            fieldText: HealthTextData.waistInCM.name,
            onChange: (text) => BlocProvider.of<BodyFatPageBloc>(context)
                .add(const BodyFatPageEvent.checkFormStateEvent()),
          );
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: calculateWidthPercentage(context, 45),
                child: AppTextField(
                  fieldName: HealthTextData.waistFeet.name,
                  fieldText: HealthTextData.waistFeet.name,
                  onChange: (text) => BlocProvider.of<BodyFatPageBloc>(context)
                      .add(const BodyFatPageEvent.checkFormStateEvent()),
                )),
            SizedBox(
                width: calculateWidthPercentage(context, 45),
                child: AppTextField(
                  fieldName: HealthTextData.waistInches.name,
                  fieldText: HealthTextData.waistInches.name,
                  onChange: (text) => BlocProvider.of<BodyFatPageBloc>(context)
                      .add(const BodyFatPageEvent.checkFormStateEvent()),
                )),
          ],
        );
      },
    );
  }
}
