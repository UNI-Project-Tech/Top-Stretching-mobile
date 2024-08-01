import 'package:topstretching/data/mock/trainining_mock_data.dart';
import 'package:topstretching/screens/tabs/training/training_categories/trainining_categories_screen.dart';
import 'package:topstretching/screens/tabs/training/widgets/training_card.dart';
import 'package:topstretching/utils/export.dart';

class TrainingListView extends StatelessWidget {
  final List<TrainingItem> items;
  final Function(int) onTap;

  const TrainingListView({super.key, required this.items, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TrainingCard(
          item: items[index],
          onTap: () {
            if(!items[index].isLocked){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  TrainingCategoriesScreen(title: items[index].title),
                ),
              );
            }

          },
        );
      },
    );
  }
}
