import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:topstretching/common/constants/images.dart';
import 'package:topstretching/common/widgets/consept_option.dart';
import 'package:topstretching/common/widgets/custom_button.dart';
import 'package:topstretching/common/widgets/text_field_widget.dart';
import 'package:topstretching/utils/export.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  String selectedCountryCode = "";


  bool isTopStretchingMember = false;
  bool agreeToTerms = false;
  bool agreeToPrivacyPolicy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Account registration",
          style: AppTextStyle.gothamStdMedium.copyWith(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  hintText: "Enter your name",
                  textInputType: TextInputType.text,
                  textEditingController: nameController,

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                10.verticalSpace,
                CustomTextField(
                  hintText: "Enter your email",
                  textInputType: TextInputType.emailAddress,
                  textEditingController: emailController,

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                10.verticalSpace,
                Row(
                  children: [
                    CountryCodePicker(
                      onChanged: (country) {
                        setState(() {
                          selectedCountryCode = country.dialCode ?? '';
                        });
                      },
                      initialSelection: 'UZ',
                      favorite: const ['+998', 'UZ'],
                      showCountryOnly: false,
                      showOnlyCountryWhenClosed: false,
                      alignLeft: false,
                    ),
                    10.horizontalSpace,
                    Expanded(
                      child: CustomTextField(
                        hintText: "Mobile",
                        textEditingController: phoneController,
                        textInputType: TextInputType.phone,

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your mobile number';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                10.verticalSpace,
                CustomTextField(
                  hintText: "Enter your Password",
                  textInputType: TextInputType.visiblePassword,
                  textEditingController: passwordController,
                  suffixIcon: passwordController.text.isEmpty
                      ? AppImages.icCheck
                      : AppImages.icActiveCheck,

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
                10.verticalSpace,
                CustomTextField(
                  hintText: "Confirm password",
                  textEditingController: confirmPasswordController,
                  suffixIcon: confirmPasswordController.text.isEmpty
                      ? AppImages.icCheck
                      : AppImages.icActiveCheck,
                  textInputType: TextInputType.visiblePassword,

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value != passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                10.verticalSpace,
                Row(
                  children: [
                    Text(
                      "Do you have \nTOPSTRETCHING\n membership?",
                      style: AppTextStyle.gothamStdMedium,
                    ),
                    20.horizontalSpace,
                    Expanded(
                      child: ConsentOption(
                        text: 'Yes',
                        value: isTopStretchingMember,
                        onChanged: (bool value) {
                          setState(() {
                            isTopStretchingMember = value;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: ConsentOption(
                        text: 'No',
                        value: !isTopStretchingMember,
                        onChanged: (bool value) {
                          setState(() {
                            isTopStretchingMember = !value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                20.verticalSpace,
                Text(
                  "We’re all set. Now let’s create your account.",
                  style: AppTextStyle.gothamStdMedium.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                20.verticalSpace,
                ConsentOption(
                  text: 'I agree to TOPSTRETCHING Terms & Conditions',
                  value: agreeToTerms,
                  onChanged: (bool value) {
                    setState(() {
                      agreeToTerms = value;
                    });
                  },
                ),
                ConsentOption(
                  text: 'I agree to Privacy Policy',
                  value: agreeToPrivacyPolicy,
                  onChanged: (bool value) {
                    setState(() {
                      agreeToPrivacyPolicy = value;
                    });
                  },
                ),
                30.verticalSpace,
                CustomButton(
                  text: "Create an account",
                  radius: BorderRadius.circular(30.r),
                  onTap: () {
                    if (_formKey.currentState?.validate() ?? false) {

                      print("Phone$selectedCountryCode ${phoneController.text}");
                      print('Is TopStretching Member: $isTopStretchingMember');
                      print('Agree to Terms: $agreeToTerms');
                      print('Agree to Privacy Policy: $agreeToPrivacyPolicy');
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
