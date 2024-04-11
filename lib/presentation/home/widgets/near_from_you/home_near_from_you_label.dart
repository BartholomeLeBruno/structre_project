import 'package:bts/shared/design_system/texts_system.dart';
import 'package:bts/shared/widgets/project_space.dart';
import 'package:bts/shared/widgets/project_text.dart';
import 'package:flutter/material.dart';

class HomeNearFromYouLabel extends StatelessWidget {
  final String title;
  final String subTitle;
  const HomeNearFromYouLabel({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectText(
          title,
          style: TextsSystem.subTitleTextStyle.copyWith(color: Colors.white),
        ),
        ProjectSpace.medium,
        ProjectText(
          subTitle,
          style: TextsSystem.regularTextStyle.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
