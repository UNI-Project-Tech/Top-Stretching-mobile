import 'package:flutter/material.dart';
import 'package:topstretching/utils/export.dart';

class TrainingWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const TrainingWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.gothamStdMedium,
        ),
        10.verticalSpace,
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            children: [
              SizedBox(
                height: 182.h,
                width: 180.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.red,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageUrl),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "03:12",
                      style: AppTextStyle.gothamStdSemiBold,
                    ),
                    Text(
                      "Time (min)",
                      style: AppTextStyle.gothamStdMedium.copyWith(color: const Color(0xff878787)),
                    ),
                    Text(
                      subtitle,
                      style: AppTextStyle.gothamStdMedium.copyWith(color: const Color(0xff878787)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
