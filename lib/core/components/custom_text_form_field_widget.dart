import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_text_styles.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget({
    super.key,
    required this.hintText,
    this.onChanged,
    this.onSaved,
    this.maxLines,
  });
  final String hintText;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
      child: TextFormField(
        controller: textController,
        maxLines: maxLines,
        onChanged: onChanged,
        onSaved: onSaved,
        textAlign: TextAlign.justify,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          enabledBorder: buildBorder(Colors.grey),
          disabledBorder: buildBorder(Colors.cyan),
          focusedBorder: buildBorder(Colors.cyan),
          hintText: hintText,
          hintStyle: AppTextStyles.textGreyNormal12(),
          suffixIcon: IconButton(
            onPressed: () {
              textController.clear();
            },
            icon: const Icon(
              Icons.clear,
              size: 16,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: color),
    );
  }
}