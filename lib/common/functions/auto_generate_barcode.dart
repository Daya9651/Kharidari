// import 'dart:math';
//
// import 'package:intl/intl.dart';
//
// String generateInvoiceNumber(String prefix, String lastInvoiceNumber) {
//   // Extract the numeric part of the last invoice number
//   String numericPart = lastInvoiceNumber.substring(prefix.length);
//
//   // Increment the numeric part by one
//   int nextNumericPart = int.parse(numericPart) + 1;
//
//   // Format the numeric part to have leading zeros
//   String formattedNumericPart = nextNumericPart.toString().padLeft(5, '0');
//
//   // Concatenate the prefix with the formatted numeric part
//   return '$prefix$formattedNumericPart';
// }
//
// String generateBarcode() {
//   // Generate a random 13-digit number as a String
//   var rng = Random();
//   String barcode = '';
//   for (var i = 0; i < 13; i++) {
//     barcode += rng.nextInt(10).toString();
//   }
//   return barcode;
// }
//
// String generateBatchNumber() {
//   // Get the current date in the format YYYYMMDD
//   String formattedDate = DateFormat('yyyyMMdd').format(DateTime.now());
//
//   // Generate a random alphanumeric string of length 4
//   String randomString() {
//     const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
//     final random = Random();
//     return String.fromCharCodes(Iterable.generate(
//         4, (_) => chars.codeUnitAt(random.nextInt(chars.length))));
//   }
//
//   // Concatenate the date and random string with a hyphen
//   String batchNumber = '$formattedDate-${randomString()}';
//
//   return batchNumber;
// }
//
// String generateReference(int length) {
//   final random = Random();
//   final codeUnits = List.generate(length ~/ 2, (index) {
//     return random.nextInt(256); // 256 because hex is 2 digits
//   });
//
//   final hexString = StringBuffer();
//   for (var codeUnit in codeUnits) {
//     hexString.write(codeUnit.toRadixString(16).padLeft(2, '0'));
//   }
//
//   return hexString.toString().toUpperCase();
// }
