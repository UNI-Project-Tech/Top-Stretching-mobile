import 'package:flutter/material.dart';
import 'package:topstretching/data/mock/trainining_mock_data.dart';
import 'package:topstretching/screens/tabs/training/widgets/training_card.dart';
import 'package:topstretching/screens/tabs/training/widgets/trainining_list_view.dart';
import 'package:topstretching/utils/export.dart';

class TrainingScreen extends StatelessWidget {
  TrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'TRAINING',
            style: AppTextStyle.gothamStdMedium.copyWith(fontSize: 18.sp),
          ),
          actions: [
            IconButton(
              onPressed: () {
                // Add your settings functionality here
              },
              icon: SvgPicture.asset('assets/icons/ic_calendar.svg'),
            ),
          ],
          bottom: TabBar(
            labelColor: AppColors.mainColor,
            labelStyle: AppTextStyle.gothamStdMedium.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
            indicatorColor: AppColors.mainColor,
            dividerColor: AppColors.transparentColor,
            tabs: const
            [
              Tab(text: 'Stretching'),
              Tab(text: 'Functional'),
              Tab(text: 'Body Mind'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TrainingListView(items: stretchingItemList, onTap: (int i) {  },),
            TrainingListView(items: functionalItemList, onTap: (int i) {  },),
            TrainingListView(items: bodyMindItemList, onTap: (int index ) {  },),
          ],
        ),
      ),
    );
  }
}


