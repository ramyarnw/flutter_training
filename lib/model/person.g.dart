// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Person> _$personSerializer = new _$PersonSerializer();

class _$PersonSerializer implements StructuredSerializer<Person> {
  @override
  final Iterable<Type> types = const [Person, _$Person];
  @override
  final String wireName = 'Person';

  @override
  Iterable<Object?> serialize(Serializers serializers, Person object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'age',
      serializers.serialize(object.age, specifiedType: const FullType(int)),
      'hai',
      serializers.serialize(object.haiRetried,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Person deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PersonBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'hai':
          result.haiRetried = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Person extends Person {
  @override
  final String name;
  @override
  final int age;
  @override
  final bool haiRetried;

  factory _$Person([void Function(PersonBuilder)? updates]) =>
      (new PersonBuilder()..update(updates))._build();

  _$Person._({required this.name, required this.age, required this.haiRetried})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Person', 'name');
    BuiltValueNullFieldError.checkNotNull(age, r'Person', 'age');
    BuiltValueNullFieldError.checkNotNull(haiRetried, r'Person', 'haiRetried');
  }

  @override
  Person rebuild(void Function(PersonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonBuilder toBuilder() => new PersonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Person &&
        name == other.name &&
        age == other.age &&
        haiRetried == other.haiRetried;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, haiRetried.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Person')
          ..add('name', name)
          ..add('age', age)
          ..add('haiRetried', haiRetried))
        .toString();
  }
}

class PersonBuilder implements Builder<Person, PersonBuilder> {
  _$Person? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _age;
  int? get age => _$this._age;
  set age(int? age) => _$this._age = age;

  bool? _haiRetried;
  bool? get haiRetried => _$this._haiRetried;
  set haiRetried(bool? haiRetried) => _$this._haiRetried = haiRetried;

  PersonBuilder();

  PersonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _age = $v.age;
      _haiRetried = $v.haiRetried;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Person other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Person;
  }

  @override
  void update(void Function(PersonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Person build() => _build();

  _$Person _build() {
    final _$result = _$v ??
        new _$Person._(
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Person', 'name'),
            age: BuiltValueNullFieldError.checkNotNull(age, r'Person', 'age'),
            haiRetried: BuiltValueNullFieldError.checkNotNull(
                haiRetried, r'Person', 'haiRetried'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
