import 'package:auto_route/auto_route.dart';
import 'package:bts/di/injection.dart';
import 'package:bts/module/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GetIt.instance.get<AppRouter>();
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(375, 812),
      child: MaterialApp.router(
        routeInformationParser: router.defaultRouteParser(),
        routerDelegate: AutoRouterDelegate(router),
      ),
    );
  }
}
