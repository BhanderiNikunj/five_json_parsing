class JsonScreenModel4 {
  String? title, url, thumbnailUrl;
  int? id, albumId;

  JsonScreenModel4({
    this.title,
    this.url,
    this.thumbnailUrl,
    this.id,
    this.albumId,
  });

  JsonScreenModel4 fornJson4(Map m1) {
    title = m1['title'];
    id = m1['id'];
    albumId = m1['albumId'];
    url = m1['url'];
    thumbnailUrl = m1['thumbnailUrl'];

    JsonScreenModel4 j4 = JsonScreenModel4(
      title: title,
      id: id,
      albumId: albumId,
      thumbnailUrl: thumbnailUrl,
      url: url,
    );

    return j4;
  }
}
