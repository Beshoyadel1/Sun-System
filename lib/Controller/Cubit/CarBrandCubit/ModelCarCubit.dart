import 'package:flutter_bloc/flutter_bloc.dart';

class ModelCarCubit extends Cubit<int> {
  ModelCarCubit() : super(0);

  void changeIndex(int index) => emit(index);
}
