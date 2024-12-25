import 'package:flutter/material.dart';
import 'package:flutter_movie_project/models/search_movie.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.movie});
  final SearchMovie movie;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Image.network(
            movie.poster,
            width: double.infinity,
            height: 280,
          ),
          // Positioned(
          //   left: 0,
          //   right: 0,
          //   bottom: 0,
          //   child: Container(
          //     alignment: Alignment.center,
          //     color: Colors.black54,
          //     child: Text(
          //       movie.title,
          //       style: const TextStyle(color: Colors.white),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
