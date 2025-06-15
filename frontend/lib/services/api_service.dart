import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/room.dart';
import '../models/route.dart';

class ApiService {
  ApiService._();
  static final instance = ApiService._();

  static const baseUrl = 'http://localhost:8000/api/v1';

  Future<List<Room>> searchRooms(String q) async {
    final resp = await http.get(Uri.parse('$baseUrl/search?q=$q'));
    final data = jsonDecode(resp.body) as List;
    return data.map((e) => Room.fromJson(e)).toList();
  }

  Future<CampusRoute> getRoute(String from, String to) async {
    final resp = await http.get(Uri.parse('$baseUrl/route?from=$from&to=$to'));
    return CampusRoute.fromJson(jsonDecode(resp.body));
  }
}
