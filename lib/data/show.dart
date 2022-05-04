//Custom data class for a "Show" Object
//could be a tv show or a movie

class Show {
  //TODO: add a property for each field we want an show to have
  // this data will come from the API call
  // should include a property that says if it is a movie or tv show.
  int id = 0;

  //constructor
  //TODO: add the required fields
  Show({required int id});

  //named constructor
  //TODO: accept the fields from the JSON Map
  Show.fromJSON(Map<String, dynamic> show) {
    id = show['id'] ?? 0;
  }
}
