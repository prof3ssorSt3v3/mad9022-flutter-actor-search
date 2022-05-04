import 'package:flutter/material.dart';

// IMGBASE: 'https://image.tmdb.org/t/p',
// TODO: use the NetworkImage to load images from the API
// TODO: use Scrollable area filled with Card widgets to show the matching shows
// TODO: shows can be movies or tv shows
// TODO: movies and tv shows have different property names
// TODO: for each card show the backdrop_path image, movie title/show name, character
//       name, release_date/first_air_date
// TODO: Search icon button in AppBar will take the user back to the search screen
// TODO: use a navigation function passed into this screen from main.dart to go to search screen

class ShowScreen extends StatefulWidget {
  const ShowScreen({Key? key}) : super(key: key);

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
