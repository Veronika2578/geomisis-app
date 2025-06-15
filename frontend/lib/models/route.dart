class CampusRoute {
  final String startCode;
  final String endCode;
  final List<String> points;

  CampusRoute({required this.startCode, required this.endCode, required this.points});

  factory CampusRoute.fromJson(Map<String, dynamic> json) => CampusRoute(
        startCode: json['start_code'],
        endCode: json['end_code'],
        points: List<String>.from(json['points']),
      );
}
