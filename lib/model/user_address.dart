import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'user_address.g.dart';

abstract class UserAddress implements Built<UserAddress, UserAddressBuilder> {
  factory UserAddress([void Function(UserAddressBuilder) updates]) = _$UserAddress;


  UserAddress._();

  Map<String, int>? toJson() {
    return serializers.serializeWith(UserAddress.serializer, this)! as Map<String,int>;
  }

  static UserAddress? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(UserAddress.serializer, json);
  }

  static Serializer<UserAddress> get serializer => _$userAddressSerializer;
  String get street;
  String get city;
  int? get pincode;
}
