import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<GoToPage2>(_onGoToPage2);
    on<GoToHome>(_onGoToHome);
  }

  void _onGoToPage2(GoToPage2 event, Emitter<AppState> emit) {
    emit(
      state.copyWith(selectedPage: SelectedPage.addCardToCollection),
    );
  }

  void _onGoToHome(GoToHome event, Emitter<AppState> emit) {
    emit(
      state.copyWith(selectedPage: SelectedPage.home),
    );
  }
}