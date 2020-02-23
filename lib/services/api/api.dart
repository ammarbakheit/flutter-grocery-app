import 'package:flutter_shop_app/models/models.dart';

abstract class Api {
  Future<LoginResponse>   login(String username, String password);

  Future<User> getUser(int userId);

  Future<List<Grocery>> getGroceryForUser(int userId);

  
}