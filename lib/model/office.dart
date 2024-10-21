import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_training/model/serializers.dart';
part 'office.g.dart';
abstract class Office implements Built<Office,OfficeBuilder> {
  Office._();

  factory Office([void Function(OfficeBuilder) updates]) = _$Office;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Office.serializer, this)! as Map<String,dynamic>;
  }

  static Office fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Office.serializer, json)!;
  }
  static Serializer<Office> get serializer => _$officeSerializer;

  String get name;

  int get age;

  @BuiltValueField(wireName: 'is', serialize:true)
  bool get isRetired;
}

