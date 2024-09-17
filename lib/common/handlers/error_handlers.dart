import 'package:flutter/material.dart';

import '../../style/color.dart';

class LoadingAndErrorScreen extends StatelessWidget {
  const LoadingAndErrorScreen({
    super.key,
    required bool isLoading,
    required bool errorOccurred,
    required Function errorResolvingFunction,
    required Widget child,
  })  : _isLoading = isLoading,
        _errorOccurred = errorOccurred,
        _errorResolvingFunction = errorResolvingFunction,
        _child = child;

  final bool _isLoading;
  final bool _errorOccurred;
  final Widget _child;
  final Function _errorResolvingFunction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    buildLoadingScreen() => Container(
      color: AppColors.white20,
      alignment: Alignment.center,
      child: const CircularProgressIndicator(
        color: AppColors.primary,
        strokeWidth: 5,
      ),
    );

    buildErrorScreen() => Container(
      width: double.infinity,
      color: AppColors.white20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Something Went Wrong",
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              _errorResolvingFunction();
            },
            child: Container(
              height: size.height * 0.06,
              width: size.width * 0.25,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child:  const Text(
                "Retry",
                style: TextStyle(
                  color: AppColors.white20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      // child: const CircularProgressIndicator(
      //   color: Colors.green,
      //   strokeWidth: 2,
      // ),
    );

    return SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                _child,
                if (_isLoading) buildLoadingScreen(),
                if (_errorOccurred) buildErrorScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
