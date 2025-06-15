class Lesson {
  final String time;
  final String roomCode;
  final String title;

  Lesson({required this.time, required this.roomCode, required this.title});

  factory Lesson.fromJson(Map<String, dynamic> json) => Lesson(
        time: json['time'],
        roomCode: json['room_code'],
        title: json['title'],
      );
}

class Schedule {
  final int userId;
  final List<Lesson> lessons;

  Schedule({required this.userId, required this.lessons});

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        userId: json['user_id'],
        lessons: (json['lessons'] as List).map((e) => Lesson.fromJson(e)).toList(),
      );
}
