// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'office.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Office> _$officeSerializer = new _$OfficeSerializer();

class _$OfficeSerializer implements StructuredSerializer<Office> {
  @override
  final Iterable<Type> types = const [Office, _$Office];
  @override
  final String wireName = 'Office';

  @override
  Iterable<Object?> serialize(Serializers serializers, Office object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'age',
      serializers.serialize(object.age, specifiedType: const FullType(int)),
      'is',
      serializers.serialize(object.isRetired,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Office deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OfficeBuilder();

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
        case 'is':
          result.isRetired = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Office extends Office {
  @override
  final String name;
  @override
  final int age;
  @override
  final bool isRetired;

  factory _$Office([void Function(OfficeBuilder)? updates]) =>
      (new OfficeBuilder()..update(updates))._build();

  _$Office._({required this.name, required this.age, required this.isRetired})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Office', 'name');
    BuiltValueNullFieldError.checkNotNull(age, r'Office', 'age');
    BuiltValueNullFieldError.checkNotNull(isRetired, r'Office', 'isRetired');
  }

  @override
  Office rebuild(void Function(OfficeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OfficeBuilder toBuilder() => new OfficeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Office &&
        name == other.name &&
        age == other.age &&
        isRetired == other.isRetired;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, isRetired.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Office')
          ..add('name', name)
          ..add('age', age)
          ..add('isRetired', isRetired))
        .toString();
  }
}

class OfficeBuilder implements Builder<Office, OfficeBuilder> {
  _$Office? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _age;
  int? get age => _$this._age;
  set age(int? age) => _$this._age = age;

  bool? _isRetired;
  bool? get isRetired => _$this._isRetired;
  set isRetired(bool? isRetired) => _$this._isRetired = isRetired;

  OfficeBuilder();

  OfficeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _age = $v.age;
      _isRetired = $v.isRetired;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Office other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Office;
  }

  @override
  void update(void Function(OfficeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Office build() => _build();

  _$Office _build() {
    final _$result = _$v ??
        new _$Office._(
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Office', 'name'),
            age: BuiltValueNullFieldError.checkNotNull(age, r'Office', 'age'),
            isRetired: BuiltValueNullFieldError.checkNotNull(
                isRetired, r'Office', 'isRetired'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
