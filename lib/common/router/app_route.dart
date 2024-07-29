import 'package:topstretching/screens/on_board/on_boarding_screen.dart';
import 'package:topstretching/utils/export.dart';

class RouteNames {
  static const String splash = '/';
  static const String login = '/login';
  static const String onBoarding = '/onBoarding';
  static const String signUp = '/onBoarding';
}

class AppRoute {
  static Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splash:
        return _navigate(const SplashScreen());
      case RouteNames.onBoarding:
        return _navigate(const OnBoardingScreen());

      default:
        return _navigate(
          const Scaffold(
            body: Center(
              child: Text("Page not found"),
            ),
          ),
        );
    }
  }

  static MaterialPageRoute _navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
