import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/utils/app_colors.dart';

class CustomProjectLinkWidget extends StatelessWidget {
  const CustomProjectLinkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      height: 30,
      width: double.infinity,
      color: const Color(AppColors.kPrimaryColor).withOpacity(0.6),
      child: Row(
        children: [
          const Text(
            'Available on:',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          const Spacer(),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.googlePlay,
              size: 12,
            ),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.amazon,
              size: 12,
            ),
          ),
        ],
      ),
    );
  }
}
