import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/room.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _controller = TextEditingController();
  List<Room> _results = [];

  Future<void> _search() async {
    final rooms = await ApiService.instance.searchRooms(_controller.text);
    setState(() => _results = rooms);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Поиск')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(hintText: 'Введите аудиторию'),
                  ),
                ),
                IconButton(onPressed: _search, icon: const Icon(Icons.search)),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _results.length,
              itemBuilder: (context, index) {
                final room = _results[index];
                return ListTile(
                  title: Text(room.code),
                  subtitle: Text(room.name),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
