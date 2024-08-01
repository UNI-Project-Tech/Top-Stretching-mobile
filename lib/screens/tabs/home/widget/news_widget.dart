import 'package:topstretching/utils/export.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                      style: AppTextStyle.gothamStdMedium.copyWith(color: const Color(0xff878787)),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
