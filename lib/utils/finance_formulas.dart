import 'package:swiss_army_calculator/models/time_types.dart';

double calculateSimpleInterest(
    {required double principal,
    required double rate,
    required double time,
    required RatePeriodTypes frequency,
    required TimePeriodsTypes term}) {
  double interest = 0.0;
  switch (frequency) {
    case RatePeriodTypes.years:
      if (term == TimePeriodsTypes.annually) {
        interest = (principal * rate * time) / 100;
      } else if (term == TimePeriodsTypes.monthly) {
        interest = (principal * rate * time) / (12 * 100);
      } else {
        interest = (principal * rate * time) / (365 * 100);
      }
      break;
    case RatePeriodTypes.months:
      if (term == TimePeriodsTypes.annually) {
        interest = (principal * rate * time * 12) / (100);
      } else if (term == TimePeriodsTypes.monthly) {
        interest = (principal * rate * time) / 100;
      } else {
        interest = (principal * rate * time) / (30 * 100);
      }
      break;
    case RatePeriodTypes.days:
      if (term == TimePeriodsTypes.annually) {
        interest = (principal * rate * time * 365) / (100);
      } else if (term == TimePeriodsTypes.monthly) {
        interest = (principal * rate * time * 30) / 100;
      } else {
        interest = (principal * rate * time) / (100);
      }
      break;
    default:
      throw ArgumentError(
          "Invalid frequency. Supported values: 'yearly', 'monthly', 'daily'");
  }

  return interest;
}
