
import 'package:flutter/cupertino.dart';
import 'package:topstretching/utils/export.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Platform.isAndroid
          ? CircularProgressIndicator(
              color: color ?? AppColors.white, strokeWidth: 2)
          : CupertinoActivityIndicator(color: color ?? AppColors.white),
    );
  }
}
