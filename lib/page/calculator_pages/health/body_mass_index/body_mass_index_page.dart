import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../../../../widgets/app_expansion_tile.dart';
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
            const Age(),
            const SizedBox(
              height: 16,
            ),
          ],
        )
      ]),
    );
  }
}

class Age extends StatelessWidget {
  const Age({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.number,
      name: 'age',
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Age',
      ),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.numeric(),
      ]),
    );
  }
}
