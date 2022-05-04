import 'package:flutter/material.dart';
import './screens/search_screen.dart'; //home page
import './screens/actor_screen.dart'; //actor page
import './screens/show_screen.dart'; //show page

enum Screen { SEARCH, ACTOR, SHOW }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MainScreenContainer();
  }
}

class MainScreenContainer extends StatefulWidget {
  const MainScreenContainer({Key? key}) : super(key: key);

  @override
  State<MainScreenContainer> createState() => _MainScreenContainerState();
}

class _MainScreenContainerState extends State<MainScreenContainer> {
  Enum currentScreen = Screen.SEARCH;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: MyTheme(),
      // TODO: Add Custom Theme See Course website 13.2 for notes on Themes
      home: loadScreen(currentScreen),
    );
  }

  Widget loadScreen(Enum screen) {
    switch (screen) {
      case Screen.SEARCH:
        return SearchScreen();
        break;
      case Screen.ACTOR:
        return ActorScreen();
        //TODO: pass in functions for navigating to search and shows
        //TODO: pass in the name to search for
        break;
      case Screen.SHOW:
        return ShowScreen();
        //TODO: pass in function for navigating to search screen
        //TODO: pass in the function to go BACK to actors screen
        //TODO: pass in person id
        //TODO: pass in the actor name
        break;
      default:
        //should not happen
        return SearchScreen();
    }
  }

//TODO: make function for navigating to actors screen (needs name). setState for currentScreen
//TODO: make function for navigating to shows screen (needs person id). setState for currentScreen
//TODO: make function for navigating to the search screen. setState for currentScreen
}
