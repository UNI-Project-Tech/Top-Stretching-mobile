import 'package:topstretching/utils/export.dart';

class ConsentOption extends StatelessWidget {
  final String text;
  final bool value;
  final ValueChanged<bool> onChanged;

  const ConsentOption({super.key,
    required this.text,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            value ? Icons.check_circle_outline : Icons.radio_button_unchecked,
            color: value ? AppColors.mainColor : Colors.grey,
          ),
          onPressed: () {
            onChanged(!value);
          },
        ),
        Expanded(
          child: Text(text,style: AppTextStyle.gothamStdMedium,),
        ),
      ],
    );
  }
}