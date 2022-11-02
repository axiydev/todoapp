part of 'create_list_cubit.dart';

abstract class CreateListState<T> {}

class InitialState implements CreateListState {}

class DataLoadedState<T> implements CreateListState<T> {
  T? data;
  DataLoadedState({this.data});
}

class LoadingState implements CreateListState {
  bool? isLoading;
  LoadingState(this.isLoading);
}

class ErrorCreateListState implements CreateListState {
  Object? error;
  ErrorCreateListState(this.error);
}
