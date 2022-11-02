import 'package:bloc/bloc.dart';
import 'package:todoapp/model/task_list_wrapper.dart';
import 'package:todoapp/src/firestore/firestore_db.dart';

part 'create_list_state.dart';

class CreateListCubit extends Cubit<CreateListState> {
  CreateListCubit() : super(DataLoadedState<bool>(data: false));
  void createList({TaskListModel? taskListModel}) async {
    try {
      emit(LoadingState(true));
      final isCreated = await FirestoreDb.createList(taskList: taskListModel);
      if (isCreated!) {
        emit(LoadingState(false));
        emit(DataLoadedState<bool?>(data: isCreated));
      } else {
        emit(ErrorCreateListState('data error'));
      }
    } catch (e) {
      emit(ErrorCreateListState(e.toString()));
    }
  }
}
