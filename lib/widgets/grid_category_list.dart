import 'package:flutter/material.dart';
import 'package:flutter_movie_project/providers/movie_data_provider.dart';
import 'package:flutter_movie_project/widgets/grid_item.dart';
import 'package:provider/provider.dart';

class GridCategoryList extends StatefulWidget {
  const GridCategoryList({super.key});

  @override
  State<GridCategoryList> createState() => _GridCategoryListState();
}

class _GridCategoryListState extends State<GridCategoryList> {
  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: CircularProgressIndicator(),
    );

    return Consumer<MovieDataProvider>(builder: (context, provider, child) {
      final movie = provider.allMovies;
      if (movie.isNotEmpty) {
        content = GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: movie.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
          itemBuilder: (ctx, index) => GridItem(
            movie: movie[index],
          ),
        );
      }
      return content;
    });
  }
}
