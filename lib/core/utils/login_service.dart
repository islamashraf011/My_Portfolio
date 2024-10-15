import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/show_snack_bar_widget.dart';

Future<void> loginProcess({
  required BuildContext context,
  final String? email,
  final String? password,
}) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email!,
      password: password!,
    );

    if (context.mounted) {
      showSnackBar(context, 'Successful');
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found' && context.mounted) {
      showSnackBar(
        context,
        'No user found for that email.',
      );
    } else if (e.code == 'wrong-password' && context.mounted) {
      showSnackBar(
        context,
        'Wrong password provided for that user.',
      );
    } else if (context.mounted) {
      showSnackBar(
        context,
        'Unexpected error during sign-in',
      );
    }
  }
}
