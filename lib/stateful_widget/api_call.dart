import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/user.dart';
import '../model/user_address.dart';

extension on String {   //extension method
  Uri toUri() => Uri.parse(this);
}
// get read =>read<Counter>();
// read// /*extension on String {
//   String defaultHeader() => headers;
// }*/



class ApiCall {
  Future<User> fetchUser() async {
    final http.Response response =
        await http.get('https://jsonplaceholder.typicode.com/users/1'.toUri());
//convert http response to album class
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    }
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load User');
  }

  Future<void> deleteUser(int id) async {
    final http.Response response = await http.delete(
      'https://jsonplaceholder.typicode.com/user/$id'.toUri(),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      return;
    }
    throw Exception('Failed to delete User');
  }

  Future<void> createUser() {
    final User user = User(
      (UserBuilder b) => b //initialize
        ..id = 1
        ..name = 'ram'
        ..username = 'ramya'
        ..email = 'ramya@gmail.com'
        ..address = UserAddress(
          (UserAddressBuilder a) => a
            ..city = 'aram'
            ..street = 'aram street'
            ..pincode = 123456,
        ).toBuilder(),
    );
    return http.post(
      'https://jsonplaceholder.typicode.com/user'.toUri(),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(user),
    );
  }

  Future<http.Response> updateUser(String title) async {
    User user = await fetchUser();
    user = user.rebuild((UserBuilder c) => c.name = 'siva');

    return http.put(
      'https://jsonplaceholder.typicode.com/user/1'.toUri(),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(user),
    );
  }
}
