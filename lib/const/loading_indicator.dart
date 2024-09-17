import 'package:flutter/material.dart';

import '../style/color.dart';

Widget constLoading(){

  return Center(
    child: CircularProgressIndicator(
      color: AppColors.primary,
      backgroundColor: AppColors.whiteOpacity20,
    ),
  );
}