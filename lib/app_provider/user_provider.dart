import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../model/serializers.dart';

part 'user_provider.g.dart';

abstract class UserProvider implements Built<UserProvider, UserProviderBuilder> {
  factory UserProvider([void Function(UserProviderBuilder) updates]) = _$UserProvider;


  UserProvider._();

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(UserProvider.serializer, this)! as Map<String,dynamic>;
  }

  static UserProvider? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(UserProvider.serializer, json);
  }

  static Serializer<UserProvider> get serializer => _$userProviderSerializer;
  static void _initializeBuilder(UserProviderBuilder b){
    b..name='Ravi'..age=23;
  }

  String get name;
  int get age ;

}