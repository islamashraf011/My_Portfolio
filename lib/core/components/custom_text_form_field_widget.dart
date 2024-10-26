import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/app_text_styles.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget({
    super.key,
    required this.hintText,
    this.onChanged,
    this.onSaved,
    this.clearText,
    this.controller,
    required this.index,
    this.isPassword = false,
    this.pickImage,
  });
  final String hintText;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;

  final Function()? clearText;
  final TextEditingController? controller;
  final int index;
  final bool isPassword;
  final Function()? pickImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
      child: TextFormField(
        validator: (data) {
          if (index < 3 || index > 4) {
            if (data!.isEmpty) {
              return 'field is required';
            }
          }

          return null;
        },
        obscureText: isPassword,
        controller: controller,
        maxLines: 1,
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
          suffixIcon: index == 2
              ? IconButton(
                  onPressed: pickImage,
                  icon: const Icon(
                    FontAwesomeIcons.image,
                    size: 16,
                  ),
                )
              : IconButton(
                  onPressed: clearText,
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
