import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/utils/app_colors.dart';

class CustomProjectLinkWidget extends StatelessWidget {
  const CustomProjectLinkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      height: 30.h,
      width: double.infinity,
      color: const Color(AppColors.kPrimaryColor).withOpacity(0.6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Available on:',
            style: TextStyle(
              fontSize: 12.r,
            ),
          ),
          SizedBox(
            width: 20.r,
          ),
          IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.googlePlay,
              size: 12.r,
            ),
          ),
          IconButton(
            alignment: Alignment.center,
            constraints: const BoxConstraints(),
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.amazon,
              size: 12.r,
            ),
          ),
        ],
      ),
    );
  }
}
