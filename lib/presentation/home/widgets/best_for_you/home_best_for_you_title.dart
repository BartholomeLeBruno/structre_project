import 'package:bts/shared/design_system/texts_system.dart';
import 'package:bts/shared/widgets/project_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBestForYouTitle extends StatelessWidget {
  const HomeBestForYouTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ProjectText(
            "Best for you",
            style: TextsSystem.subTitleTextStyle,
          ),
        ),
        ProjectText("See more", style: TextsSystem.linkStyle)
      ],
    );
  }
}
