import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:topstretching/common/router/app_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 915),
      builder: (context,child){
        ScreenUtil.init(context);
        return const MaterialApp(
          title: 'Top Stretching',
          onGenerateRoute: AppRoute.onGenerate,
          initialRoute: RouteNames.splash,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
