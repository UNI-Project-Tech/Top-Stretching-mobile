import 'package:topstretching/common/constants/images.dart';
import 'package:topstretching/common/widgets/custom_button.dart';
import 'package:topstretching/common/widgets/text_field_widget.dart';
import 'package:topstretching/utils/export.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImages.loginBackg),
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  (MediaQuery.of(context).size.height * 0.5).verticalSpace,
                  CustomTextField(
                    prefixIcon: AppImages.icPerson,
                    hintText: "Enter your email",
                    textInputType: TextInputType.emailAddress,
                  ),
                  10.verticalSpace,
                  CustomTextField(
                    prefixIcon: AppImages.icLock,
                    hintText: "Enter your password",
                    textInputType: TextInputType.emailAddress,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, RouteNames.sendCode);
                    },
                    child: Text(
                      "Forgot password",
                      style: AppTextStyle.gothamStdMedium.copyWith(
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                  10.verticalSpace,
                  CustomButton(
                    text: "Log in",
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(context, RouteNames.tabs, (n)=>false);
                    },


                    borderColor: AppColors.transparentColor,
                    radius: BorderRadius.circular(30.r),

                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, RouteNames.register);
                    },
                    child: Text(
                      "Create a new account",
                      style: AppTextStyle.gothamStdMedium.copyWith(
                        decoration:  TextDecoration.underline,
                        fontSize: 14.sp
                        // color: AppColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
