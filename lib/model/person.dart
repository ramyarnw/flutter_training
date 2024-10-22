import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/foundation.dart';
import 'serializers.dart';

part 'person.g.dart';

abstract class Person implements Built<Person, PersonBuilder> {


  Person._();

  factory Person([void Function(PersonBuilder) updates]) = _$Person;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Person.serializer, this)! as Map<
        String,
        dynamic>;
  }

  static Person? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Person.serializer, json);
  }

  static Serializer<Person> get serializer => _$personSerializer;

  String get name;

  int get age;

  @BuiltValueField(wireName: 'hai', serialize: true)
  bool get haiRetried;

}
  // Person  person =  Person((b) => b   //initialize
  //   ..name = 'ram'
  //   ..age = '20' as int?
  //   ..haiRetried = false);

  // person = person.rebuild((b) => b.name = "siva");     //update





