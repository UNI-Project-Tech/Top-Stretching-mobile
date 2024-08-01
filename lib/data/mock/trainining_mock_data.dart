final List<TrainingItem> stretchingItemList = [
  TrainingItem(
    imageUrl: 'https://static.vecteezy.com/system/resources/previews/001/915/259/original/woman-doing-stretching-exercises-at-home-free-vector.jpg',
    title: 'SPLIT SCHOOL',
    isLocked: false,
  ),
  TrainingItem(
    imageUrl: 'https://static.vecteezy.com/system/resources/previews/001/915/259/original/woman-doing-stretching-exercises-at-home-free-vector.jpg',
    title: 'HEALTHY BACK',
    isLocked: true,
  ),
  TrainingItem(
    imageUrl: 'https://static.vecteezy.com/system/resources/previews/001/915/259/original/woman-doing-stretching-exercises-at-home-free-vector.jpg',
    title: 'STRETCHING',
    isLocked: true,
  ),
];

final List<TrainingItem> functionalItemList = [
  TrainingItem(
    imageUrl: 'https://www.spartan.com/cdn/shop/articles/210427-BDoscher-MerchTraining-274_1024x1024.jpg?',
    title: 'isolation',
    isLocked: false,
  ),
  TrainingItem(
    imageUrl: 'https://cdn.oxygenmag.com/wp-content/uploads/2020/11/wm-3.jpg',
    title: 'hiit',
    isLocked: true,
  ),
];

final bodyMindItemList = [
  TrainingItem(
    imageUrl: 'https://www.strongfitnessmag.com/wp-content/uploads/2020/06/Mind-bodyLead.jpg',
    title: 'Yoga & pilates',
    isLocked: false,
  ),
  TrainingItem(
    imageUrl: 'https://trifocusfitnessacademy.co.za/wp-content/uploads/2018/07/mind-body-exercise-1024x760.jpg',
    title: 'relaxation',
    isLocked: true,
  ),
  TrainingItem(
    imageUrl: 'https://trifocusfitnessacademy.co.za/wp-content/uploads/2018/07/mind-body-exercise-1024x760.jpg',
    title: 'facebuilding',
    isLocked: true,
  ),
];


class TrainingItem {
  final String imageUrl;
  final String title;
  final bool isLocked;

  TrainingItem({
    required this.imageUrl,
    required this.title,
    required this.isLocked,
  });
}