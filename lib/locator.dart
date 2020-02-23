import 'package:flutter_shop_app/services/api/api.dart';
import 'package:flutter_shop_app/services/api/fake_api.dart';
import 'package:flutter_shop_app/services/api/http_api.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.asNewInstance();
const USE_FAKE_IMPLEMENTATION = true;

void setupLocator(){
  locator.registerLazySingleton<Api>(() => USE_FAKE_IMPLEMENTATION ? FakeApi() : HttpApi);
}