import 'package:bts/shared/design_system/dimensions_system.dart';
import 'package:bts/shared/design_system/texts_system.dart';
import 'package:bts/shared/widgets/project_space.dart';
import 'package:bts/shared/widgets/project_text.dart';
import 'package:flutter/material.dart';

class HomeNearFromYouDistancy extends StatelessWidget {
  final double distancy;
  const HomeNearFromYouDistancy({super.key, required this.distancy});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(DimensionsSystem.md),
      decoration:
          BoxDecoration(color: Colors.black.withOpacity(0.40), borderRadius: const BorderRadius.all(Radius.circular(DimensionsSystem.radiusR))),
      child: Row(
        children: [
          Image.asset("assets/icon/ic_location.png"),
          ProjectSpace.small,
          ProjectText(
            "$distancy km",
            style: TextsSystem.regularTextStyle.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
