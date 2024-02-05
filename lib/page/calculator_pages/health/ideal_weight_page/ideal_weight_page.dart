import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/health_page_text_field_names.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/ideal_weight_page/bloc/ideal_weight_page_bloc.dart';

import '../../../../models/types.dart';
import '../../../../utils/functions.dart';
import '../../../../widgets/app_expansion_tile.dart';
import '../../../../widgets/app_material_button.dart';
import '../../../../widgets/textFields/app_text_field.dart';

class IdealWeightPage extends StatelessWidget {
  const IdealWeightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      autovalidateMode: AutovalidateMode.disabled,
      key: BlocProvider.of<IdealWeightPageBloc>(context).state.formKey,
      child: Stack(children: [
        ListView(
          children: [
            BlocBuilder<IdealWeightPageBloc, IdealWeightPageState>(
              builder: (context, state) {
                return AppExpansionTile(
                    title: state.calculatorData.name,
                    description: state.calculatorData.shortDescription);
              },
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<IdealWeightPageBloc, IdealWeightPageState>(
              buildWhen: (previous, current) =>
                  previous.gender != current.gender,
              builder: (context, state) {
                return Row(
                  children: [
                    Radio(
                      value: Gender.male,
                      groupValue: state.gender,
                      onChanged: (value) =>
                          BlocProvider.of<IdealWeightPageBloc>(context).add(
                              const IdealWeightPageEvent.toggleGenderEvent()),
                    ),
                    Text(Gender.male.value),
                    Radio(
                      value: Gender.female,
                      groupValue: state.gender,
                      onChanged: (value) =>
                          BlocProvider.of<IdealWeightPageBloc>(context).add(
                              const IdealWeightPageEvent.toggleGenderEvent()),
                    ),
                    Text(Gender.female.value),
                  ],
                );
              },
            ),
            BlocBuilder<IdealWeightPageBloc, IdealWeightPageState>(
              buildWhen: (previous, current) => previous.unit != current.unit,
              builder: (context, state) {
                return Row(
                  children: [
                    Radio(
                      value: Units.imperial,
                      groupValue: state.unit,
                      onChanged: (value) =>
                          BlocProvider.of<IdealWeightPageBloc>(context).add(
                              const IdealWeightPageEvent.toggleUnitEvent()),
                    ),
                    Text(Units.imperial.value),
                    Radio(
                      value: Units.metric,
                      groupValue: state.unit,
                      onChanged: (value) =>
                          BlocProvider.of<IdealWeightPageBloc>(context).add(
                              const IdealWeightPageEvent.toggleUnitEvent()),
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
              onChange: (text) => BlocProvider.of<IdealWeightPageBloc>(context)
                  .add(const IdealWeightPageEvent.checkFormStateEvent()),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: calculateWidthPercentage(context, 45),
                    child: AppTextField(
                      fieldName: HealthTextData.heightFeet.name,
                      fieldText: HealthTextData.heightFeet.name,
                      onChange: (text) =>
                          BlocProvider.of<IdealWeightPageBloc>(context).add(
                              const IdealWeightPageEvent.checkFormStateEvent()),
                    )),
                SizedBox(
                    width: calculateWidthPercentage(context, 45),
                    child: AppTextField(
                      fieldName: HealthTextData.heightInches.name,
                      fieldText: HealthTextData.heightInches.name,
                      onChange: (text) =>
                          BlocProvider.of<IdealWeightPageBloc>(context).add(
                              const IdealWeightPageEvent.checkFormStateEvent()),
                    )),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            // AppTextField(
            //   fieldName: HealthTextData.weight.name,
            //   fieldText: HealthTextData.weight.name,
            //   onChange: (text) => BlocProvider.of<IdealWeightPageBloc>(context)
            //       .add(const IdealWeightPageEvent.checkFormStateEvent()),
            // ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<IdealWeightPageBloc, IdealWeightPageState>(
              buildWhen: (previous, current) =>
                  previous.result != current.result,
              builder: (context, state) {
                if (state.result == 0) return const SizedBox();
                return Center(
                  child: Text(
                      'Your BMI has been calculated at  ${state.result.toStringAsFixed(2)}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                );
              },
            ),
          ],
        ),
        BlocBuilder<IdealWeightPageBloc, IdealWeightPageState>(
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
                    BlocProvider.of<IdealWeightPageBloc>(context).add(
                        const IdealWeightPageEvent.calculateIdealWeightEvent());
                  },
                ));
          },
        )
      ]),
    );
  }
}
