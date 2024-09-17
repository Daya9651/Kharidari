// import 'package:flutter/material.dart';
//
// import '../common/widgets/const_container.dart';
// import '../style/color.dart';
// import '../style/gradients.dart';
// import 'const_height.dart';
// import 'const_text_with_style.dart';
// import 'const_width.dart';
//
// constPrimaryButton(Widget child, {VoidCallback? onTap}) {
//   return InkWell(
//     onTap: onTap,
//     child: ConstantContainer(
//       gradient: primaryGradientColor,
//       radiusBorder: 20,
//       child: Center(
//         child: child,
//       )),
//   );
// }
//
// constElevatedButton(text, {VoidCallback? onTap}) {
//   return InkWell(
//     onTap: onTap,
//     child: Material(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       color: Colors.transparent,
//       elevation: 10,
//       child: ConstantContainer(
//           radiusBorder: 10,
//           width: 300,
//           height: 30,
//           gradient: primaryGradientColor,
//           child: Center(
//             child: constText15BoldWhite(text),
//           )),
//     ),
//   );
// }
//
// constBorderSideButton(
//     {VoidCallback? onTap,
//     required String text,
//     double? height,
//     double? width}) {
//   return Material(
//     elevation: w5,
//     color: Colors.transparent,
//     child: InkWell(
//       onTap: onTap,
//       child: ConstantContainer(
//         borderColor: AppColors.white,
//         borderWidth: w2,
//         height: height ?? h40,
//         width: width ?? 300,
//         // padding: ,
//         gradient: primaryGradientColor,
//         radiusBorder: w5,
//
//         child: constText15BoldWhite(text),
//       ),
//     ),
//   );
// }
//
// constSuccessSideButton(
//     {VoidCallback? onTap,
//     required String text,
//     bool isPressed = false,
//     double? height,
//     double? width}) {
//   return Material(
//     elevation: w5,
//     color: Colors.transparent,
//     child: InkWell(
//       onTap: onTap,
//       child: ConstantContainer(
//         borderColor: AppColors.white,
//         borderWidth: w2,
//         height: height ?? h40,
//         width: width ?? 300,
//         // padding: ,
//         color: !isPressed ? AppColors.error40 : AppColors.success100,
//         radiusBorder: w5,
//
//         child: constText12BoldWhite(text),
//       ),
//     ),
//   );
// }
//
// backButton() {
//   return constBorderSideButton(
//     width: w100,
//     text: "Back",
//     // onTap: () => Get.back(),
//   );
// }
