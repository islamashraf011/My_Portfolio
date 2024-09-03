import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/widgets/animated_profile_section.dart';
import 'home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        HomeAppBar(),
        AnimatedProfileSection(),
      ],
    );
  }
}
