import 'package:flutter/material.dart';
import 'package:topstretching/data/mock/trainining_mock_data.dart';
import 'package:topstretching/screens/tabs/training/training_categories/training_detail_with_video_screen.dart';
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
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
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
                  model.overview.title,
                  style: AppTextStyle.gothamStdBold.copyWith(fontSize: 24.sp),
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
          const SizedBox(height: 32),
          Expanded(
            child: DefaultTabController(
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
                  Flexible(
                    fit: FlexFit.loose,
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15.w),
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
                                model.overview.description,
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
                              ListView.separated(
                                itemCount: model.overview.expects.length,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    height: 100.h,
                                    width: double.infinity,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          border: Border.all(
                                              color: AppColors.mainColor)),
                                      child: Center(
                                        child: Text(
                                          model.overview.expects[index],
                                          textAlign: TextAlign.center,
                                          style: AppTextStyle.gothamStdMedium
                                              .copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return 10.verticalSpace;
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15.w),
                          child: ListView.separated(
                            itemCount: model.training.length,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        child: Image.network(
                                            height: 70.h,
                                            width: 110.w,
                                            fit: BoxFit.cover,
                                            'https://cssversicherung.scene7.com/is/image/csskrankenversicherung/spagat-lernen:image-21-9?wid=1600&fit=constrain,0&resMode=sharp2&noCache=1667821736166'),
                                      ),
                                      10.horizontalSpace,
                                      RichText(
                                        text: TextSpan(
                                          style: AppTextStyle.gothamStdSemiBold
                                              .copyWith(fontSize: 14.sp),
                                          children: [
                                            TextSpan(
                                              text:
                                                  "${model.training[index].title}\n\n",
                                            ),
                                            TextSpan(
                                              text:
                                                  "${model.overview.title}\n\n",
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  10.verticalSpace,
                                  Text(
                                    model.training[index].description,
                                    style:
                                        AppTextStyle.gothamStdMedium.copyWith(
                                      color: const Color(0xff878787),
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  const Divider(
                                    color: Color(0xffE0E0E0),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "More details".toUpperCase(),
                                        style: AppTextStyle.gothamStdSemiBold
                                            .copyWith(fontSize: 14.sp),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    TrainingDetailWithVideoScreen(
                                                  model: model.training[index],
                                                  title: model.overview.title,
                                                ),
                                              ),
                                            );
                                          },
                                          icon: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 20.sp,
                                          ))
                                    ],
                                  )
                                ],
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return 15.verticalSpace;
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
