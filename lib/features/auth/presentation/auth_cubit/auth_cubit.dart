import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  bool termsAndCondtionCheckBoxValue = false;
  bool? obscurePasswordTextValue = true;

  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailuerState(
            errMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailuerState(
            errMessage: 'The account already exists for that email'));
      }
    } catch (e) {
      print(e.toString());
      emit(SignUpFailuerState(errMessage: e.toString()));
    }
  }

  updateTermsAndCondtionCheckBox({required newValue}) {
    termsAndCondtionCheckBoxValue = newValue;
    emit(TermsAndCondtionUpdataState());
  }

  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }
}
