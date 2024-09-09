import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/nav_items_list.dart';
import '../../../../core/utils/app_colors.dart';

class EndDrawerMobileWidget extends StatelessWidget {
  const EndDrawerMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(AppColors.kPrimaryColor).withOpacity(0.8),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w),
        child: ListView(
          children: [
            IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(Icons.clear),
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(20),
            ),
            for (int i = 0; i < navIcons.length; i++)
              ListTile(
                onTap: () {},
                leading: Icon(
                  navIcons[i],
                  color: Colors.white,
                ),
                title: Text(
                  navTitles[i],
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
