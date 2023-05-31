double calculateBMI({required int height, required int weight}) {
  return (weight / (height * height)) * 10000;
}

String getResult(bmiValue) {
  if (bmiValue >= 25) {
    return 'Overweight';
  } else if (bmiValue > 18.5) {
    return 'Normal';
  } else {
    return 'Underweight';
  }
}
