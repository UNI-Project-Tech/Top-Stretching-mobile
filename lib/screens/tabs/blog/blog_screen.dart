
import 'package:topstretching/common/widgets/tab_box_app_bar.dart';
import 'package:topstretching/utils/export.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TabBoxAppBar(title: "BLOG"),
        body: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10),
          itemCount: 3,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                if(index == 0){
                  Navigator.pushNamed(context, RouteNames.generalRules);
                }else if(index == 1){
                  Navigator.pushNamed(context, RouteNames.nutritionPlan);
                }
              },
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      index == 0
                          ? 'assets/images/rules_img.png'
                          : index == 1
                              ? "assets/images/nutrition_plan.png"
                              : "assets/images/personal_nutrition_plan.png",
                      height: 190.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 190.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.0),
                          Colors.black.withOpacity(0.0),
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
                      index == 0
                          ? 'General Rules'.toUpperCase()
                          : index == 1
                              ? "NUTRITION PLAN"
                              : "PERSONAL NUTRITION PLAN",
                      style: AppTextStyle.bebasSemiBold.copyWith(
                        color: AppColors.white,
                        fontSize: 30.sp,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return 10.verticalSpace;
          },
        ));
  }
}
