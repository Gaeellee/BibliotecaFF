import '../database.dart';

class UserBooksTable extends SupabaseTable<UserBooksRow> {
  @override
  String get tableName => 'user_books';

  @override
  UserBooksRow createRow(Map<String, dynamic> data) => UserBooksRow(data);
}

class UserBooksRow extends SupabaseDataRow {
  UserBooksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserBooksTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get bookId => getField<String>('book_id')!;
  set bookId(String value) => setField<String>('book_id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get authors => getField<String>('authors');
  set authors(String? value) => setField<String>('authors', value);

  String? get thumbnailUrl => getField<String>('thumbnail_url');
  set thumbnailUrl(String? value) => setField<String>('thumbnail_url', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  int? get rating => getField<int>('rating');
  set rating(int? value) => setField<int>('rating', value);

  String get ownerEmail => getField<String>('owner_email')!;
  set ownerEmail(String value) => setField<String>('owner_email', value);
}
