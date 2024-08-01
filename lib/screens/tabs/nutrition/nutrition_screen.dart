import 'package:flutter/material.dart';
import 'package:topstretching/common/widgets/tab_box_app_bar.dart';
import 'package:topstretching/utils/export.dart';

class NutritionScreen extends StatelessWidget {
  const NutritionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBoxAppBar(title: "NUTRITION"),
      body: GridView.builder(
        itemCount: 10,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  'https://nutrizionistatrapani.com/wp-content/uploads/2019/05/img-2.jpg',
                  height: 230.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 230.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.2),
                      Colors.black.withOpacity(0.2),
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
                  '7 days healthy food plan',
                  style: AppTextStyle.gothamStdSemiBold.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: 230.h
        ),
      ),
    );
  }
}
