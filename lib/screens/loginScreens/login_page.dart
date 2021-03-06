import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop_app/data/bloc/login/login_bloc.dart';
import 'package:flutter_shop_app/data/repositories/user_repository.dart';
import 'package:flutter_shop_app/utils/colors.dart';
import 'package:flutter_shop_app/widgets/login_form.dart';


class LoginScreen extends StatelessWidget {
  final UserRepository _userRepository;

  LoginScreen({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login', 
        style: TextStyle(
          color: blueColor
        ),),
        centerTitle: true,
        backgroundColor: whiteColor,
        elevation: 0.0,
        ),
      body: BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(userRepository: _userRepository),
        child: Container(
          child: LoginForm(userRepository: _userRepository)),
      ),
    );
  }
}
