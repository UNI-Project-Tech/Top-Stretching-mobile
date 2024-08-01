
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
  static const String trainingCategoryDetail = '/trainingCategoryDetail';
  static const String generalRules = '/generalRules';
  static const String nutritionPlan = '/nutritionPlan';
  static const String personalNutritionPlan = '/personalNutritionPlan';
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
      case RouteNames.trainingCategoryDetail:
        return _navigate(
          TrainingCategoryDetail(
            model: settings.arguments as TrainingCategoryItemModel,
          ),
        );
      case RouteNames.generalRules:
        return _navigate(const GeneralRulesScreen());
      case RouteNames.nutritionPlan:
        return _navigate(const NutritionPlanScreen());

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
