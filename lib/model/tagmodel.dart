/// This is a model of a tag.
/// a tag contains [title],[postCount],and [icon].
/// If a user clicks on any icon, he will navigates to particular tag page.
/// The route to navigate is defined by pass another argument [navigationRoute].
///  In this project i have only implemented three pages:
/// 1. Dance
/// 2.Exam
/// 3. Song
/// Clicking on tags other then above mentioned will popup a snackbar.

class Tag {
  Tag({
    required this.title,
    required this.postCount,
    required this.iconPath,
    this.navigationRoute,
  });
  final String title;
  final String postCount;
  final String iconPath;
  String? navigationRoute;
}

List<Tag> tags = [
  Tag(
      iconPath: "images/dance.png",
      postCount: "120k",
      title: "Dance",
      navigationRoute: '/dance'),
  Tag(postCount: "23K", title: "Speech", iconPath: "images/speech.png"),
  Tag(
      postCount: "69K",
      title: "Song",
      iconPath: "images/song.png",
      navigationRoute: '/song'),
  Tag(postCount: "67K", title: "Drama", iconPath: "images/drama.png"),
  Tag(postCount: "89K", title: "Game", iconPath: "images/game.png"),
  Tag(postCount: "18K", title: "Enovation", iconPath: "images/innovation.png"),
  Tag(postCount: "13K", title: "Travel", iconPath: "images/travel.png"),
  Tag(
      postCount: "90k",
      title: "Exam",
      iconPath: "images/exam.png",
      navigationRoute: '/exam'),
  Tag(postCount: "556K", title: "Q & N", iconPath: "images/qna.png"),
  Tag(postCount: "03K", title: "Study", iconPath: "images/study.png"),
  Tag(postCount: "40K", title: "Food", iconPath: "images/food.png"),
  Tag(postCount: "23K", title: "Costumes", iconPath: "images/costume.png"),
  Tag(postCount: "98K", title: "Festivals", iconPath: "images/festival.png"),
  Tag(postCount: "56K", title: "Travels", iconPath: "images/travel.png"),
  Tag(postCount: "34K", title: "Q & N", iconPath: "images/qna.png"),
  Tag(postCount: "139K", title: "Study", iconPath: "images/study.png"),
  Tag(postCount: "210K", title: "Food", iconPath: "images/food.png"),
  Tag(postCount: "250K", title: "Costumes", iconPath: "images/costume.png"),
];
