import 'dart:developer';

import 'package:flutter_hooks_demo/examples/future_example/user_model.dart';

class ApiRepository {
  Future<List<UserModel>> getData() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      UserModel(name: 'Cavin', age: 22),
      UserModel(name: 'Milan', age: 23),
      UserModel(name: 'Pratik', age: 24),
      UserModel(name: 'Mukund', age: 25),
    ];
  }
}
