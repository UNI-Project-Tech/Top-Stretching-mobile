import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:topstretching/common/widgets/tab_box_app_bar.dart';
import 'package:topstretching/screens/tabs/home/widget/news_widget.dart';
import 'package:topstretching/screens/tabs/home/widget/training%20widget.dart';
import 'package:topstretching/utils/export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBoxAppBar(
        title: "HOME",
        actions: [
          IconButton(
            onPressed: () {
              // Add your settings functionality here
            },
            icon: SvgPicture.asset('assets/icons/settings.svg'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            const NewsWidget(),
            20.verticalSpace,
            TrainingWidget(
              title: "Completed training and courses",
              subtitle: "Time (min)",
              imageUrl:
              'https://media.self.com/photos/5b52046f18a2407a16eba501/4:3/w_2560%2Cc_limit/woman-lifting-dumbbells.jpg',
            ),
            10.verticalSpace,
            Text(
              "Saved trainings and courses",
              style: AppTextStyle.gothamStdMedium,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.57,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SavedAndTrainingsWidget(
                    imageUrl:
                    'https://media.self.com/photos/5b52046f18a2407a16eba501/4:3/w_2560%2Cc_limit/woman-lifting-dumbbells.jpg',
                    title: 'Front Split',
                    description:
                    'A combination of workouts carefully designed to help you achieve a front split. These workouts also increase lumbar flexibility as well. These workouts emphasize stretching and strengthening your back, while also working your ABS and legs.',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SavedAndTrainingsWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const SavedAndTrainingsWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 200.w, // Set a specific width for the widget
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Image.network(
              imageUrl,
              height: 200.h,
              width: 200.w,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    // color: Colors.bl,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: 120.h,
                  child: Text(
                  overflow: TextOverflow.ellipsis,
                    maxLines: 6,
                    description,
                    style: TextStyle(
                      color: const Color(0xff878787),
                      fontSize: 14.sp,
                    ),
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
