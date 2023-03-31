class JsonScreenModel5 {
  int? userId, id;
  String? title;
  bool? completed;

  JsonScreenModel5({
    this.userId,
    this.title,
    this.id,
    this.completed,
  });

  JsonScreenModel5 fornJson5(Map m1) {
    userId = m1['userId'];
    id = m1['id'];
    completed = m1['completed'];
    title = m1['title'];

    JsonScreenModel5 j5 = JsonScreenModel5(
      id: id,
      title: title,
      userId: userId,
      completed: completed,
    );

    return j5;
  }
}
