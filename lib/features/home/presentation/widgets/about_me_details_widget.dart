import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_text_styles.dart';

class AboutMeDetailsWidget extends StatelessWidget {
  const AboutMeDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.w),
      child: Align(
        alignment: Alignment.centerLeft,
        child: RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            style: AppTextStyles.textNormal16(),
            children: <TextSpan>[
              // First Detail About Me

              TextSpan(
                text: '-',
                style: AppTextStyles.textBoldColor22(),
              ),
              const TextSpan(
                text:
                    '  Dedicated and results-oriented Junior Flutter Developer with ',
              ),
              TextSpan(
                text: '1 year ',
                style: AppTextStyles.textNormalColor16(),
              ),
              const TextSpan(
                text: 'of experience and strong foundation in ',
              ),
              TextSpan(
                text: 'Dart ',
                style: AppTextStyles.textNormalColor16(),
              ),
              const TextSpan(
                text: ', UI/UX design, and Mobile app development. ',
              ),
              const TextSpan(
                text: 'Proven ability to build robust and scalable ',
              ),
              TextSpan(
                text: 'cross-platform ',
                style: AppTextStyles.textNormalColor16(),
              ),
              const TextSpan(
                text: 'applications using ',
              ),
              TextSpan(
                text: 'Flutter ',
                style: AppTextStyles.textNormalColor16(),
              ),
              const TextSpan(
                text:
                    ', leveraging state management techniques, navigation, API integration, and data storage (both remote and local).\n',
              ),

              // Second Detail About Me
              TextSpan(
                text: '- ',
                style: AppTextStyles.textBoldColor22(),
              ),
              const TextSpan(
                text: 'Proficient in ',
              ),
              TextSpan(
                text: 'Solid ',
                style: AppTextStyles.textNormalColor16(),
              ),
              const TextSpan(
                text: 'Principles, ',
              ),
              TextSpan(
                text: 'Responsive ',
                style: AppTextStyles.textNormalColor16(),
              ),
              const TextSpan(
                text: 'UI design, ',
              ),
              TextSpan(
                text: 'Clean ',
                style: AppTextStyles.textNormalColor16(),
              ),
              const TextSpan(
                text: 'Architecture, and ',
              ),
              TextSpan(
                text: 'MVVM ',
                style: AppTextStyles.textNormalColor16(),
              ),
              const TextSpan(
                text:
                    'to ensure code quality and maintainability. Experienced in utilizing ',
              ),
              TextSpan(
                text: 'Git ',
                style: AppTextStyles.textNormalColor16(),
              ),
              const TextSpan(
                text: 'and ',
              ),
              TextSpan(
                text: 'GitHub ',
                style: AppTextStyles.textNormalColor16(),
              ),
              const TextSpan(
                text: 'for version control and collaboration.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
