# flutter_actor_search

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

Read through all the `.dart` files inside the `Lib` folder looking for `TODO:` comments. These tell you all the parts that you are missing. Also check the `pubspec.yaml` file for `TODO:` notes.

## General Requirements

You are building the same type of app as you did for the PWA except that this Flutter App needs a network connection to work. It is not an offline first style app. You must use your own API key for TMDB API. It can be the same key as you used in the PWA.

The home page is a search form that lets users search for their favourite actors.

Submitting the search form will take the user to an actor screen where the API call is made and the results are shown as a ListView with ListTile widgets. Each ListTile has an icon button on the right side to take the user to the show screen. The list of people must be filtered to only show actors, not crew.

The show screen will accept the person id from the selected ListTile on the actor screen and do an API call for the movies and tv shows that the actor appeared in.

You will need to add images that can be used when the images from the API are null.

You will need to create your own theme to use in the app.

## Submission

Create your own private GitHub repo using the starter code.

Invite `prof3ssorSt3v3` to your repo.
