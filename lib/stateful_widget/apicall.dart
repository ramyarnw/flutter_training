import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../model/user.dart';
import '../model/user_address.dart';

class ApiCall {
  Future<User> fetchUser() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));
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
      Uri.parse('https://jsonplaceholder.typicode.com/user/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200)
      return;
    throw Exception('Failed to delete User');

  }

  Future<http.Response> createUser(String title) {
    User user =  User((b) => b   //initialize
      ..id =1
      ..name = 'ram'
      ..username ='ramya'
      ..email = 'ramya@gmail.com'
      ..address=UserAddress((a)=>a..city='aram'..street='aram street'..pincode=123456).toBuilder(),
    );
    return http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/user'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(user

      ),
    );
  }

  Future<http.Response> updateUser(String title) async{
     var user= await fetchUser();
    user = user.rebuild((c) => c.name = "siva");

    return http.put(
      Uri.parse('https://jsonplaceholder.typicode.com/user/1'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(user),
    );
  }

}