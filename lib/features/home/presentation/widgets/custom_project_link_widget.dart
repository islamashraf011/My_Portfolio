import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/components/show_snack_bar_widget.dart';
import 'package:portfolio/features/home/data/project_model.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/utils/app_colors.dart';

class CustomProjectLinkWidget extends StatelessWidget {
  const CustomProjectLinkWidget({super.key, required this.projectModel});
  final ProjectModel projectModel;
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
            width: 5.r,
          ),
          IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () async {
              if (projectModel.googleUrl == null ||
                  projectModel.googleUrl == "") {
                showSnackBar(context, 'Google URL is not available');
              } else {
                await launchUrl(
                  Uri.parse(projectModel.googleUrl!),
                );
              }
            },
            icon: Icon(
              FontAwesomeIcons.googlePlay,
              size: 12.r,
            ),
          ),
          IconButton(
            alignment: Alignment.center,
            constraints: const BoxConstraints(),
            padding: EdgeInsets.zero,
            onPressed: () async {
              if (projectModel.amazonUrl == null ||
                  projectModel.amazonUrl == "") {
                showSnackBar(context, 'Amazon URL is not available');
              } else {
                await launchUrl(
                  Uri.parse(projectModel.amazonUrl!),
                );
              }
            },
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
