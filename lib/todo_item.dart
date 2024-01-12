
class ToDoItem {
  String? id;
  String? todoText;
  bool isDone;

  ToDoItem({
    required this.id,
    required this.todoText,
    this.isDone=false,
});
  static List<ToDoItem> todoList() {
    return [
      ToDoItem(id: '01', todoText: 'Morning Exercise', isDone: false),
      ToDoItem(id: '02', todoText: 'Buy Groceries', isDone: true),
      ToDoItem(id: '03', todoText: 'Check emails',),
      ToDoItem(id: '04', todoText: 'Team Meeting',),
      ToDoItem(id: '05', todoText: 'Work on Mobile App',),
      ToDoItem(id: '06', todoText: 'Dinner',),
    ];
  }
}
