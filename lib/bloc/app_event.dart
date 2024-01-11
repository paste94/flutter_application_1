part of 'app_bloc.dart';

sealed class AppEvent {}

final class GoToPage2 extends AppEvent{
  GoToPage2();
}

final class GoToHome extends AppEvent{
  GoToHome();
}
