import 'package:flutter/material.dart';
import 'package:topstretching/data/mock/trainining_mock_data.dart';
import 'package:topstretching/screens/tabs/training/widgets/training_card.dart';
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
            tabs: [
              Tab(text: 'Stretching'),
              Tab(text: 'Functional'),
              Tab(text: 'Body Mind'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TrainingListView(items: stretchingItemList),
            TrainingListView(items: functionalItemList),
            TrainingListView(items: bodyMindItemList),
          ],
        ),
      ),
    );
  }
}

class TrainingListView extends StatelessWidget {
  final List<TrainingItem> items;

  const TrainingListView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TrainingCard(item: items[index]);
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TrainingScreen(),
  ));
}
