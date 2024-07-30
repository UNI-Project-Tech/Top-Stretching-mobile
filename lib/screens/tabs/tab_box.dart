import 'package:topstretching/screens/tabs/blog/blog_screen.dart';
import 'package:topstretching/screens/tabs/courses/courses_screen.dart';
import 'package:topstretching/screens/tabs/explore/explore_screen.dart';
import 'package:topstretching/screens/tabs/home/home_screen.dart';
import 'package:topstretching/screens/tabs/nutrition/nutrition_screen.dart';
import 'package:topstretching/screens/tabs/training/training_screen.dart';
import 'package:topstretching/utils/export.dart';

class TabBoxScreen extends StatefulWidget {
  const TabBoxScreen({super.key});

  @override
  State<TabBoxScreen> createState() => _TabBoxScreenState();
}

class _TabBoxScreenState extends State<TabBoxScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const TrainingScreen(),
    const CoursesScreen(),
    const ExploreScreen(),
    const NutritionScreen(),
    const BlogScreen(),
  ];

  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: AppColors.mainColor,
        onTap: (v) {
          setState(() {
            _activeIndex = v;
          });
        },
        items: [
          _buildBottomNavigationBarItem(
            label: "Home",
            iconPath: AppImages.icHome,
            isActive: _activeIndex == 0,
          ),
          _buildBottomNavigationBarItem(
            label: "Training",
            iconPath: AppImages.icLogo,
            isActive: _activeIndex == 1,
          ),
          _buildBottomNavigationBarItem(
            label: "Courses",
            iconPath: AppImages.icPlayer,
            isActive: _activeIndex == 2,
          ),
          _buildBottomNavigationBarItem(
            label: "Explore",
            iconPath: AppImages.icCamera,
            isActive: _activeIndex == 3,
          ),
          _buildBottomNavigationBarItem(
            label: "Nutrition",
            iconPath: AppImages.icApple2,
            isActive: _activeIndex == 4,
          ),
          _buildBottomNavigationBarItem(
            label: "Blog",
            iconPath: AppImages.icFeather,
            isActive: _activeIndex == 5,
          ),
        ],
      ),
      body: _screens[_activeIndex],
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required String label,
    required String iconPath,
    required bool isActive,
  }) {
    return BottomNavigationBarItem(
      label: label,
      icon: Container(
        decoration: isActive
            ? BoxDecoration(
          color: AppColors.mainColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        )
            : null,
        padding: const EdgeInsets.all(10),
        child: SvgPicture.asset(
          iconPath,
          colorFilter: isActive
              ? const ColorFilter.mode(AppColors.mainColor, BlendMode.srcIn)
              : null,
        ),
      ),
    );
  }
}
