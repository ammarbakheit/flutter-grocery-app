import 'package:flutter_shop_app/services/api/api.dart';
import 'package:flutter_shop_app/services/api/fake_api.dart';
import 'package:flutter_shop_app/services/api/http_api.dart';
import 'package:provider/provider.dart';

const bool USE_FAKE_IMPLEMENTATION  = true;

// List<SingleChildCloneableWidget> providers = [
//   ...independantServices,
//   ...dependantServices,
//   ...unConsumableProviders
// ];


// List<SingleChildCloneableWidget> independantServices = [
//   Provider<Api>.value(value: USE_FAKE_IMPLEMENTATION ? FakeApi() : HttpApi())
// ];
// List<SingleChildCloneableWidget> dependantServices = [];
// List<SingleChildCloneableWidget> unConsumableProviders = [];