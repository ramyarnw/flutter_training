import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_training/model/serializers.dart';

part 'person.g.dart';

abstract class Person implements Built<Person, PersonBuilder> {


  Person._();
  factory Person([void Function(PersonBuilder) updates]) = _$Person;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Person.serializer, this);
  }

  static Person fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Person.serializer, json);
  }

  static Serializer<Person> get serializer => _$personSerializer;


}

