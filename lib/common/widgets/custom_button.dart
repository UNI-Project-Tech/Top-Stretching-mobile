import 'package:topstretching/utils/export.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.radius,
    this.bgColor,
    this.textColor,
    this.isLoading = false,
    this.paddingV,
    this.fontSize,
    this.colorL,
    this.icon,
    this.rightW,
    this.borderColor,
    this.fontW,
    this.iconC,
    this.height,
    this.gradient,
  });

  final String text;
  final Function() onTap;
  final BorderRadius? radius;
  final double? paddingV;
  final double? fontSize;
  final FontWeight? fontW;

  final LinearGradient? gradient;
  final Color? colorL;
  final String? icon;
  final Color? bgColor;
  final Color? iconC;

  final Color? borderColor;

  final Color? textColor;
  final bool isLoading;
  final double? height;

  final Widget? rightW;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparentColor,
      borderRadius: radius ?? BorderRadius.circular(10),
      child: InkWell(
        splashColor: AppColors.transparentColor,
        // highlightColor: AppColors.transparentColor,
        hoverColor: AppColors.transparentColor,
        borderRadius: radius ?? BorderRadius.circular(10),
        onTap: onTap,
        child: Ink(
          height: height ?? 50,
          padding: EdgeInsets.symmetric(
              vertical: isLoading ? 8 : paddingV ?? 12, horizontal: 8),
          decoration: BoxDecoration(
              gradient: gradient ?? AppColors.mainGradient,
              borderRadius: radius ?? BorderRadius.circular(10),
              border:
                  Border.all(color: borderColor ?? AppColors.greyScale3Color),
              color: bgColor ?? AppColors.mainColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isLoading
                  ? SizedBox(
                      height: 35,
                      width: 29,
                      child: Center(
                          child:
                              LoadingWidget(color: colorL ?? AppColors.white)))
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        icon != null
                            ? SvgPicture.asset(
                                icon ?? "",
                                colorFilter: ColorFilter.mode(
                                    iconC ?? textColor ?? AppColors.white,
                                    BlendMode.srcIn),
                              )
                            : const SizedBox.shrink(),
                        icon != null
                            ? 10.horizontalSpace
                            : const SizedBox.shrink(),
                        Text(
                          text,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  color: textColor ?? AppColors.white,
                                  fontSize: fontSize ?? 16,
                                  fontWeight: fontW),
                        ),
                        rightW ?? const SizedBox.shrink()
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
    required this.text,
    required this.onTap,
    this.mainColor,
    this.textColor,
    this.radius,
    this.isLoading = false,
    this.icon,
    this.iconC,
    this.bgColor,
  });

  final String text;
  final Function() onTap;
  final Color? textColor;
  final Color? mainColor;
  final Color? bgColor;
  final double? radius;
  final bool isLoading;
  final String? icon;
  final Color? iconC;

  @override
  Widget build(BuildContext context) {
    return Material(
        borderRadius: BorderRadius.circular(radius ?? 10),
        child: InkWell(
          splashColor: AppColors.transparentColor,
          highlightColor: AppColors.transparentColor,
          hoverColor: AppColors.mainColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(radius ?? 10),
          onTap: onTap,
          child: Ink(
              height: 50,
              padding: EdgeInsets.symmetric(vertical: isLoading ? 8 : 14),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius ?? 10),
                  border: Border.all(
                      color: mainColor ?? AppColors.mainColor, width: 1.5),
                  color: bgColor ?? AppColors.white),
              child: isLoading
                  ? SizedBox(
                      height: 35,
                      width: 29,
                      child: Center(
                          child: LoadingWidget(
                              color: textColor ?? AppColors.mainColor)))
                  : icon != null
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(text,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color:
                                            textColor ?? AppColors.mainColor)),
                            SvgPicture.asset(
                              icon ?? "",
                              colorFilter: ColorFilter.mode(
                                  iconC ?? AppColors.green, BlendMode.srcIn),
                            ),
                          ],
                        )
                      : Center(
                          child: Text(text,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: textColor ?? AppColors.mainColor)),
                        )),
        ));
  }
}
