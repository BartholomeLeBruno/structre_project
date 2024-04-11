import 'package:bts/presentation/home/widgets/best_for_you/home_best_for_you_list.dart';
import 'package:bts/presentation/home/widgets/best_for_you/home_best_for_you_title.dart';
import 'package:bts/shared/design_system/dimensions_system.dart';
import 'package:bts/shared/widgets/project_space.dart';
import 'package:flutter/material.dart';

class HomeBestForYou extends StatelessWidget {
  const HomeBestForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: DimensionsSystem.regular),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeBestForYouTitle(),
          ProjectSpace.large,
          const HomeBestForYouList(),
        ],
      ),
    );
  }
}
