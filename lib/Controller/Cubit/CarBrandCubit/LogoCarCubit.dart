import 'package:flutter_bloc/flutter_bloc.dart';

class LogoCarCubit extends Cubit<int> {
  LogoCarCubit() : super(0);

  void changeIndex(int index) => emit(index);
}
