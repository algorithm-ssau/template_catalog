import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'todo_list_service.dart';

@Component(
  selector: 'todo-list',
  styleUrls: ['todo_list_component.css'],
  templateUrl: 'todo_list_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    MaterialMenuComponent,
    MaterialButtonBase,
    NgIf,
    MaterialTabComponent,
    MaterialTabPanelComponent,
    MaterialButtonComponent,
  ],
  providers: [ClassProvider(TodoListService)],
)
class TodoListComponent implements OnInit {
  final TodoListService todoListService;

  List<String> items = [];
  List<String> categories = [];
  String newTodo = '';

  TodoListComponent(this.todoListService);

  @override
  Future<Null> ngOnInit() async {
    items = await todoListService.getTodoList();
    categories.add("Cat 1");
    categories.add("Cat 2");
  }

  void add() {
    items.add(newTodo);
    newTodo = '';
  }

  dynamic titleFn(num index, String tab) => tab;

  String remove(int index) => items.removeAt(index);
}
