class JsonScreenModel3 {
  String? title;
  int? id, userId;

  JsonScreenModel3({
    this.title,
    this.id,
    this.userId,
  });

  JsonScreenModel3 fornJson3(Map m1) {
    title = m1['title'];
    id = m1['id'];
    userId = m1['userId'];

    JsonScreenModel3 j3 = JsonScreenModel3(
      id: id,
      title: title,
      userId: userId,
    );

    return j3;
  }
}
