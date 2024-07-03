import 'package:equatable/equatable.dart';

///---------------------------AUTH STATE-------------------------------
abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthInitialState extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthLoadingState extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthErrorState extends AuthState {
  final String msg;

  const AuthErrorState(this.msg);

  @override
  List<Object> get props => [];
}

class AuthSuccessState extends AuthState {
  final String msg;

  const AuthSuccessState(this.msg);

  @override
  List<Object> get props => [msg];
}

class AuthInvalidUserState extends AuthState {
  final String msg;

  const AuthInvalidUserState(this.msg);

  @override
  List<Object> get props => [msg];
}

class AuthConnectionTimeoutState extends AuthState {
  final String msg;

  const AuthConnectionTimeoutState(this.msg);

  @override
  List<Object> get props => [msg];
}

class AuthNoInternetState extends AuthState {
  final String msg;

  const AuthNoInternetState(this.msg);

  @override
  List<Object> get props => [msg];
}

class GetLogoutInitialState extends AuthState {
  @override
  List<Object> get props => [];
}

class GetLogoutLoadingState extends AuthState {
  @override
  List<Object> get props => [];
}

class GetLogoutSuccessState extends AuthState {
  final List<dynamic> data;

  const GetLogoutSuccessState(this.data);

  @override
  List<Object> get props => [data];
}

class GetLogoutErrorState extends AuthState {
  final String msg;

  const GetLogoutErrorState(this.msg);

  @override
  List<Object> get props => [msg];
}

class GetLogoutLogoutState extends AuthState {
  final String msg;

  const GetLogoutLogoutState(this.msg);

  @override
  List<Object> get props => [msg];
}

class GetLogoutInvalidUserState extends AuthState {
  final String msg;

  const GetLogoutInvalidUserState(this.msg);

  @override
  List<Object> get props => [msg];
}

class GetLogoutTimeoutState extends AuthState {
  final String msg;

  const GetLogoutTimeoutState(this.msg);

  @override
  List<Object> get props => [msg];
}