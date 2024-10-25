import 'package:portfolio/core/constants/constant.dart';

class ProjectModel {
  final String imgUrl;
  final String appName;
  final String description;
  final String? amazonUrl;
  final String? googleUrl;
  final String? adminAccount;
  final String? createAt;

  ProjectModel({
    required this.imgUrl,
    required this.appName,
    required this.description,
    this.amazonUrl,
    this.googleUrl,
    this.adminAccount,
    this.createAt,
  });
  factory ProjectModel.fromjson(json) {
    return ProjectModel(
      appName: json[kAppName],
      description: json[kDescription],
      imgUrl: json[kImageUrl],
      amazonUrl: json[kAmazonLink],
      googleUrl: json[kGoogleLink],
      adminAccount: json[kId],
      createAt: json[kCreateAt],
    );
  }
}
