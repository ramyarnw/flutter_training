import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

import 'user_address.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder>{


  User._();
  factory User([void Function(UserBuilder) updates]) = _$User;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(User.serializer, this)! as Map<String, dynamic>;
  }

  static User fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(User.serializer, json)!;
  }

  static Serializer<User> get serializer => _$userSerializer;
  int get id;
  String get name;
  String get username;
  String get email;
  UserAddress get address;

}