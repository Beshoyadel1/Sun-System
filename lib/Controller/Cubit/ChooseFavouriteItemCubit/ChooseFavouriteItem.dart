import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class FavouriteCubit extends Cubit<Set<String>> {
  FavouriteCubit() : super({});

  void toggleItem(String item) {
    final newSet = Set<String>.from(state);
    if (newSet.contains(item)) {
      newSet.remove(item);
    } else {
      newSet.add(item);
    }
    emit(newSet);
  }

  bool isSelected(String item) => state.contains(item);

  bool get canGoNext => state.length >= 3;
}
