import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../components/custom_button.dart';
import '../../../../components/multicolored_text.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/strings_manager.dart';
import '../../../../utils/style_manager.dart';

class MobileExploreBar extends StatelessWidget {
  const MobileExploreBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.05,
        ),
        width: width * 0.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MultiColoredText(
                primaryText: HomeStringManager.exploreTitlePrimary,
                secondaryText: HomeStringManager.exploreTitleSecondary,
                primaryColor: ColorManager.white,
                secondaryColor: ColorManager.primary,
                textAlign: TextAlign.center,
                fontSize: 18),
            SizedBox(
              height: height * 0.015,
            ),
            Text(
              HomeStringManager.exploreDetails,
              textAlign: TextAlign.center,
              style: getMediumTextStyle(
                  color: ColorManager.hintGrey, fontSize: 12),
            ),
            SizedBox(height: height * 0.08),
            CustomButton(
              onPressed: () async {
                await launchUrlString("https://t.me/+Bbb5VsxLmloyNWM0");
              },
              text: HomeStringManager.getStarted,
              width: width * 0.7,
            )
          ],
        ),
      ),
    );
  }
}
