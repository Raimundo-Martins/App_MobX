import 'package:mobx/mobx.dart';
import 'package:todomobx/stores/todo_store.dart';

part 'list_store.g.dart';

class ListStore = _ListStore with _$ListStore;

abstract class _ListStore with Store {
  @observable
  String newTitle = '';

  @action
  void setNewTitle(String valor) => newTitle = valor;

  @computed
  bool get isFormValid => newTitle.isNotEmpty;

  ObservableList<TodoStore> list = ObservableList<TodoStore>();

  @action
  void addList() {
    list.insert(0, TodoStore(newTitle));
    newTitle = '';
  }
}
