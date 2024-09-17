import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/constants/contact_info_list.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Divider(
          height: 30.h,
          indent: 50.w,
          endIndent: 50.w,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < contactIcons.length; i++)
              IconButton(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                onPressed: () async {
                  await launchUrl(
                    Uri.parse(
                      contactUrl[i],
                    ),
                  );
                },
                icon: Icon(
                  contactIcons[i],
                ),
              ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
}
