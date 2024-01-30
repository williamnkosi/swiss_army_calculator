import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/body_mass_index/body_mass_index_field_names.dart';
import 'package:swiss_army_calculator/utils/functions.dart';
import 'package:swiss_army_calculator/widgets/textFields/app_text_field.dart';
import '../../../../widgets/app_expansion_tile.dart';
import '../../../../widgets/app_material_button.dart';
import 'bloc/body_mass_index_bloc.dart';

class BodyMassIndexPage extends StatelessWidget {
  const BodyMassIndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      autovalidateMode: AutovalidateMode.disabled,
      key: BlocProvider.of<BodyMassIndexBloc>(context).state.formKey,
      child: Stack(children: [
        ListView(
          children: [
            BlocBuilder<BodyMassIndexBloc, BodyMassIndexState>(
              builder: (context, state) {
                return AppExpansionTile(
                    title: state.calculatorData.name,
                    description: state.calculatorData.shortDescription);
              },
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              height: 16,
            ),
            AppTextField(
              fieldName: BodyMassIndexTextFieldData.age.name,
              fieldText: BodyMassIndexTextFieldData.age.name,
              onChange: (text) => BlocProvider.of<BodyMassIndexBloc>(context)
                  .add(const BodyMassIndexEvent.checkFormStateEvent()),
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
                      fieldName: BodyMassIndexTextFieldData.heightFeet.name,
                      fieldText: BodyMassIndexTextFieldData.heightFeet.name,
                      onChange: (text) =>
                          BlocProvider.of<BodyMassIndexBloc>(context).add(
                              const BodyMassIndexEvent.checkFormStateEvent()),
                    )),
                SizedBox(
                    width: calculateWidthPercentage(context, 45),
                    child: AppTextField(
                      fieldName: BodyMassIndexTextFieldData.heightInches.name,
                      fieldText: BodyMassIndexTextFieldData.heightInches.name,
                      onChange: (text) =>
                          BlocProvider.of<BodyMassIndexBloc>(context).add(
                              const BodyMassIndexEvent.checkFormStateEvent()),
                    )),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            AppTextField(
              fieldName: BodyMassIndexTextFieldData.weight.name,
              fieldText: BodyMassIndexTextFieldData.weight.name,
              onChange: (text) => BlocProvider.of<BodyMassIndexBloc>(context)
                  .add(const BodyMassIndexEvent.checkFormStateEvent()),
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<BodyMassIndexBloc, BodyMassIndexState>(
              builder: (context, state) {
                return Center(
                    child:
                        Text('Your BMI is ${state.result.toStringAsFixed(2)}'));
              },
            ),
          ],
        ),
        BlocBuilder<BodyMassIndexBloc, BodyMassIndexState>(
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
                    BlocProvider.of<BodyMassIndexBloc>(context)
                        .add(const BodyMassIndexEvent.calculateBMIEvent());
                  },
                ));
          },
        )
      ]),
    );
  }
}
