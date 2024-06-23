import 'package:flutter/material.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'intro_circle_image_box.dart';
import 'intro_text.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final bool isMobile = screenWidth < DeviceType.mobile.getMaxWidth();

    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.12),
      child: isMobile
          ? const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntroCircleImageBox(),
                SizedBox(height: 50),
                IntroText(),
              ],
            )
          : const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: IntroText(),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: IntroCircleImageBox(),
                  ),
                ),
              ],
            ),
    );
  }
}
