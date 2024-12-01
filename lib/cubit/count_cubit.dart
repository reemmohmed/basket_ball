import 'package:basket_ball/cubit/count_stat.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountCubit extends Cubit<CounterState> {
  CountCubit() : super(CountAIncreamentstate());

  int teamApoint = 0;
  int teamBpoint = 0;

  void TeamIncreament({required String teem, required int teemButtom}) {
    if (teem == 'a') {
      teamApoint += teemButtom;
      emit(CountAIncreamentstate());
    } else if (teem == 'b') {
      teamBpoint += teemButtom;
      emit(CountBIncreamentstate());
    }
  }

  void resetPoints() {
    teamApoint = 0;
    teamBpoint = 0;
    emit(ResetState());
  }
}
