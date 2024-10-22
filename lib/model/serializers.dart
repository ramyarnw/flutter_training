library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'office.dart';
import 'person.dart';
import 'user.dart';
import 'user_address.dart';

//import 'api_error.dart';
//import 'app_state.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  Office,
  Person,
  User,
  UserAddress,
 // AppState,
  //ApiError,
])
final Serializers serializers =
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();