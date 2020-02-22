part of 'authentication_bloc.dart';


abstract class AuthenticationState extends Equatable {
  AuthenticationState();

  @override
  List<Object> get props => [];
}

class Uninitialized extends AuthenticationState {}

class Authenticated extends AuthenticationState {
  final String displayName;

 Authenticated(this.displayName);

  @override
  List<Object> get props => [displayName];

  @override
  String toString() => 'Authenticated { displayName: $displayName }';
}

class Unauthenticated extends AuthenticationState {}
