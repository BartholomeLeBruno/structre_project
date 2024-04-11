import 'package:bts/shared/design_system/dimensions_system.dart';
import 'package:bts/shared/design_system/texts_system.dart';
import 'package:bts/shared/widgets/project_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeNearFromYouTitle extends StatelessWidget {
  const HomeNearFromYouTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: DimensionsSystem.regular),
      child: Row(
        children: [
          Expanded(
            child: ProjectText(
              "Near from you",
              style: TextsSystem.subTitleTextStyle,
            ),
          ),
          ProjectText("See more", style: TextsSystem.linkStyle)
        ],
      ),
    );
  }
}
