// ignore_for_file: must_be_immutable
import 'package:flutter/services.dart';

import 'package:topstretching/utils/export.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.onChange,
    required this.hintText,
    this.maxLines,
    this.minLines,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.obscure,
    this.textInputAction,
    this.fillColor,
    this.initialValue,
    this.preIconColor,
    this.textEditingController,
    this.readOnly = false,
    this.onTap,
    this.formatter,
    required this.textInputType,
    this.maxLength,
    this.focusNode,
    this.suffixIconOnTap,
    this.borderColor,
    this.onFieldSubmitted,
    this.labelText,
  });

  final TextEditingController? textEditingController;
  Function(String value)? onChange;
  final String hintText;
  final String? prefixIcon;
  final String? labelText;
  final String? suffixIcon;
  final bool? obscure;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? preIconColor;
  final Color? borderColor;
  final String? initialValue;
  FormFieldValidator<String>? validator;
  final int? maxLines;
  final TextInputType textInputType;
  final int? minLines;
  final int? maxLength;
  final FocusNode? focusNode;
  final Function()? onTap;
  final Function()? suffixIconOnTap;
  final Function(String)? onFieldSubmitted;
  final List<TextInputFormatter>? formatter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      minLines: minLines ?? 1,
      validator: validator,
      readOnly: readOnly,
      focusNode: focusNode,
      inputFormatters: formatter,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
      initialValue: initialValue,
      style: Theme.of(context).textTheme.titleMedium,
      obscureText: obscure ?? false,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      onChanged: onChange,
      controller: textEditingController,
      cursorColor: AppColors.mainColor,
      maxLength: maxLength,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: AppTextStyle.bebasLight,
        counterText: '',
        suffixIconConstraints:
            const BoxConstraints(minHeight: 25, minWidth: 25),

        prefixIcon: prefixIcon == null
            ? null
            : IconButton(
              onPressed: () {  },
              icon: SvgPicture.asset(
                  prefixIcon ?? "",
                  height: 24.h,
                  // width: 10.w,
                  // fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      preIconColor ?? AppColors.mainColor, BlendMode.srcIn),
                ),
            ),
        suffixIcon: suffixIcon == null
            ? null
            : ScaleButton(
                onTap: suffixIconOnTap,
                child: SvgPicture.asset(
                  suffixIcon ?? "",
                  height: 20.h,
                  width: 20.w,
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      preIconColor ?? AppColors.mainColor,
                      BlendMode.srcIn),
                ),
              ),
        hintStyle: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: AppColors.greyScale5Color),
        hintText: hintText,
        filled: true,
        fillColor: fillColor ?? Colors.white,
      ),
    );
  }
}

class CustomPrefixTextField extends StatelessWidget {
  CustomPrefixTextField(
      {super.key,
      this.textEditingController,
      required this.onChange,
      required this.hintText,
      required this.prefixIcon,
      this.suffixIcon,
      this.obscure,
      this.textInputAction,
      required this.textInputType,
      this.validator,
      required this.focusNode,
      this.prefixText,
      this.inputFormatters,
      this.readOnly = false,
      this.fillColor});

  final TextEditingController? textEditingController;
  final Function(String value) onChange;
  final String hintText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final bool? obscure;
  final TextInputAction? textInputAction;
  final TextInputType textInputType;
  final FocusNode focusNode;
  final String? prefixText;
  final bool readOnly;
  final List<TextInputFormatter>? inputFormatters;
  final Color? fillColor;
  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      validator: validator,
      focusNode: focusNode,
      readOnly: readOnly,
      style: Theme.of(context).textTheme.titleMedium,
      obscureText: obscure ?? false,
      textInputAction: textInputAction,
      onChanged: onChange,
      controller: textEditingController,
      keyboardType: textInputType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixText: prefixText,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: fillColor ?? AppColors.white,
        prefixStyle: Theme.of(context).textTheme.titleMedium,
        hintStyle: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: AppColors.greyScale5Color),
        hintText: hintText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(
            color: AppColors.greyScale3Color,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(
            color: AppColors.mainColor,
            width: 1.2,
          ),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(color: AppColors.greyScale3Color),
        ),
      ),
    );
  }
}
