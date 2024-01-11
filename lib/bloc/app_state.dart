part of 'app_bloc.dart';

enum SelectedPage {
  home,
  addCardToCollection,
}

final class AppState extends Equatable{
  const AppState({
    this.selectedPage = SelectedPage.home,
  });

  final SelectedPage selectedPage;

AppState copyWith({
    SelectedPage? selectedPage,
  }) {
    return AppState(
      selectedPage: selectedPage ?? this.selectedPage,
    );
  }
  @override
  List<Object> get props => [
        selectedPage,
      ];
}
