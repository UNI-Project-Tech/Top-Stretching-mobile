
import 'package:topstretching/common/constants/images.dart';
import 'package:topstretching/common/widgets/custom_button.dart';
import 'package:topstretching/utils/export.dart';

class SelectedAuthScreen extends StatelessWidget {
  const SelectedAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImages.loginBackg),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
            child: Column(
              children: [
                const Spacer(),
                CustomButton(
                  text: "Sign up with email",
                  fontW: FontWeight.w500,
                  onTap: () {
                    Navigator.pushNamed(context, RouteNames.register);
                  },
                  radius: BorderRadius.circular(
                    30.r,
                  ),
                  borderColor: AppColors.transparentColor,
                ),
                20.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SvgPicture.asset(AppImages.icF),
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: const Color(0xff6081C4),
                        shape: const CircleBorder(),
                      ),
                    ),
                    10.horizontalSpace,
                    IconButton(
                      onPressed: () {},
                      icon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SvgPicture.asset(AppImages.icGoogle),
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: const Color(0xffE62B33),
                        shape: const CircleBorder(),
                      ),
                    ),
                    10.horizontalSpace,
                    IconButton(
                      onPressed: () {},
                      icon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SvgPicture.asset(
                          AppImages.icApple,
                          width: 24.w,
                          height: 24.h,
                        ),
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: const Color(0xff9C9C9C),
                        shape: const CircleBorder(),
                      ),
                    ),
                  ],
                ),
                20.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: AppTextStyle.gothamStdMedium,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteNames.login);
                      },
                      child: Text(
                        "Log in",
                        style: AppTextStyle.gothamStdSemiBold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
