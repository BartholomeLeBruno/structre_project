import 'package:bts/presentation/home/widgets/near_from_you/home_near_from_you_distancy.dart';
import 'package:bts/presentation/home/widgets/near_from_you/home_near_from_you_label.dart';
import 'package:bts/shared/design_system/dimensions_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeNearFromYouSliderItem extends StatelessWidget {
  final String image;
  final String host;
  final String label;
  final double distancy;
  const HomeNearFromYouSliderItem({
    super.key,
    required this.image,
    required this.host,
    required this.label,
    required this.distancy,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DimensionsSystem.radiusR),
      ),
      child: Container(
        width: 222.w,
        height: 272.h,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(DimensionsSystem.radiusR),
          ),
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(DimensionsSystem.regular),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Positioned(
                bottom: 0,
                child: HomeNearFromYouLabel(
                  title: label,
                  subTitle: host,
                ),
              ),
              Positioned(
                right: 0,
                child: HomeNearFromYouDistancy(
                  distancy: distancy,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
