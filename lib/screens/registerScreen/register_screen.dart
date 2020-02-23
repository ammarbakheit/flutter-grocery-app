import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop_app/data/bloc/register/bloc.dart';
import 'package:flutter_shop_app/data/repositories/user_repository.dart';
import 'package:flutter_shop_app/utils/colors.dart';
import 'package:flutter_shop_app/widgets/register_form.dart';


class RegisterScreen extends StatelessWidget {
  final UserRepository _userRepository;

  RegisterScreen({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register', 
        style: TextStyle(
          color: blueColor
        ),),
        centerTitle: true,
        backgroundColor: whiteColor,
        elevation: 0.0,
        ),
      body: Center(
        child: BlocProvider<RegisterBloc>(
          create: (context) => RegisterBloc(userRepository: _userRepository),
          child: RegisterForm(),
        ),
      ),
    );
  }
}
