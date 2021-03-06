import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop_app/screens/loginScreens/login_page.dart';
import 'package:flutter_shop_app/screens/mainScreens/main_page.dart';
import 'package:flutter_shop_app/screens/mainScreens/splash_screen.dart';
import 'package:flutter_shop_app/screens/productScreen/cart.dart';
import 'package:flutter_shop_app/screens/productScreen/product.dart';
import 'package:flutter_shop_app/services/api/api.dart';
import 'package:flutter_shop_app/utils/simple_bloc_delegate.dart';
import 'package:flutter_shop_app/widgets/sidebar.dart';
import 'data/bloc/auth/authentication_bloc.dart';
import 'data/repositories/user_repository.dart';
import 'locator.dart';

void main() {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
   BlocSupervisor.delegate = SimpleBlocDelegate();
  final UserRepository userRepository = UserRepository();
  runApp(
    BlocProvider(
      create: (context) => AuthenticationBloc(userRepository: userRepository)
        ..add(AppStarted()),
      child: App(userRepository: userRepository),
    ),
  );
}

class App extends StatelessWidget {
  final UserRepository _userRepository;

  App({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
  var api = locator<Api>();
  
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Shop App',
      routes: <String, WidgetBuilder> {
        "/main": (BuildContext context) =>BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder:  (context, state) { 
            if (state is Authenticated) {
            return MainPage(name: state.displayName);
          } 
           },
        )   ,
        "/product": (BuildContext context) => Product(),
        "/cart": (BuildContext context) => Cart(),
        "/sidebar": (BuildContext context) => SideBar(),
      },
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
         if (state is Uninitialized) {
            return SplashScreenWidget();
          }
          if (state is Unauthenticated) {
            return LoginScreen(userRepository: _userRepository);
          }
          if (state is Authenticated) {
            return MainPage(name: state.displayName);
          }
        }
    ));
  }
}













