enum SortType {
  CREATEDAT("created_at"),
  FIRSTNAME("first_name"),
  LASTNAME("last_name");

  final String typeName;

  const SortType(this.typeName);
}
