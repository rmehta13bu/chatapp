// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports

class PageRouteNames {
  static const String login = '/login';
  static const String home = '/home_page';
  static const String call = '/call';
  static const String prebuilt_call = '/prebuilt_call';
  static const String prebuilt_call_doc = '/prebuilt_call_doc';
  static const String register = '/register';
  static const String signin = '/signin';
}

class PageParam {
  static const String localUserID = 'local_user_id';
  static const String call_id = 'call_id';
  static const String isDoc = 'y';
}

/// Note that the userID needs to be globally unique,
final String localUserID = Random().nextInt(10000).toString();

const TextStyle textStyle = TextStyle(
  color: Colors.black,
  fontSize: 13.0,
  decoration: TextDecoration.none,
);


class UserInfo {
  String id = '';
  String name = '';

  UserInfo({
    required this.id,
    required this.name,
  });

  bool get isEmpty => id.isEmpty;

  UserInfo.empty();
}

UserInfo currentUser = UserInfo.empty();
const String cacheUserIDKey = 'cache_user_id_key';
