import 'dart:async';

import 'package:flutter_shop_app/data/bloc/auth/authentication_bloc.dart';
import 'package:flutter_shop_app/data/bloc/auth/authentication_event.dart';
import 'package:flutter_shop_app/data/bloc/login/bloc.dart';
import 'package:flutter_shop_app/data/repositories/user_repository.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;

  LoginBloc({
    @required this.userRepository,
    @required this.authenticationBloc,
  })  : assert(userRepository != null),
        assert(authenticationBloc != null);

  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield LoginLoading();

      try {
        final token = await userRepository.authenticate(
          username: event.username,
          password: event.password,
        );

        authenticationBloc.add(LoggedIn(token: token));
        yield LoginInitial();
      } catch (error) {
        yield LoginFailure(error: error.toString());
      }
    }
  }
}
