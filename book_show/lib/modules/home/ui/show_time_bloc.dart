import 'package:flutter_bloc/flutter_bloc.dart';

class ShowTimeBloc extends Cubit<int> {
  ShowTimeBloc() : super(-1);

  void select(int index) => emit(index);
}
