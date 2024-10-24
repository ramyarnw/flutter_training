// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserProvider> _$userProviderSerializer =
    new _$UserProviderSerializer();

class _$UserProviderSerializer implements StructuredSerializer<UserProvider> {
  @override
  final Iterable<Type> types = const [UserProvider, _$UserProvider];
  @override
  final String wireName = 'UserProvider';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserProvider object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'age',
      serializers.serialize(object.age, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  UserProvider deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserProviderBuilder();

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
      }
    }

    return result.build();
  }
}

class _$UserProvider extends UserProvider {
  @override
  final String name;
  @override
  final int age;

  factory _$UserProvider([void Function(UserProviderBuilder)? updates]) =>
      (new UserProviderBuilder()..update(updates))._build();

  _$UserProvider._({required this.name, required this.age}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'UserProvider', 'name');
    BuiltValueNullFieldError.checkNotNull(age, r'UserProvider', 'age');
  }

  @override
  UserProvider rebuild(void Function(UserProviderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProviderBuilder toBuilder() => new UserProviderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProvider && name == other.name && age == other.age;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserProvider')
          ..add('name', name)
          ..add('age', age))
        .toString();
  }
}

class UserProviderBuilder
    implements Builder<UserProvider, UserProviderBuilder> {
  _$UserProvider? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _age;
  int? get age => _$this._age;
  set age(int? age) => _$this._age = age;

  UserProviderBuilder() {
    UserProvider._initializeBuilder(this);
  }

  UserProviderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _age = $v.age;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProvider other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserProvider;
  }

  @override
  void update(void Function(UserProviderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProvider build() => _build();

  _$UserProvider _build() {
    final _$result = _$v ??
        new _$UserProvider._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'UserProvider', 'name'),
            age: BuiltValueNullFieldError.checkNotNull(
                age, r'UserProvider', 'age'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
