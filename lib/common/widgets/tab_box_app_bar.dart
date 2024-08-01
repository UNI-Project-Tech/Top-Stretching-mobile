import 'package:flutter/material.dart';
import 'package:topstretching/utils/export.dart';

class TabBoxAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final PreferredSizeWidget? bottom;

  final List<Widget> actions;

  TabBoxAppBar({
    super.key,
    required this.title,
    this.actions = const [],
    this.bottom,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: bottom,
      title: Text(
        title,
        style: AppTextStyle.gothamStdMedium.copyWith(fontSize: 18.sp),
      ),
      actions: actions,
      elevation: 4.0,
      centerTitle: true,
    );
  }
}
