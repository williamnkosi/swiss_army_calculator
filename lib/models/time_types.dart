enum TimeDurationTypes {
  years('Years'),
  months('Months'),
  days('Days');

  const TimeDurationTypes(this.value);
  final String value;
}

enum TimePeriodsTypes {
  annually('Annually'),
  monthly('Monthly'),
  daily('Daily');

  const TimePeriodsTypes(this.value);
  final String value;
}
