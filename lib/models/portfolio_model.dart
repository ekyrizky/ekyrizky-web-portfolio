class PortfolioModel {
  final String title;
  final String category;
  final String description;
  final String image;
  final String? storeLink;
  final String? githubLink;

  PortfolioModel({
    required this.title,
    required this.category,
    required this.description,
    required this.image,
    this.storeLink,
    this.githubLink,
  });
}
