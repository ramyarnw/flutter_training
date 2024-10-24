

import 'dart:convert';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:http/http.dart';
import 'package:state_notifier/state_notifier.dart';

import 'user_provider.dart';

class Counter extends StateNotifier<UserProvider> {
  Counter() : super(UserProvider());

  void increment() {
    state=state.rebuild((b)=>b.name='Shra');
  }

  void decrement() {
    state=state.rebuild((b)=>b.name='Ramya');

  }
}

