import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);
  //TODO: function to navigate to actor screen needs to be passed in.

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? name; //The Actor's name from the TextFormField
  //TODO: updated via setState() method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Actor Search'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                //TODO: add TextFormField for actor name plus an ElevatedButton
                //TODO: button onPress will do the validation and save
                //TODO: validation needs to check that name field is not empty
                //TODO: saving will save the name in a state variable
                //TODO: then call a function passed in from main.dart to go to actor screen
                //TODO: the actor name must be passed to the actor screen so the API call can be made
              ],
            )),
      ),
    );
  }
}
