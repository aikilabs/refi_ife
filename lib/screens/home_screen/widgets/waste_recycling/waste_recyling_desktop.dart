import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../components/multicolored_text.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/strings_manager.dart';
import '../../../../utils/style_manager.dart';

class DesktopWasteRecyclingContainer extends StatelessWidget {
  final String? image;
  const DesktopWasteRecyclingContainer({Key? key, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: width * 0.35,
          child: Column(
            children: [
              MultiColoredText(
                primaryText: HomeStringManager.wasteRecyclingTitlePrimary,
                secondaryText: HomeStringManager.wasteRecyclingTitleSecondary,
                primaryColor: ColorManager.white,
                secondaryColor: ColorManager.primary,
                textAlign: TextAlign.left,
                fontSize: width * 0.03,
              ),
              Text(
                HomeStringManager.wasteRecyclingDetails,
                style: getMediumTextStyle(
                    color: ColorManager.hintGrey, fontSize: width * 0.014),
              )
            ],
          ),
        ),
        SizedBox(
          width: width * 0.4,
          height: height * 0.48,
          child: CachedNetworkImage(
            imageUrl: UrlStrings.wasteRecyclingUrl,
          ),
        ),
      ],
    );
  }
}
