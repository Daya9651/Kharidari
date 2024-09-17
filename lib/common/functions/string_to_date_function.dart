// import 'package:flutter/material.dart';
//
// giveDateOnly(String date) {
//   DateFormat formatter = DateFormat('dd/MM/yyyy');
//   var formattedDate =
//       formatter.format(DateFormat('yyyy-MM-dd hh:mm:ss').parse(date));
//   return formattedDate;
// }
//
// showDeliveryDatePicker(BuildContext context) async {
//   final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(1947),
//       lastDate: DateTime(2099));
//   debugPrint('date $picked');
//
//   return picked;
// }
//
// String? dateTimeToString(DateTime? dateTime) {
//   final DateFormat formatter = DateFormat('dd-MM-yyyy');
//   return dateTime != null ? formatter.format(dateTime) : null;
// }
//
// String formatDateTime(DateTime? dateTime) {
//   if (dateTime != null) {
//     return DateFormat("MMM d, yyyy hh:mm a").format(dateTime);
//   }
//   return '';
// }
