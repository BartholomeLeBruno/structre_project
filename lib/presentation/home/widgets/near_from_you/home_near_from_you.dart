import 'package:bts/presentation/home/widgets/near_from_you/home_near_from_you_slider.dart';
import 'package:bts/presentation/home/widgets/near_from_you/home_near_from_you_title.dart';
import 'package:bts/shared/widgets/project_space.dart';
import 'package:flutter/material.dart';

class HomeNearFromYou extends StatelessWidget {
  const HomeNearFromYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeNearFromYouTitle(),
        ProjectSpace.regular,
        const HomeNearFromYouSlider(),
      ],
    );
  }
}
