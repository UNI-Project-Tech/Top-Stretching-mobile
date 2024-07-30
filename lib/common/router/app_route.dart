import 'package:topstretching/screens/auth/forgot_password/new_password_screen.dart';
import 'package:topstretching/screens/auth/forgot_password/send_code_screen.dart';
import 'package:topstretching/screens/auth/login/login_screen.dart';
import 'package:topstretching/screens/auth/register/register_screen.dart';
import 'package:topstretching/screens/auth/selected_auth_screen.dart';
import 'package:topstretching/screens/on_board/on_boarding_screen.dart';
import 'package:topstretching/screens/tabs/tab_box.dart';
import 'package:topstretching/utils/export.dart';

class RouteNames {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String onBoarding = '/onBoarding';
  static const String signUp = '/onBoarding';
  static const String selectedAuth = '/selectedAuth';
  static const String newPassword = '/newPassword';
  static const String sendCode = '/sendCode';
  static const String tabs = '/tabs';

}

class AppRoute {
  static Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splash:
        return _navigate(const SplashScreen());
      case RouteNames.onBoarding:
        return _navigate(const OnBoardingScreen());
      case RouteNames.selectedAuth:
        return _navigate(const SelectedAuthScreen());
      case RouteNames.login:
        return _navigate(const LoginScreen());
      case RouteNames.sendCode:
        return _navigate(const SendCodeScreen());
      case RouteNames.newPassword:
        return _navigate(const NewPasswordScreen());
      case RouteNames.register:
        return _navigate(const RegisterScreen());

        case RouteNames.tabs:
        return _navigate(const TabBoxScreen());

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
