import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/route.dart';

class RouteScreen extends StatefulWidget {
  const RouteScreen({super.key});

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  final _fromController = TextEditingController();
  final _toController = TextEditingController();
  CampusRoute? _route;

  Future<void> _buildRoute() async {
    final route = await ApiService.instance.getRoute(_fromController.text, _toController.text);
    setState(() => _route = route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Маршрут')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(controller: _fromController, decoration: const InputDecoration(labelText: 'Откуда')),
            TextField(controller: _toController, decoration: const InputDecoration(labelText: 'Куда')),
            ElevatedButton(onPressed: _buildRoute, child: const Text('Построить')),
            if (_route != null)
              Expanded(
                child: ListView(
                  children: _route!.points.map((e) => ListTile(title: Text(e))).toList(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
