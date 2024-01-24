import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:swiss_army_calculator/info/finance_info.dart';
import 'package:swiss_army_calculator/models/time_types.dart';
import 'package:swiss_army_calculator/services/bar_chart_service/bar_chart_service.dart';
import 'package:swiss_army_calculator/widgets/app_expansion_tile.dart';

import '../../../../models/calculator_types.dart';
import '../../../../widgets/app_material_button.dart';
import '../../../../widgets/bottom_sheet/app_bottom_sheet.dart';
import '../../../../widgets/pie_chart.dart/pie_chart.dart';
import 'bloc/simple_interest_page_bloc.dart';
import 'bloc/simple_interest_page_event.dart';
import 'bloc/simple_interest_page_state.dart';
import 'simple_interes_text_field_names.dart';

class SimpleInterest extends StatelessWidget {
  SimpleInterest({super.key});
  final barChartService = BarChartService();
  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      autovalidateMode: AutovalidateMode.disabled,
      key: BlocProvider.of<SimpleInterestPageBloc>(context).state.formKey,
      child: Stack(children: [
        ListView(
          children: [
            AppExpansionTile(
                title: FinanceCalculators.simpleInterest.value,
                description: finanaceData[FinanceCalculators.simpleInterest]!),
            const SizedBox(
              height: 16,
            ),
            const Principal(),
            const SizedBox(
              height: 16,
            ),
            const InterestRate(),
            const SizedBox(
              height: 16,
            ),
            const Duration(),
            const SizedBox(
              height: 24,
            ),
            BlocBuilder<SimpleInterestPageBloc, SimpleInterestPageState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Text(
                      state.printOutput,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                );
              },
            ),
            BlocBuilder<SimpleInterestPageBloc, SimpleInterestPageState>(
              buildWhen: (previous, current) =>
                  previous.sections != current.sections,
              builder: (context, state) {
                return SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: PieChartWidget(sections: state.sections));
              },
            ),
            BlocBuilder<SimpleInterestPageBloc, SimpleInterestPageState>(
              buildWhen: (previous, current) =>
                  previous.sections != current.sections ||
                  current.barChartData.isNotEmpty,
              builder: (context, state) {
                return SizedBox(
                  height: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: state.barChartData.isNotEmpty
                        ? BarChartService.generateBarChart(
                            barChartService.generateBarGroups(
                                values: state.barChartData[0],
                                values2: state.barChartData[1]),
                            state.barChartData[0][0] +
                                state.barChartData[1]
                                    [state.barChartData[1].length - 1])
                        : Container(),
                  ),
                );
              },
            ),
          ],
        ),
        BlocBuilder<SimpleInterestPageBloc, SimpleInterestPageState>(
          builder: (context, state) {
            return Positioned(
              bottom: 24,
              width: MediaQuery.of(context).size.width - 32,
              child: AppMaterialButton(
                  isDisabled: state.isDiabled,
                  buttonTitle: 'CALCULATE',
                  onPressed: () =>
                      BlocProvider.of<SimpleInterestPageBloc>(context)
                          .add(const CalculateResultEvent())),
            );
          },
        ),
      ]),
    );
  }
}

class Principal extends StatelessWidget {
  const Principal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.number,
      name: SimpleInterestTextFieldNames.principal.value,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Principle Amount',
      ),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.numeric(),
      ]),
      onChanged: (text) => BlocProvider.of<SimpleInterestPageBloc>(context)
          .add(const CheckFormStateEvent()),
    );
  }
}

class InterestRate extends StatelessWidget {
  const InterestRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            flex: 3,
            child: FormBuilderTextField(
              keyboardType: TextInputType.number,
              name: SimpleInterestTextFieldNames.rate.value,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Interest Rate (%)',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.numeric(),
              ]),
              onChanged: (text) =>
                  BlocProvider.of<SimpleInterestPageBloc>(context)
                      .add(const CheckFormStateEvent()),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          BlocBuilder<SimpleInterestPageBloc, SimpleInterestPageState>(
            builder: (_, state) {
              return ValueButton(
                buttonTitle: state.ratePeriodType.value,
                onPressed: () {
                  appShowBottomSheet(
                      context: context,
                      title: 'Rate',
                      subTitle:
                          'This rate determines the amount of interest accrued on a principal amount over a specified period. ',
                      child: RowOfOptions<String>(
                          onPressed: (index) =>
                              BlocProvider.of<SimpleInterestPageBloc>(context)
                                  .add(ChangeRatePeriodEvent(
                                      RatePeriodTypes.values[index])),
                          pagecontext: context,
                          state: state,
                          activeIndex: state.ratePeriodType.index,
                          options: const ['Annually', 'Monthly', 'Daily']));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class RowOfOptions<T> extends StatelessWidget {
  final BuildContext pagecontext;
  final Function(int index) onPressed;
  final SimpleInterestPageState? state;
  final List<T> options;
  final int activeIndex;
  const RowOfOptions({
    Key? key,
    required this.pagecontext,
    required this.onPressed,
    this.state,
    required this.options,
    required this.activeIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: options.length,
          itemBuilder: (BuildContext _, int index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: InkWell(
                splashColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.3),
                onTap: () async {
                  onPressed(index);

                  Navigator.pop(context);
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: index == activeIndex
                          ? Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.1)
                          : null, // Optional: Set border radius
                    ),
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        options[index] as String,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    )),
              ),
            );
          }),
    );
  }
}

class ValueButton extends StatelessWidget {
  final String buttonTitle;
  final Function onPressed;
  const ValueButton({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => onPressed(),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Theme.of(context).colorScheme.secondary,
          ),
          child: Center(
              child: Text(
            buttonTitle,
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}

class Duration extends StatelessWidget {
  const Duration({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: FormBuilderTextField(
              keyboardType: TextInputType.number,
              name: SimpleInterestTextFieldNames.duration.value,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Time Period',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.numeric(),
              ]),
              onChanged: (text) =>
                  BlocProvider.of<SimpleInterestPageBloc>(context)
                      .add(const CheckFormStateEvent()),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          BlocBuilder<SimpleInterestPageBloc, SimpleInterestPageState>(
            builder: (context, state) {
              return ValueButton(
                buttonTitle: state.timePeriodType.value,
                onPressed: () {
                  appShowBottomSheet(
                      context: context,
                      title: 'Time period',
                      subTitle:
                          'This is the duration in which the interest will be applied',
                      child: RowOfOptions<String>(
                          onPressed: (index) =>
                              BlocProvider.of<SimpleInterestPageBloc>(context)
                                  .add(ChangeTimePeriodEvent(
                                      TimePeriodsTypes.values[index])),
                          pagecontext: context,
                          state: state,
                          activeIndex: state.timePeriodType.index,
                          options: const ['Years', 'Months', 'Days']));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
