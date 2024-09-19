import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/end_drawer_mobile_widget.dart';
import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return SafeArea(
      child: Scaffold(
        endDrawer: ScreenUtil().screenWidth <= 690
            ? EndDrawerMobileWidget(
                controller: pageController,
              )
            : null,
        body: HomeViewBody(
          controller: pageController,
        ),
      ),
    );
  }
}
