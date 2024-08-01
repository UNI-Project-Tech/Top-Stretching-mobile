import 'package:topstretching/common/widgets/tab_box_app_bar.dart';
import 'package:topstretching/utils/export.dart';

import '../../../../data/mock/trainining_mock_data.dart';

class TrainingCategoriesScreen extends StatelessWidget {
  final String title;

  const TrainingCategoriesScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBoxAppBar(
        title: title.toUpperCase(),
        actions: [
          IconButton(
            onPressed: () {
              // Add your settings functionality here
            },
            icon: SvgPicture.asset('assets/icons/ic_calendar.svg'),
          ),
        ],
      ),
      body:  ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: trainingCategory.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, RouteNames.trainingCategoryDetail,arguments: trainingCategory[index]);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.network(
                      trainingCategory[index].overview.imageUrl,
                      height: 200.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 200.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      gradient:
                         LinearGradient(
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
                      trainingCategory[index].overview.title.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
