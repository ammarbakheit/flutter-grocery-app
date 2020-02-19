import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop_app/data/bloc/auth/bloc.dart';
import 'package:flutter_shop_app/screens/home_page.dart';
import 'package:flutter_shop_app/utils/colors.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final AuthenticationBloc authenticationBloc =
        BlocProvider.of<AuthenticationBloc>(context);
    return Scaffold(
      backgroundColor: whiteColor,
      body:  HomePage()
    );
  }
}
