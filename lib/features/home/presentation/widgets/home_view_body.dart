import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/constants/nav_items_list.dart';
import 'package:portfolio/features/home/presentation/widgets/profile_desktop_section.dart';
import 'about_me_section.dart';
import 'contact_section.dart';
import 'home_app_bar.dart';
import 'my_projects_section.dart';
import 'my_skills_section.dart';
import 'profile_mobile_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              HomeAppBar(
                controller: controller,
              ),
              if (ScreenUtil().screenWidth <= kScreenWidth)
                const ProfileMobileSection()
              else
                const ProfileDesktopSection(),
              const AboutMeSection(),
              const MySkillsSection(),
              const MyProjectsSection(),
              const ContactSection(),
            ],
          ),
        ),
      ],
    );
  }
}
