import 'package:bts/shared/design_system/dimensions_system.dart';
import 'package:bts/shared/design_system/texts_system.dart';
import 'package:bts/shared/widgets/project_space.dart';
import 'package:bts/shared/widgets/project_text.dart';
import 'package:bts/utils/price_format.dart';
import 'package:flutter/material.dart';

class HomeBestForYouItem extends StatelessWidget {
  final String name;
  final String imagePath;
  final int price;
  final int countBedroom;
  final int countBathroom;

  const HomeBestForYouItem(
      {super.key, required this.name, required this.imagePath, required this.price, required this.countBedroom, required this.countBathroom});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(DimensionsSystem.radiusMd)),
          child: Image.asset(imagePath),
        ),
        ProjectSpace.regular,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProjectText(name, style: TextsSystem.subTitleTextStyle),
              ProjectText("Rp. ${PriceFormat.formatPrice(price)} / Year",
                  style: TextsSystem.regularTextStyle.copyWith(color: const Color(0xFF0A8ED9))),
              Row(
                children: [
                  Image.asset("assets/icon/ic_bed.png"),
                  ProjectSpace.medium,
                  ProjectText("$countBedroom Bedroom", style: TextsSystem.regularTextStyle.copyWith(color: const Color(0xFF858585))),
                  ProjectSpace.regular,
                  Image.asset("assets/icon/ic_bath.png"),
                  ProjectSpace.medium,
                  ProjectText("$countBathroom Bathroom", style: TextsSystem.regularTextStyle.copyWith(color: const Color(0xFF858585))),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
