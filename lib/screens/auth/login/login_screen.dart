
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


/*
import 'package:flutter/material.dart';
import 'package:topstretching/utils/export.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fon rasmi
          Image.asset(
            AppImages.loginBackg,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Oq rangdagi qatlam
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                  // color: Colors.white,
                  image: DecorationImage(
                image: AssetImage("assets/images/login_backg.png"),
                fit: BoxFit.cover,
              )),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot password',
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      child: Text('Log in'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        minimumSize: Size(double.infinity, 50),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(height: 20),
                    Text('Create a new account'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

 */