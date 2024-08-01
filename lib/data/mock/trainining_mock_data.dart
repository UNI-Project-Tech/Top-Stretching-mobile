final List<TrainingItem> stretchingItemList = [
  TrainingItem(
    imageUrl:
        'https://static.vecteezy.com/system/resources/previews/001/915/259/original/woman-doing-stretching-exercises-at-home-free-vector.jpg',
    title: 'SPLIT SCHOOL',
    isLocked: false,
  ),
  TrainingItem(
    imageUrl:
        'https://static.vecteezy.com/system/resources/previews/001/915/259/original/woman-doing-stretching-exercises-at-home-free-vector.jpg',
    title: 'HEALTHY BACK',
    isLocked: true,
  ),
  TrainingItem(
    imageUrl:
        'https://static.vecteezy.com/system/resources/previews/001/915/259/original/woman-doing-stretching-exercises-at-home-free-vector.jpg',
    title: 'STRETCHING',
    isLocked: true,
  ),
];

final List<TrainingItem> functionalItemList = [
  TrainingItem(
    imageUrl:
        'https://www.spartan.com/cdn/shop/articles/210427-BDoscher-MerchTraining-274_1024x1024.jpg?',
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
    imageUrl:
        'https://www.strongfitnessmag.com/wp-content/uploads/2020/06/Mind-bodyLead.jpg',
    title: 'Yoga & pilates',
    isLocked: false,
  ),
  TrainingItem(
    imageUrl:
        'https://trifocusfitnessacademy.co.za/wp-content/uploads/2018/07/mind-body-exercise-1024x760.jpg',
    title: 'relaxation',
    isLocked: true,
  ),
  TrainingItem(
    imageUrl:
        'https://trifocusfitnessacademy.co.za/wp-content/uploads/2018/07/mind-body-exercise-1024x760.jpg',
    title: 'facebuilding',
    isLocked: true,
  ),
];

final trainingCategory = [
  TrainingCategoryItemModel(
    overview: TrainingCategoryOverview(
      imageUrl:
          'https://t4.ftcdn.net/jpg/04/36/81/43/360_F_436814322_pH4zCw93Crs5poH9dbJVzrUlG32G7v8n.jpg',
      title: 'Split School',
      description: 'A comprehensive program to help you achieve a front split.',
      expects: ['Improved flexibility', 'Stronger legs', 'Enhanced balance'],
    ),
    training: [
      TrainingCategoryTraining(
        title: 'Warm-up Routine',
        description: 'A set of exercises to prepare your body for the splits.',
        equipments: ['Mat'],
        musclesInvolved: ['Hamstrings', 'Hip flexors'],
        results: ['Increased blood flow', 'Reduced injury risk'], imageUrl: '', videoUrl: '',
      ),
      TrainingCategoryTraining(
        title: 'Stretching Routine',
        description:
            'Targeted stretches to increase flexibility for the splits.',
        equipments: ['Mat'],
        musclesInvolved: ['Hamstrings', 'Hip flexors', 'Quadriceps'],
        results: ['Increased flexibility', 'Enhanced muscle relaxation'], imageUrl: '', videoUrl: '',
      ),
    ],
  ),
  TrainingCategoryItemModel(
    overview: TrainingCategoryOverview(
      imageUrl:
          'https://hopephysicaltherapy.com/wp-content/uploads/2021/12/7-Ways-Stretching-Can-Improve-Your-Health-and-Wellness.jpg',
      title: 'Healthy Back',
      description: 'Exercises designed to strengthen and stretch your back.',
      expects: ['Reduced back pain', 'Improved posture', 'Stronger core'],
    ),
    training: [
      TrainingCategoryTraining(
        title: 'Core Strengthening',
        description: 'Exercises focused on building core strength.',
        equipments: ['Mat', 'Resistance bands'],
        musclesInvolved: ['Core', 'Lower back'],
        results: ['Stronger core muscles', 'Better posture'], imageUrl: '', videoUrl: '',
      ),
      TrainingCategoryTraining(
        title: 'Back Stretching',
        description:
            'Stretches to alleviate back pain and increase flexibility.',
        equipments: ['Mat'],
        musclesInvolved: ['Back', 'Shoulders'],
        results: ['Reduced back pain', 'Enhanced flexibility'], imageUrl: '', videoUrl: '',
      ),
    ],
  ),
  TrainingCategoryItemModel(
    overview: TrainingCategoryOverview(
      imageUrl:
          'https://www.athletico.com/wp-content/uploads/2014/08/how-to-safely-learn-splits-featured-new.jpg',
      title: 'Stretching',
      description: 'A set of exercises to enhance overall body flexibility.',
      expects: [
        'Full body flexibility',
        'Increased range of motion',
        'Reduced muscle tension'
      ],
    ),
    training: [
      TrainingCategoryTraining(
        title: 'Full Body Stretch',
        description:
            'A comprehensive routine for stretching all major muscle groups.',
        equipments: ['Mat'],
        musclesInvolved: ['All major muscle groups'],
        results: ['Enhanced flexibility', 'Reduced muscle tension'], imageUrl: '', videoUrl: '',
      ),
      TrainingCategoryTraining(
        title: 'Post-Workout Stretch',
        description:
            'Stretching exercises to help with muscle recovery after workouts.',
        equipments: ['Mat'],
        musclesInvolved: ['All major muscle groups'],
        results: ['Improved recovery', 'Reduced muscle soreness'], imageUrl: '', videoUrl: '',
      ),
    ],
  ),
];

class TrainingCategoryItemModel {
  final TrainingCategoryOverview overview;
  final List<TrainingCategoryTraining> training;

  TrainingCategoryItemModel({required this.overview, required this.training});
}

class TrainingCategoryOverview {
  final String imageUrl;
  final String title;
  final String description;
  final List<String> expects;

  TrainingCategoryOverview(
      {required this.imageUrl,
      required this.title,
      required this.description,
      required this.expects});
}

class TrainingCategoryTraining {
  final String title;
  final String description;
  final String imageUrl;
  final String videoUrl;
  final List<String> equipments;
  final List<String> musclesInvolved;
  final List<String> results;

  TrainingCategoryTraining(
      {
        required this.title,
        required this.imageUrl,
        required this.videoUrl,
      required this.description,
      required this.equipments,
      required this.musclesInvolved,
      required this.results,
      });
}

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
