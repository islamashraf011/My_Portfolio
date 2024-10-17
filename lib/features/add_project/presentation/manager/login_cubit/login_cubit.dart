import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> loginProcess(
      {required String email, required String password}) async {
    emit(LoginLoadingState());
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(LoginSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(
          LoginFailureState(errMessage: 'user-not-found'),
        );
      } else if (e.code == 'wrong-password') {
        emit(
          LoginFailureState(errMessage: 'wrong-password'),
        );
      }
    } catch (e) {
      emit(
        LoginFailureState(errMessage: 'Unexpected error during sign-in'),
      );
    }
  }
}
