// import 'package:flutter/material.dart';
//
// import '../../const/const_width.dart';
// import '../../style/color.dart';
// import '../../style/text_style.dart';
//
// class BankConstantDropdown extends StatefulWidget {
//   final List<BankAccount> bankAccounts;
//   final ValueChanged<BankAccount?> onChanged;
//   final Color iconColor;
//   final Color dropdownColor;
//   final Color textColor;
//   final String hint;
//
//   const BankConstantDropdown({
//     super.key,
//     required this.bankAccounts,
//     required this.onChanged,
//     required this.iconColor,
//     required this.dropdownColor,
//     required this.textColor,
//     required this.hint,
//   });
//
//   @override
//   State<BankConstantDropdown> createState() => _BankConstantDropdownState();
// }
//
// class _BankConstantDropdownState extends State<BankConstantDropdown> {
//   BankAccount? selectedAccount;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: w3, horizontal: w9),
//       child: Container(
//         constraints: BoxConstraints(
//           maxHeight: 50,
//           minHeight: 50,
//         ),
//         child: DropdownButtonHideUnderline(
//           child: DropdownButtonFormField<BankAccount>(
//             hint: Text(
//               widget.hint,
//               style: AppTextStyles.kBody15RegularTextStyle
//                   .copyWith(color: AppColors.white50),
//             ),
//             decoration: const InputDecoration(
//               contentPadding: EdgeInsets.symmetric(horizontal: 8),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(5)),
//                 borderSide: BorderSide(color: AppColors.white100, width: 1),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(5)),
//                 borderSide: BorderSide(color: AppColors.primary, width: 1),
//               ),
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(color: AppColors.white100),
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(10.0),
//                 ),
//               ),
//               focusedErrorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(5)),
//                 borderSide: BorderSide(color: Color(0xFFF65054)),
//               ),
//               errorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(5)),
//                 borderSide: BorderSide(color: Color(0xFFF65054)),
//               ),
//             ),
//             validator: (value) {
//               if (value == null) {
//                 return 'Please select value';
//               }
//               return null;
//             },
//             dropdownColor: widget.dropdownColor,
//             value: selectedAccount,
//             onChanged: (BankAccount? newValue) {
//               setState(() {
//                 selectedAccount = newValue;
//               });
//               widget.onChanged(selectedAccount);
//             },
//             iconEnabledColor: widget.iconColor,
//             items: widget.bankAccounts
//                 .map<DropdownMenuItem<BankAccount>>((BankAccount account) {
//               return DropdownMenuItem<BankAccount>(
//                 value: account,
//                 child: Text(
//                   account.accountName,
//                   style: AppTextStyles.kCaption12SemiBoldTextStyle
//                       .copyWith(color: widget.textColor),
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }
