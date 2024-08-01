import 'package:flutter/material.dart';
import 'package:topstretching/common/styles/text_style.dart';
import 'package:topstretching/data/mock/trainining_mock_data.dart';
import 'package:topstretching/utils/export.dart';

class TrainingDetailWithVideoScreen extends StatelessWidget {
  final TrainingCategoryTraining model;
  final String title;

  const TrainingDetailWithVideoScreen(
      {super.key, required this.model, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Back to exercises',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(title,
                style: AppTextStyle.bebasSemiBold.copyWith(fontSize: 30.sp)),
            SizedBox(height: 16),
            Stack(
              children: [
                Image.network(
                  'https://cssversicherung.scene7.com/is/image/csskrankenversicherung/spagat-lernen:image-21-9?wid=1600&fit=constrain,0&resMode=sharp2&noCache=1667821736166',
                  // Add your image asset here
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  top: 80,
                  left: 150,
                  child: Icon(
                    Icons.play_circle_fill,
                    color: Colors.purple,
                    size: 64,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Text(title,
                style:
                    AppTextStyle.gothamStdSemiBold.copyWith(fontSize: 14.sp)),
            const SizedBox(height: 8),
            Text(model.description,
                style: AppTextStyle.gothamStdMedium
                    .copyWith(color: Color(0xff878787), fontSize: 14.sp)),
            SizedBox(height: 16.h),
            CustomButton(
              text: "Add to favorites",
              onTap: () {},
              icon: 'assets/icons/ic_favorite.svg',
              radius: BorderRadius.circular(20.r),
            ),
            SizedBox(height: 16.h),
            Text(title,
                style:
                    AppTextStyle.gothamStdSemiBold.copyWith(fontSize: 14.sp)),
            SizedBox(height: 8),
            Text('TOPTRAINER SASHA',
                style:
                    AppTextStyle.gothamStdSemiBold.copyWith(fontSize: 14.sp)),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Do you want more workouts with TOPtrainers?',
                style: TextStyle(fontSize: 16, color: Colors.purple),
              ),
            ),
            SizedBox(height: 16),
            Text('Important information',
                style:
                    AppTextStyle.gothamStdSemiBold.copyWith(fontSize: 14.sp)),
            SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/ic_i.svg"),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                      'Session 20-30 minutes. Paying attention to form and the individual movements helps to keep you injury free and make each exercise more effective.',
                      style: AppTextStyle.gothamStdMedium
                          .copyWith(fontSize: 14.sp)),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Text('Equipment',
                style:
                    AppTextStyle.gothamStdSemiBold.copyWith(fontSize: 14.sp)),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: List.generate(
                model.equipments.length,
                (index) {
                  return Text(
                    "${index + 1}. ${model.equipments[index]}",
                    style: AppTextStyle.gothamStdMedium.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16.h),
            Text('Muscles involved',
                style:
                    AppTextStyle.gothamStdSemiBold.copyWith(fontSize: 14.sp)),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: List.generate(
                model.musclesInvolved.length,
                (index) {
                  return Chip(
                    label: Text(model.musclesInvolved[index]),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16.h),
            Text('Results',
                style:
                    AppTextStyle.gothamStdSemiBold.copyWith(fontSize: 14.sp)),
            10.verticalSpace,
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(model.results.length, (index) {
                  return Row(
                    children: [
                      SvgPicture.asset('assets/icons/check.svg'),
                      10.horizontalSpace,
                      Expanded(
                        child: Text(
                          model.results[index],
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  );
                })),
          ],
        ),
      ),
    );
  }
}
