class JsonScreenModel1 {
  String? title,body;
  int? userId, id;

  JsonScreenModel1({
    this.title,
    this.userId,
    this.id,
    this.body,
  });

  JsonScreenModel1 fornJson1(Map m1) {
    userId = m1['userId'];
    id = m1['id'];
    title = m1['title'];
    body = m1['body'];

    JsonScreenModel1 j1 = JsonScreenModel1(
      userId: userId,
      title: title,
      id: id,
      body: body,
    );

    return j1;
  }
}
