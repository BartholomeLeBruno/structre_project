import 'package:bts/shared/design_system/dimensions_system.dart';
import 'package:bts/shared/design_system/texts_system.dart';
import 'package:bts/shared/widgets/project_text.dart';
import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: DimensionsSystem.regular),
      child: ProjectText(
        "Home Page",
        style: TextsSystem.titleTextStyle,
      ),
    );
  }
}
