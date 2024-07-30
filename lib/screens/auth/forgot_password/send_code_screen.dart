import 'package:flutter/material.dart';
import 'package:topstretching/utils/export.dart';

class SendCodeScreen extends StatefulWidget {
  const SendCodeScreen({super.key});

  @override
  State<SendCodeScreen> createState() => _SendCodeScreenState();
}

class _SendCodeScreenState extends State<SendCodeScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController codeController = TextEditingController();

  bool isCodeSent = false;

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
                    textEditingController: emailController,
                  ),
                  10.verticalSpace,
                  if (isCodeSent)
                    Column(
                      children: [
                        CustomTextField(
                          prefixIcon: AppImages.icLock,
                          hintText: "Enter the code",
                          textInputType: TextInputType.number,
                          textEditingController: codeController,
                        ),
                        10.verticalSpace,
                      ],
                    ),
                  CustomButton(
                    text: isCodeSent ? "Check" : "Send Code",
                    onTap: () {
                      if (emailController.text.isNotEmpty) {
                        if (isCodeSent) {
                          // Handle code verification
                          Navigator.pushReplacementNamed(context, RouteNames.newPassword);

                        } else {
                          setState(() {
                            isCodeSent = true;
                          });
                        }
                      } else {
                        // Show some error or validation message
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Please enter your email.'),
                          ),
                        );
                      }
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
                        decoration: TextDecoration.underline,
                        fontSize: 14.sp,
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
