library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'office.dart';

//import 'api_error.dart';
//import 'app_state.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  Office,
 // AppState,
  //ApiError,
])
final Serializers serializers =
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();