class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent(
      {required this.image, required this.title, required this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
    image: 'assets/images/documents.png',
    title: 'View and print exam results quickly',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pharetra ut et cursus nibh facilisi semper aliquam.',
  ),
  OnboardingContent(
    image: 'assets/images/kindergarten.png',
    title: 'Get notified of your child’s activities ',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pharetra ut et cursus nibh facilisi semper aliquam.',
  ),
  OnboardingContent(
    image: 'assets/images/learning.png',
    title: 'Understand your child’s academic strengths',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pharetra ut et cursus nibh facilisi semper aliquam.',
  ),
];
