import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../widgets/app_expansion_tile.dart';
import 'bloc/body_mass_index_bloc.dart';

class BodyMassIndexPage extends StatelessWidget {
  const BodyMassIndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      autovalidateMode: AutovalidateMode.disabled,
      child: Stack(children: [
        ListView(
          children: [
            BlocBuilder<BodyMassIndexBloc, BodyMassIndexState>(
              builder: (context, state) {
                return AppExpansionTile(
                    title: state.calculatorData!.name,
                    description: state.calculatorData!.shortDescription);
              },
            ),
          ],
        )
      ]),
    );
  }
}
