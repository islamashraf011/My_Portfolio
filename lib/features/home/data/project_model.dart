import 'package:portfolio/core/constants/constant.dart';

class ProjectModel {
  final String imgUrl;
  final String appName;
  final String description;
  final String? amazonUrl;
  final String? googleUrl;
  final String? id;
  final String? createAt;

  ProjectModel({
    required this.imgUrl,
    required this.appName,
    required this.description,
    this.amazonUrl,
    this.googleUrl,
    this.id,
    this.createAt,
  });
  factory ProjectModel.fromjson(json) {
    return ProjectModel(
      appName: json[kAppName],
      description: json[kDescription],
      imgUrl: json[kImageUrl],
      amazonUrl: json[kAmazonLink],
      googleUrl: json[kGoogleLink],
      id: json[kId],
      createAt: json[kCreateAt],
    );
  }
}
