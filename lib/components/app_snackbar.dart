import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:uyobooks/constants.dart';
import 'package:uyobooks/enums.dart';
import 'package:uyobooks/theme/texts_style.dart';

void showSnackBar({
  required BuildContext context,
  required Message messageType,
  required String snackText,
}) {
  late Color backgroundColor;
  late String snackTitle;
  late String lottieAsset;

  switch (messageType) {
    case Message.error:
      {
        backgroundColor = Constants.kErrorColor;
        lottieAsset = Constants.errorAnimationAsset;
        snackTitle = 'Error';
      }
      break;
    case Message.success:
      {
        backgroundColor = Constants.kSuccessColor;
        lottieAsset = Constants.successAnimationAsset;
        snackTitle = 'Success';
      }
      break;
    case Message.warning:
      {
        backgroundColor = Constants.kWarningColor;
        lottieAsset = Constants.warningAnimationAsset;
        snackTitle = 'Warning';
      }
      break;
    default:
  }

  SnackBar snackBar = SnackBar(
    backgroundColor: backgroundColor,
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    behavior: SnackBarBehavior.floating,
    content: ZoomIn(
      duration: Constants.kOptionDuration,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Lottie.asset(lottieAsset, height: 50),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  snackTitle,
                  style: AppTextStyle.subNBodyBold.copyWith(
                    color: Constants.kPrimaryColor,
                  ),
                ),
                Text(
                  snackText,
                  style: AppTextStyle.subNBodyReg
                      .copyWith(color: Constants.kPrimaryColor, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
