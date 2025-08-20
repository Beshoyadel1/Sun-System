// otp_cubit.dart
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system/Controller/Cubit/OtpCubit/OtpState.dart';


class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(OtpState.initial());

  Timer? _timer;

  void startTimer() {
    emit(state.copyWith(secondsRemaining: 60, canResend: false));

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.secondsRemaining == 0) {
        emit(state.copyWith(canResend: true));
        timer.cancel();
      } else {
        emit(state.copyWith(secondsRemaining: state.secondsRemaining - 1));
      }
    });
  }

  void dispose() {
    _timer?.cancel();
  }
}
