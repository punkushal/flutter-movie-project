import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_movie_project/models/search_movie.dart';
import 'package:http/http.dart' as http;

class MovieDataProvider with ChangeNotifier {
  final List<SearchMovie> _allMovies = [];
  List<SearchMovie> get allMovies => _allMovies;

  final baseUri = Uri.parse('https://www.omdbapi.com/');

  Future<void> getAllMoviesByName(String title) async {
    try {
      // _allMovies.clear();
      final uri = Uri.https(baseUri.authority, baseUri.path, {
        'apiKey': '2eae2219',
        's': title,
      });
      final response = await http.get(uri);
      final dataList = jsonDecode(response.body);
      for (var data in dataList['Search']) {
        _allMovies.add(
          SearchMovie.fromJson(
            data,
          ),
        );
      }
      notifyListeners();
    } catch (error) {
      throw Exception('Failed to load recipes');
    }
  }
}
