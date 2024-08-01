import 'package:flutter/material.dart';
import 'package:topstretching/data/mock/trainining_mock_data.dart';
import 'package:topstretching/utils/export.dart';

class TrainingCategoryDetail extends StatelessWidget {
  final TrainingCategoryItemModel model;

  const TrainingCategoryDetail({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.purple),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  height: 250.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        model.overview.imageUrl,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Spacer(),
                      Text(
                        'Front Split',
                        style: AppTextStyle.gothamStdBold
                            .copyWith(fontSize: 24.sp),
                      ),
                      15.verticalSpace,
                      CustomButton(
                        borderColor: AppColors.transparentColor,
                        text: "Start training".toUpperCase(),
                        fontSize: 18,
                        fontW: FontWeight.w500,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32),
          DefaultTabController(
            length: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TabBar(
                  labelColor: AppColors.mainColor,
                  unselectedLabelColor: AppColors.grey1,
                  dividerColor: AppColors.transparentColor,
                  tabs: [
                    Tab(text: 'OVERVIEW'),
                    Tab(text: 'TRAININGS'),
                  ],
                ),
                Container(
                  height: 300, // Adjust as needed
                  child: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ListView(
                          children: [
                            Text(
                              'Description',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'A combination of workouts carefully designed to help you achieve a front split. These workouts also increase lumbar flexibility as well. These workouts emphasize stretching and strengthening your back, while also working your ABS and legs.',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'What to expect',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '• Workouts that improve posture while also strengthening the cardiovascular and respiratory systems\n• Mobility exercises that focus on joints and injury prevention',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Center(child: Text('TRAININGS')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
