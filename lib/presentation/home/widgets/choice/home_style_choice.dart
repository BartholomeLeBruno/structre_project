import 'package:bts/presentation/home/cubit/home_cubit.dart';
import 'package:bts/shared/design_system/dimensions_system.dart';
import 'package:bts/shared/design_system/texts_system.dart';
import 'package:bts/shared/widgets/project_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeStyleChoice extends StatelessWidget {
  final bool isSelected;
  final String label;

  const HomeStyleChoice({super.key, required this.isSelected, required this.label});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(DimensionsSystem.radiusR)),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(DimensionsSystem.radiusR)),
        onTap: () {
          context.read<HomeCubit>().onStyleChanged(label);
        },
        child: Ink(
          decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF4F42B5) : const Color(0xFFF7F7F7),
              borderRadius: const BorderRadius.all(Radius.circular(DimensionsSystem.radiusR)),
              gradient: isSelected
                  ? const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.white,
                        Color(0xFF4F42B5),
                      ],
                    )
                  : null),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: DimensionsSystem.regular),
              child: ProjectText(
                label,
                forceAutoSize: true,
                style: TextStyle(
                  fontFamily: TextsSystem.fontFamily,
                  color: isSelected ? Colors.white : const Color(0xFF858585),
                  fontSize: 12.sp,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
