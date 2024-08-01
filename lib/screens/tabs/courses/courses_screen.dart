import 'package:flutter/material.dart';
import 'package:topstretching/common/widgets/tab_box_app_bar.dart';
import 'package:topstretching/utils/export.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBoxAppBar(
        title: "Courses",
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "New",
              style: AppTextStyle.gothamStdMedium.copyWith(fontSize: 20.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: GestureDetector(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.asset(
                      'assets/images/trainer.png',
                      fit: BoxFit.cover,
                      height: 250.h,
                      width: 140.w,
                    ),
                  ),
                  10.verticalSpace,
                  Text(
                    "Sasha",
                    style:
                        AppTextStyle.gothamStdSemiBold.copyWith(fontSize: 14),
                  ),
                  Text(
                    "Fitness trainer",
                    style: AppTextStyle.gothamStdMedium.copyWith(
                      fontSize: 14,
                      color: const Color(0xff878787),
                    ),
                  ),
                ],
              ),
            ),
          ),
          30.verticalSpace,
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Courses Previews",
              style: AppTextStyle.gothamStdSemiBold.copyWith(fontSize: 20.sp),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(2, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.asset(
                      'assets/images/course_preview.png',
                      fit: BoxFit.cover,
                      width: 216.h,
                      height: 124.w,
                    ),
                  ),
                );
              }),
            ),
          ),
          20.verticalSpace,
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Popular Courses",
              style: AppTextStyle.gothamStdSemiBold.copyWith(fontSize: 20.sp),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            padding: const EdgeInsets.only(left: 15),
            itemBuilder: (context, index) {
              return Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.asset(
                      'assets/images/course_preview.png',
                      fit: BoxFit.cover,
                      width: 216.h,
                      height: 124.w,
                    ),
                  ),
                  20.horizontalSpace,
                  Column(
                    children: [
                      Text(
                        "Fat burning and whole body pump",
                        style: AppTextStyle.gothamStdSemiBold
                            .copyWith(fontSize: 14.sp),
                      ),
                      5.verticalSpace,
                      Text(
                        "With Sasha",
                        style: AppTextStyle.gothamStdSemiBold.copyWith(
                          fontSize: 14.sp,
                          color: const Color(0xff878787),
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
