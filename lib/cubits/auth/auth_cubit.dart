import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:cleanly_cleaner/exceptions/http_res_error_exception.dart';
import 'package:cleanly_cleaner/exceptions/http_res_logout_exception.dart';
import 'package:cleanly_cleaner/exceptions/http_res_timeout_exception.dart';
import 'package:cleanly_cleaner/repositories/auth_repo.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo authRepo;

  AuthCubit(this.authRepo) : super(AuthInitialState());

  void login({required String username, required String password}) async {
    try {
      emit(AuthLoadingState());
      Map<String, dynamic> params = <String, dynamic>{};
      params["email"] = username;
      params["password"] = password;

      String data = await authRepo.authenticate(params);
      //saveUserToLocal(data);
      emit(AuthSuccessState(data));
    } catch (e) {
      if (e is HTTPResErrorException) {
        print(e.message + "-------res---------------------------");
        emit(AuthErrorState(e.message));
      } else if (e is HTTPResLogoutException) {
        emit(AuthErrorState(e.message));
      } else if (e is HTTPResTimeoutException) {
        emit(AuthConnectionTimeoutState(e.message));
      } else if (e is SocketException) {
        emit(AuthNoInternetState(e.message));
      } else {
        emit(AuthErrorState(e.toString()));
      }
    }
  }

  void getLogout() async {
    try {
      emit(GetLogoutLoadingState());
      List<dynamic> msg = await authRepo.getLogout();
      emit(GetLogoutSuccessState(msg));
    } catch (e) {
      if (e is HTTPResErrorException) {
        emit(GetLogoutErrorState(e.message));
      } else if (e is HTTPResLogoutException) {
        emit(GetLogoutLogoutState(e.message));
      } else if (e is HTTPResTimeoutException) {
        emit(GetLogoutTimeoutState(e.message));
      } else if (e is SocketException) {
        emit(GetLogoutErrorState(e.message));
      } else {
        emit(GetLogoutErrorState(e.toString()));
      }
    }
  }
}
