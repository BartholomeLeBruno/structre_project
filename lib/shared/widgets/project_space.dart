import 'package:bts/shared/design_system/dimensions_system.dart';
import 'package:flutter/material.dart';

class ProjectSpace extends StatelessWidget {
  final double height;
  final double width;

  const ProjectSpace.all(double value, {super.key})
      : height = value,
        width = value;

  static ProjectSpace small = const ProjectSpace.all(DimensionsSystem.sm);
  static ProjectSpace medium = const ProjectSpace.all(DimensionsSystem.md);
  static ProjectSpace regular = const ProjectSpace.all(DimensionsSystem.regular);
  static ProjectSpace large = const ProjectSpace.all(DimensionsSystem.l);
  static ProjectSpace xlarge = const ProjectSpace.all(DimensionsSystem.xl);
  static ProjectSpace xxlarge = const ProjectSpace.all(DimensionsSystem.xxl);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
