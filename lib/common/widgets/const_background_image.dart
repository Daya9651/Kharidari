import 'package:flutter/cupertino.dart';

import '../../const/image_strings.dart';

Widget constBackgroundContainer({Widget? child}) {
  return Container(
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          ImageString.backgroundImage,
          // ImageString.backgroundErpImage,
          // fit: BoxFit.cover,
        ),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}

Widget constBackgroundContainerPurchases({Widget? child}) {
  return Container(
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          ImageString.purchaseBackground,
          // ImageString.backgroundErpImage,
          // fit: BoxFit.cover,
        ),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}
