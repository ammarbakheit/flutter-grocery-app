import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop_app/data/bloc/auth/authentication_bloc.dart';
import 'package:flutter_shop_app/data/bloc/auth/bloc.dart';
import 'package:flutter_shop_app/utils/colors.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
    final String name;

  MainPage({Key key, @required this.name}) : super(key: key);
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
      body:  HomePage(name: widget.name)
    );
  }
}
