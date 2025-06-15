import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/api_service.dart';

final apiProvider = Provider<ApiService>((ref) => ApiService.instance);
