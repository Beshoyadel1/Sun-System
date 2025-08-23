// SignupCubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<bool> {
  SignupCubit() : super(false);

  void validateForm({
    required String username,
    required String phone,
    required String email,
    required String password,
    required String rePassword,
  }) {
    final isValid = username.isNotEmpty &&
        phone.isNotEmpty &&
        email.isNotEmpty &&
        password.isNotEmpty &&
        rePassword.isNotEmpty &&
        password == rePassword;

    if (state != isValid) {
      emit(isValid);
    }
  }
}
