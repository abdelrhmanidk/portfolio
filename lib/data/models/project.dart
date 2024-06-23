class Project {
  final String name;
  final String image;
  final String description;
  final String? githubRepoLink;
  final String? previewLink;
  final String? googlePlay;

  const Project({
    required this.name,
    required this.image,
    required this.description,
    this.githubRepoLink,
    this.previewLink,
    this.googlePlay,
  });
}
