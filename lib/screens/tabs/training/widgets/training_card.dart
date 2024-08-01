import 'package:topstretching/data/mock/trainining_mock_data.dart';
import 'package:topstretching/utils/export.dart';

class TrainingCard extends StatelessWidget {
  final TrainingItem item;
  final Function() onTap;
  const TrainingCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                item.imageUrl,
                height: 200.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                gradient: item.isLocked
                    ? LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.3),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      )
                    : LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.1),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
              ),
            ),
            Positioned(
              bottom: 16.0,
              left: 16.0,
              child: Text(
                item.title.toUpperCase(),
                style: TextStyle(
                  color: item.isLocked? Colors.white54 : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (item.isLocked)
              Positioned(
                top: 50.h,
                left: 80.w,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock,
                      color: AppColors.mainColor,
                      size: 30.sp,
                    ),
                    10.verticalSpace,
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: CustomButton(
                        borderColor: AppColors.transparentColor,
                        radius: BorderRadius.circular(
                          30.r,
                        ),
                        text: "UNLOCK",
                        onTap: () {},
                      ),
                    )
                  ],
                )),
              ),
          ],
        ),
      ),
    );
  }
}
