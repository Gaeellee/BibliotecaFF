// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct GoogleBookV4
class GoogleBookV4Struct extends BaseStruct {
  GoogleBookV4Struct({
    /// GoogleBookV4.id
    String? id,

    /// GoogleBookV4.title
    String? title,

    /// GoogleBookV4.authors
    String? authors,

    /// GoogleBookV4.description
    String? description,

    /// GoogleBookV4.thumbnail
    String? thumbnail,

    /// GoogleBookV4.pageCount
    int? pageCount,

    /// GoogleBookV4.publishedDate
    String? publishedDate,

    /// GoogleBookV4.categories
    String? categories,
  })  : _id = id,
        _title = title,
        _authors = authors,
        _description = description,
        _thumbnail = thumbnail,
        _pageCount = pageCount,
        _publishedDate = publishedDate,
        _categories = categories;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "authors" field.
  String? _authors;
  String get authors => _authors ?? '';
  set authors(String? val) => _authors = val;

  bool hasAuthors() => _authors != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  set thumbnail(String? val) => _thumbnail = val;

  bool hasThumbnail() => _thumbnail != null;

  // "pageCount" field.
  int? _pageCount;
  int get pageCount => _pageCount ?? 0;
  set pageCount(int? val) => _pageCount = val;

  void incrementPageCount(int amount) => pageCount = pageCount + amount;

  bool hasPageCount() => _pageCount != null;

  // "publishedDate" field.
  String? _publishedDate;
  String get publishedDate => _publishedDate ?? '';
  set publishedDate(String? val) => _publishedDate = val;

  bool hasPublishedDate() => _publishedDate != null;

  // "categories" field.
  String? _categories;
  String get categories => _categories ?? '';
  set categories(String? val) => _categories = val;

  bool hasCategories() => _categories != null;

  static GoogleBookV4Struct fromMap(Map<String, dynamic> data) =>
      GoogleBookV4Struct(
        id: data['id'] as String?,
        title: data['title'] as String?,
        authors: data['authors'] as String?,
        description: data['description'] as String?,
        thumbnail: data['thumbnail'] as String?,
        pageCount: castToType<int>(data['pageCount']),
        publishedDate: data['publishedDate'] as String?,
        categories: data['categories'] as String?,
      );

  static GoogleBookV4Struct? maybeFromMap(dynamic data) => data is Map
      ? GoogleBookV4Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'authors': _authors,
        'description': _description,
        'thumbnail': _thumbnail,
        'pageCount': _pageCount,
        'publishedDate': _publishedDate,
        'categories': _categories,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'authors': serializeParam(
          _authors,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'thumbnail': serializeParam(
          _thumbnail,
          ParamType.String,
        ),
        'pageCount': serializeParam(
          _pageCount,
          ParamType.int,
        ),
        'publishedDate': serializeParam(
          _publishedDate,
          ParamType.String,
        ),
        'categories': serializeParam(
          _categories,
          ParamType.String,
        ),
      }.withoutNulls;

  static GoogleBookV4Struct fromSerializableMap(Map<String, dynamic> data) =>
      GoogleBookV4Struct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        authors: deserializeParam(
          data['authors'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        thumbnail: deserializeParam(
          data['thumbnail'],
          ParamType.String,
          false,
        ),
        pageCount: deserializeParam(
          data['pageCount'],
          ParamType.int,
          false,
        ),
        publishedDate: deserializeParam(
          data['publishedDate'],
          ParamType.String,
          false,
        ),
        categories: deserializeParam(
          data['categories'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GoogleBookV4Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GoogleBookV4Struct &&
        id == other.id &&
        title == other.title &&
        authors == other.authors &&
        description == other.description &&
        thumbnail == other.thumbnail &&
        pageCount == other.pageCount &&
        publishedDate == other.publishedDate &&
        categories == other.categories;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        title,
        authors,
        description,
        thumbnail,
        pageCount,
        publishedDate,
        categories
      ]);
}

GoogleBookV4Struct createGoogleBookV4Struct({
  String? id,
  String? title,
  String? authors,
  String? description,
  String? thumbnail,
  int? pageCount,
  String? publishedDate,
  String? categories,
}) =>
    GoogleBookV4Struct(
      id: id,
      title: title,
      authors: authors,
      description: description,
      thumbnail: thumbnail,
      pageCount: pageCount,
      publishedDate: publishedDate,
      categories: categories,
    );
