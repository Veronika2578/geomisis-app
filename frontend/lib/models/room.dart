class Room {
  final int id;
  final String code;
  final String building;
  final int floor;
  final String name;

  Room({required this.id, required this.code, required this.building, required this.floor, required this.name});

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        id: json['id'],
        code: json['code'],
        building: json['building'],
        floor: json['floor'],
        name: json['name'],
      );
}
