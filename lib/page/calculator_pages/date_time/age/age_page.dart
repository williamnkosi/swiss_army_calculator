import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'bloc/age_page_bloc.dart';

class AgePage extends StatelessWidget {
  const AgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
        autovalidateMode: AutovalidateMode.disabled,
        key: BlocProvider.of<AgePageBloc>(context).state.formKey,
        child: const Placeholder());
  }
}
