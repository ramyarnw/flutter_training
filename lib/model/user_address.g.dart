// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserAddress> _$userAddressSerializer = new _$UserAddressSerializer();

class _$UserAddressSerializer implements StructuredSerializer<UserAddress> {
  @override
  final Iterable<Type> types = const [UserAddress, _$UserAddress];
  @override
  final String wireName = 'UserAddress';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserAddress object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'street',
      serializers.serialize(object.street,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pincode;
    if (value != null) {
      result
        ..add('pincode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  UserAddress deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserAddressBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pincode':
          result.pincode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserAddress extends UserAddress {
  @override
  final String street;
  @override
  final String city;
  @override
  final int? pincode;

  factory _$UserAddress([void Function(UserAddressBuilder)? updates]) =>
      (new UserAddressBuilder()..update(updates))._build();

  _$UserAddress._({required this.street, required this.city, this.pincode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(street, r'UserAddress', 'street');
    BuiltValueNullFieldError.checkNotNull(city, r'UserAddress', 'city');
  }

  @override
  UserAddress rebuild(void Function(UserAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserAddressBuilder toBuilder() => new UserAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserAddress &&
        street == other.street &&
        city == other.city &&
        pincode == other.pincode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, street.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, pincode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserAddress')
          ..add('street', street)
          ..add('city', city)
          ..add('pincode', pincode))
        .toString();
  }
}

class UserAddressBuilder implements Builder<UserAddress, UserAddressBuilder> {
  _$UserAddress? _$v;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  int? _pincode;
  int? get pincode => _$this._pincode;
  set pincode(int? pincode) => _$this._pincode = pincode;

  UserAddressBuilder();

  UserAddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _street = $v.street;
      _city = $v.city;
      _pincode = $v.pincode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserAddress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserAddress;
  }

  @override
  void update(void Function(UserAddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserAddress build() => _build();

  _$UserAddress _build() {
    final _$result = _$v ??
        new _$UserAddress._(
            street: BuiltValueNullFieldError.checkNotNull(
                street, r'UserAddress', 'street'),
            city: BuiltValueNullFieldError.checkNotNull(
                city, r'UserAddress', 'city'),
            pincode: pincode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
