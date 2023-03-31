class JsonScreenModel2 {
  String? name, body, email;
  int? postId, id;

  JsonScreenModel2({
    this.name,
    this.postId,
    this.body,
    this.email,
    this.id,
  });

  JsonScreenModel2 fornJson1(Map m1) {
    postId = m1['postId'];
    id = m1['id'];
    name = m1['name'];
    body = m1['body'];
    email = m1['email'];

    JsonScreenModel2 j2 = JsonScreenModel2(
      body: body,
      id: id,
      name: name,
      email: email,
      postId: postId,
    );

    return j2;
  }
}
