import 'package:flutter/material.dart';
import 'package:flutter_movie_project/providers/movie_data_provider.dart';
import 'package:flutter_movie_project/widgets/grid_category_list.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  bool isSearched = false;
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Movie'),
        centerTitle: true,
      ),
      body: Consumer<MovieDataProvider>(
        builder: (context, provider, child) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  labelText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onSubmitted: (value) {
                  setState(() {
                    isSearched = true;
                  });
                  provider.getAllMoviesByName(value);
                },
              ),
            ),
            if (isSearched)
              const Expanded(
                flex: 2,
                child: GridCategoryList(),
              ),
          ],
        ),
      ),
    );
  }
}
