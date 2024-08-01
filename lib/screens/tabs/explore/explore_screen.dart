import 'package:flutter/material.dart';
import 'package:topstretching/common/styles/text_style.dart';
import 'package:topstretching/common/widgets/tab_box_app_bar.dart';
import 'package:topstretching/utils/export.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBoxAppBar(
        title: "@topstretching.app".toUpperCase(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "2K",
                      style: AppTextStyle.bebasSemiBold.copyWith(
                        fontSize: 30.sp,
                        color: AppColors.mainColor,
                      ),
                    ),
                    Text(
                      "Publications",
                      style: AppTextStyle.gothamStdMedium
                          .copyWith(fontSize: 16.sp),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/insta_app_logo.png',
                  fit: BoxFit.cover,
                ),
                Column(
                  children: [
                    Text(
                      "404K",
                      style: AppTextStyle.bebasSemiBold.copyWith(
                        fontSize: 30.sp,
                        color: AppColors.mainColor,
                      ),
                    ),
                    Text(
                      "Followers",
                      style: AppTextStyle.gothamStdMedium
                          .copyWith(fontSize: 16.sp),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              textAlign: TextAlign.center,
              """World's largest flexibility community
Stretching | HIIT | Healthy Back | Yoga programs
200 full trainings (no equipment) Claim your FREE TRIAL now""",
              style: AppTextStyle.gothamStdMedium.copyWith(fontSize: 13.sp),
            ),
            Text(
              textAlign: TextAlign.center,
              """topstretching.app/exclusiveoffer""",
              style: AppTextStyle.gothamStdMedium.copyWith(
                fontSize: 13.sp,
                color: AppColors.blue,
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 168.h
                  ),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 168.h,
                      width: 168.w,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://nutrizionistatrapani.com/wp-content/uploads/2019/05/img-2.jpg',
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
