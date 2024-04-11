import 'package:bts/presentation/home/cubit/home_cubit.dart';
import 'package:bts/presentation/home/cubit/home_state.dart';
import 'package:bts/presentation/home/widgets/choice/home_style_choice.dart';
import 'package:bts/shared/widgets/project_cubit_widget.dart';
import 'package:bts/shared/widgets/project_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeStyleChoiceList extends ProjectCubitWidget<HomeState, HomeCubit> {
  const HomeStyleChoiceList({super.key});

  @override
  bool buildWhen(previous, current) => previous.selectedStyle != current.selectedStyle;

  @override
  Widget renderChild(BuildContext context, HomeCubit current) {
    return SizedBox(
      height: 41.h,
      child: ListView.separated(
        itemCount: current.state.styles.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        separatorBuilder: (context, index) => ProjectSpace.regular,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Row(
              children: [
                ProjectSpace.regular,
                HomeStyleChoice(isSelected: current.state.styles[index] == current.state.selectedStyle, label: current.state.styles[index]),
              ],
            );
          } else if (index == current.state.styles.length - 1) {
            return Row(
              children: [
                HomeStyleChoice(isSelected: current.state.styles[index] == current.state.selectedStyle, label: current.state.styles[index]),
                ProjectSpace.regular,
              ],
            );
          }
          return HomeStyleChoice(isSelected: current.state.styles[index] == current.state.selectedStyle, label: current.state.styles[index]);
        },
      ),
    );
  }
}
