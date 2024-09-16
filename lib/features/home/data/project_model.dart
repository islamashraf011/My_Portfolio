class ProjectModel {
  final String imgUrl;
  final String title;
  final String description;
  final String? amazonUrl;
  final String? googleUrl;

  ProjectModel({
    required this.imgUrl,
    required this.title,
    required this.description,
    this.amazonUrl,
    this.googleUrl,
  });
}
