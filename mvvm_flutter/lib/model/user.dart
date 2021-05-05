import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  String id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory User.createUser(Map<String, dynamic> object) {
    return User(
      id: object["id"].toString(),
      email: object["email"],
      firstName: object["fisrt_name"],
      lastName: object["last_name"],
      avatar: object["avatar"],
    );
  }

  static Future<User> getUserFromAPI(int id) async {
    String apiURL = "https://reqres.in/api/users/" + id.toString();

    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  }
}

class UninitializedUser extends User {}
