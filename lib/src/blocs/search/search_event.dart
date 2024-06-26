import "package:cineflix/src/models/item_model.dart";

abstract class SearchEvent {}

class PerformSearchEvent extends SearchEvent {
  final String query;
  final String mediaType;
  PerformSearchEvent({required this.query, required this.mediaType});
}

class SelectedMovieEvent extends SearchEvent {
  final ItemModel selectedMovie;
  SelectedMovieEvent(this.selectedMovie);
}
