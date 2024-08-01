import 'package:topstretching/common/widgets/tab_box_app_bar.dart';
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
            Text(
              "News",
              style: AppTextStyle.gothamStdSemiBold.copyWith(fontSize: 20),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 270.h,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 192.h,
                          width: 216.w,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.red,
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://media.self.com/photos/5b52046f18a2407a16eba501/4:3/w_2560%2Cc_limit/woman-lifting-dumbbells.jpg',
                                ),
                              ),
                            ),
                          ),
                        ),
                        10.verticalSpace,
                        Text(
                          "From inflexible to flexible",
                          style: AppTextStyle.gothamStdSemiBold,
                        ),
                        Text(
                          "With Farah",
                          style: AppTextStyle.gothamStdMedium
                              .copyWith(color: const Color(0xff878787)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            20.verticalSpace,
            Text(
              "Completed training and courses",
              style: AppTextStyle.gothamStdMedium,
            ),
            10.verticalSpace,
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 182.h,
                    width: 180.w,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.red,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://media.self.com/photos/5b52046f18a2407a16eba501/4:3/w_2560%2Cc_limit/woman-lifting-dumbbells.jpg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      // crossAxisAlignment: Cr,
                      children: [
                        Text(
                          "03:12",
                          style: AppTextStyle.gothamStdSemiBold,
                        ),Text(
                          "Time (min)",
                          style: AppTextStyle.gothamStdMedium.copyWith(color: const Color(0xff878787)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            10.verticalSpace,
            Text(
              "Saved trainings and courses",
              style: AppTextStyle.gothamStdMedium,
            ),
            SizedBox(
              height: 270.h,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 192.h,
                          width: 216.w,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.red,
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://media.self.com/photos/5b52046f18a2407a16eba501/4:3/w_2560%2Cc_limit/woman-lifting-dumbbells.jpg',
                                ),
                              ),
                            ),
                          ),
                        ),
                        10.verticalSpace,
                        Text(
                          "From inflexible to flexible",
                          style: AppTextStyle.gothamStdSemiBold,
                        ),
                        Text(
                          "With Farah",
                          style: AppTextStyle.gothamStdMedium
                              .copyWith(color: const Color(0xff878787)),
                        ),
                      ],
                    ),
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
