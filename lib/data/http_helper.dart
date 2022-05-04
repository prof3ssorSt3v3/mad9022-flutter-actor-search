import 'package:http/http.dart' as http;
import 'dart:async'; //for Future
import 'dart:convert'; //for JSON to Map conversion
import './actor.dart';
import './show.dart';

class HttpHelper {
  // This class is used to make all the API calls
  String domain = 'api.themoviedb.org';
  String actorEndPoint = '3/search/person';
  String showEndPoint = '3/person/{person_id}/combined_credits';
  final String APIKEY = ''; // TODO: add your own APIKEY

  // API uses queryString to pass the keyword for searching for actors
  // and the person id to search for shows
  // always uses the api_key in the queryString

  HttpHelper();

  Future<String> findActors(String keyword) async {
    //we could create our own custom object in the Future
    //returns the token
    Map<String, dynamic> params = {
      'query': keyword,
      'api_key': APIKEY,
    };
    Uri uri = Uri.https(domain, actorEndPoint, params); //Uri in dart:core

    http.Response response = await http.get(uri); //http get request

    Map<String, dynamic> resp = jsonDecode(response.body);
    //convert the json String in the response body into a Map object with String keys.

    if (resp['results'] != null) {
      //TODO: convert the list to a List of Actor objects
      //return the Array/List of results from the API call
      return resp['results'];
    } else {
      //Throw an error due to failure
      String msg = '${resp['errors'][0]['code']} ${resp['errors'][0]['title']}';
      throw Exception(msg);
    }
  }

  //TODO: add a method for searching for shows for an actor based on person id
  //TODO: be sure to convert the List from Map to Show objects, using the Show class
}
