import 'package:topstretching/utils/export.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

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
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  (MediaQuery.of(context).size.height * 0.5).verticalSpace,
                  CustomTextField(
                    prefixIcon: AppImages.icLock,
                    hintText: "Enter new password",
                    textInputType: TextInputType.emailAddress,
                  ),
                  10.verticalSpace,
                  CustomTextField(
                    prefixIcon: AppImages.icLock,
                    hintText: "Confirm new password",
                    textInputType: TextInputType.emailAddress,
                  ),
                  10.verticalSpace,
                  CustomButton(

                    text: "Save",

                    onTap: () {
                      Navigator.pushReplacementNamed(context, RouteNames.sendCode);
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
