List<Model> unpackDtoList<Dto, Model>(
  dynamic json, {
  required Dto Function(Map<String, dynamic> json) fromJson,
  required Model Function(Dto dto) toModel,
}) {
  return (json as List<dynamic>)
      .map((item) => fromJson(item as Map<String, dynamic>))
      .map(toModel)
      .toList();
}
