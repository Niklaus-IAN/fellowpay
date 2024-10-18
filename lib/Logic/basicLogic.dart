
String formatAmount(int amount) {
  String amountStr = amount.toString();
  int length = amountStr.length;

  // Insert commas in appropriate positions
  for (int i = length - 3; i > 0; i -= 3) {
    amountStr = amountStr.substring(0, i) + ',' + amountStr.substring(i);
  }

  return amountStr;
}


String formattedAmount(double amount) {
  // Convert the amount to a string with two decimal places
  String amountStr = amount.toStringAsFixed(2);

  // Split the amount into the integer part and the decimal part
  List<String> parts = amountStr.split('.');
  String integerPart = parts[0];
  String decimalPart = parts[1];

  // Insert commas into the integer part
  int length = integerPart.length;
  for (int i = length - 3; i > 0; i -= 3) {
    integerPart = integerPart.substring(0, i) + ',' + integerPart.substring(i);
  }

  // Combine the integer part and the decimal part
  return '$integerPart.$decimalPart';
}
