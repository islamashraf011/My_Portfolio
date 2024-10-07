import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/components/custom_text_button.dart';

class AddActionButtonWidget extends StatelessWidget {
  const AddActionButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: CustomTextButton(
        title: 'Add',
        backgroundColor: Colors.green[900],
        height: 40.h,
        width: 100.w,
        onPressed: () {},
      ),
    );
  }
}
