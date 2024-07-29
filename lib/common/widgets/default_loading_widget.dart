
import 'package:topstretching/utils/export.dart';


class DefaultLoadingWidget extends StatelessWidget {
  const DefaultLoadingWidget({super.key, required this.isFullScreen});

  final bool isFullScreen;

  @override
  Widget build(BuildContext context) {
    return isFullScreen
        ? const Center(
            child: CircularProgressIndicator(
              color: AppColors.blue,
            ),
          )
        : const SizedBox(
            height: 160,
            child: Center(
              child: CircularProgressIndicator(
                color: AppColors.blue,
              ),
            ),
          );
  }
}
