import 'package:flutter_shop_app/models/models.dart';
import 'package:flutter_shop_app/services/api/api.dart';

class HttpApi implements Api {
  @override
  Future<List<Grocery>> getGroceryForUser(int userId) {
    // TODO: implement getGroceryForUser
    return null;
  }

  @override
  Future<User> getUser(int userId) {
    // TODO: implement getUser
    return null;
  }

  @override
  Future<LoginResponse> login(String username, String password) {
    // TODO: implement login
    return null;
  }

}