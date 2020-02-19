import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop_app/screens/cart.dart';
import 'package:flutter_shop_app/screens/login_page.dart';
import 'package:flutter_shop_app/screens/mainScreens/main_page.dart';
import 'package:flutter_shop_app/screens/mainScreens/splash_screen.dart';

import 'package:flutter_shop_app/screens/product.dart';
import 'package:flutter_shop_app/widgets/loading_indicator.dart';
import 'package:flutter_shop_app/widgets/sidebar.dart';

import 'data/bloc/auth/authentication_bloc.dart';
import 'data/bloc/auth/authentication_event.dart';
import 'data/bloc/auth/authentication_state.dart';
import 'data/repositories/user_repository.dart';

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print(error);
  }
}

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final userRepository = UserRepository();
  runApp(
    BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc(userRepository: userRepository)
          ..add(AppStarted());
      },
      child: MyApp(userRepository: userRepository),
    ),
  );
}


class MyApp extends StatelessWidget {
    final UserRepository userRepository;

  const MyApp({Key key, this.userRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Shop App',
      routes: <String, WidgetBuilder> {
        "/main": (BuildContext context) => MainPage(),
        "/product": (BuildContext context) => Product(),
        "/cart": (BuildContext context) => Cart(),
        "/sidebar": (BuildContext context) => SideBar(),
      },
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationUninitialized) {
            return SplashScreenWidget();
          }
          if (state is AuthenticationAuthenticated) {
            return MainPage();
          }
          if (state is AuthenticationUnauthenticated) {
            return LoginPage(userRepository: userRepository);
          }
          if (state is AuthenticationLoading) {
            return LoadingIndicator();
          }
        },
      ),
    );
  }


}
