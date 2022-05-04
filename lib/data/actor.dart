//TODO: create a custom data class that represents an actor object

class Actor {
  //TODO: add a property for each field we want an actor to have
  // this data will come from the API call
  int id = 0;

  //constructor
  //TODO: add the required fields
  Actor({required int id});

  //named constructor
  //TODO: accept the fields from the JSON Map
  Actor.fromJSON(Map<String, dynamic> actor) {
    id = actor['id'] ?? 0;
  }
}
