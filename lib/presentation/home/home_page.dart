import 'package:auto_route/annotations.dart';
import 'package:bts/presentation/home/cubit/home_cubit.dart';
import 'package:bts/presentation/home/widgets/best_for_you/home_best_for_you.dart';
import 'package:bts/presentation/home/widgets/choice/home_style_choice_list.dart';
import 'package:bts/presentation/home/widgets/home_title.dart';
import 'package:bts/presentation/home/widgets/near_from_you/home_near_from_you.dart';
import 'package:bts/shared/widgets/project_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance.get<HomeCubit>()..onInit(),
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const HomeTitle(),
                ProjectSpace.regular,
                const HomeStyleChoiceList(),
                ProjectSpace.large,
                const HomeNearFromYou(),
                ProjectSpace.large,
                const HomeBestForYou(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
