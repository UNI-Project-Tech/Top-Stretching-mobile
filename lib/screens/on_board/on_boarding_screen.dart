import 'package:topstretching/common/constants/images.dart';
import 'package:topstretching/common/widgets/consept_option.dart';
import 'package:topstretching/common/widgets/custom_button.dart';
import 'package:topstretching/utils/export.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool agreeToPrivacyPolicy = false;
  bool acceptTermsAndConditions = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AppImages.onBoardBackground),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 50.h, bottom: 5.h, left: 10.w, right: 10.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AppImages.smallLogo),
                          10.horizontalSpace,
                          Text(
                            "TOPSTRETCHING",
                            style: AppTextStyle.bebasBold
                                .copyWith(fontSize: 30.sp),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        textAlign: TextAlign.center,
                        "Start practicing the best workout programs based on your goals",
                        style:
                            AppTextStyle.bebasMedium.copyWith(fontSize: 30.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            10.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ConsentOption(
                text:
                    'I agree to the processing of my personal data according to Privacy Policy (including, to sharing my personal data with third parties)',
                value: agreeToPrivacyPolicy,
                onChanged: (bool value) {
                  setState(() {
                    agreeToPrivacyPolicy = value;
                  });
                },
              ),
            ),
            15.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ConsentOption(
                text: 'I accept the Terms and Conditions of Use',
                value: acceptTermsAndConditions,
                onChanged: (bool value) {
                  setState(() {
                    acceptTermsAndConditions = value;
                  });
                },
              ),
            ),
            10.verticalSpace,
            Padding(              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.login);
                },
                style: ElevatedButton.styleFrom(
                  maximumSize:  Size(double.infinity, 50.h),
                  minimumSize:  Size(double.infinity, 50.h),
                  backgroundColor: (agreeToPrivacyPolicy && acceptTermsAndConditions)
                      ? AppColors.pigmentGreen
                      : AppColors.grey2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.r),
                  ),
                ),
                child: Text(
                  "Continue",
                  style: AppTextStyle.gothamStdMedium.copyWith(
                    color: AppColors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                textAlign: TextAlign.center,
                "By tapping Continue you agree to the Privacy Policy and Terms and Conditions of Use",
                style: AppTextStyle.gothamStdMedium
                    .copyWith(color: AppColors.grey2, fontSize: 12.sp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
