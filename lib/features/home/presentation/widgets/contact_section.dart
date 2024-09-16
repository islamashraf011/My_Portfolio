import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.instagram,
                color: Colors.red,
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
