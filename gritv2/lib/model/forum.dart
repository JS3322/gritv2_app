import 'package:gritv2/model/topic.dart';

class Forum {
  final String title;
  final String imagePath;
  final String rank;
  final List<Topic> topics;
  final String threads;
  final String subs;

  Forum({this.title, this.imagePath, this.rank, this.threads, this.subs, this.topics});
}

final fortniteForum = Forum(
    title: "Fortnite",
    imagePath: "assets/images/1.png",
    rank: "31",
    threads: "88",
    subs: "90,000",
    topics: fortniteTopics);

final pubgForum = Forum(
    title: "PUBG",
    imagePath: "assets/images/2.png",
    rank: "25",
    threads: "120",
    subs: "70,000",
    topics: pubgTopics);

final game1Forum = Forum(
    title: "GAME1",
    imagePath: "assets/images/2.png",
    rank: "25",
    threads: "120",
    subs: "70,000",
    topics: pubgTopics);

final forums = [
  fortniteForum,
  pubgForum
];
