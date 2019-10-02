class Topic {
  final String question;
  final String recentAnswer;
  final String answerCount;

  Topic({this.question, this.recentAnswer, this.answerCount});
}

final fortniteTopics = [
  Topic(
    question: "test_질문?",
    recentAnswer:
        "test_답변",
    answerCount: "1241",
  ),
  Topic(
    question: "test_질문2?",
    recentAnswer:
    "test_답변2",
    answerCount: "238",
  ),
];

final pubgTopics = fortniteTopics;
