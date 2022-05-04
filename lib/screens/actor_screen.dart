import 'package:flutter/material.dart';

// IMGBASE: 'https://image.tmdb.org/t/p',
// TODO: use NetworkImage to load images from the API
// TODO: pass keyword to this screen when it loads
// TODO: inside @initState make the API call to get the matching actors (only actors not crew)
// TODO: display results of Actors with a ListView and ListTiles
// TODO: show actor image, actor name, first known_for credit, and iconButton to go to the show screen
// TODO: navigating to the show screen is done by calling a method from main.dart that is passed in
// TODO: The person id of the tapped tile must get passed back to the navigation method from main.dart
// TODO: Search icon button in AppBar will take the user back to the search screen
// TODO: use a navigation function passed into this screen from main.dart to go to search screen

class ActorScreen extends StatefulWidget {
  const ActorScreen({Key? key}) : super(key: key);

  @override
  State<ActorScreen> createState() => _ActorScreenState();
}

class _ActorScreenState extends State<ActorScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
