// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct BookSearchResponse
class BookSearchResponseStruct extends BaseStruct {
  BookSearchResponseStruct({
    /// BookSearchResponse.items
    List<BookItemStruct>? items,
  }) : _items = items;

  // "items" field.
  List<BookItemStruct>? _items;
  List<BookItemStruct> get items => _items ?? const [];
  set items(List<BookItemStruct>? val) => _items = val;

  void updateItems(Function(List<BookItemStruct>) updateFn) {
    updateFn(_items ??= []);
  }

  bool hasItems() => _items != null;

  static BookSearchResponseStruct fromMap(Map<String, dynamic> data) =>
      BookSearchResponseStruct(
        items: getStructList(
          data['items'],
          BookItemStruct.fromMap,
        ),
      );

  static BookSearchResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? BookSearchResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'items': _items?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'items': serializeParam(
          _items,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static BookSearchResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BookSearchResponseStruct(
        items: deserializeStructParam<BookItemStruct>(
          data['items'],
          ParamType.DataStruct,
          true,
          structBuilder: BookItemStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BookSearchResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is BookSearchResponseStruct &&
        listEquality.equals(items, other.items);
  }

  @override
  int get hashCode => const ListEquality().hash([items]);
}

BookSearchResponseStruct createBookSearchResponseStruct() =>
    BookSearchResponseStruct();
