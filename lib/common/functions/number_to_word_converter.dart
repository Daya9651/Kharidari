String convertNumberToWords(int number) {
  if (number < 0 || number > 999999) {
    return "Invalid number. This function supports numbers from 0 to 999,999.";
  }

  final List<String> units = [
    'Zero',
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
  ];

  final List<String> teens = [
    'Eleven',
    'Twelve',
    'Thirteen',
    'Fourteen',
    'Fifteen',
    'Sixteen',
    'Seventeen',
    'Eighteen',
    'Nineteen',
  ];

  final List<String> tens = [
    '',
    'Ten',
    'Twenty',
    'Thirty',
    'Forty',
    'Fifty',
    'Sixty',
    'Seventy',
    'Eighty',
    'Ninety',
  ];

  String words = '';

  if (number >= 100000) {
    words += '${units[number ~/ 100000]} Lakh';
    number %= 100000;
    if (number > 0) {
      words += ' ';
    }
  }

  if (number >= 1000) {
    words += '${convertNumberToWords(number ~/ 1000)} Thousand';
    number %= 1000;
    if (number > 0) {
      words += ' ';
    }
  }

  if (number >= 100) {
    words += '${units[number ~/ 100]} Hundred';
    number %= 100;
    if (number > 0) {
      words += ' ';
    }
  }

  if (number > 10 && number < 20) {
    words += teens[number - 11];
  } else {
    words += tens[number ~/ 10];
    number %= 10;
    if (number > 0) {
      if (words.isNotEmpty) {
        words += ' ';
      }
      words += units[number];
    }
  }

  return words;
}