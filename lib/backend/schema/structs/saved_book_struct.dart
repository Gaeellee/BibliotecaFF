// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct SavedBook
class SavedBookStruct extends BaseStruct {
  SavedBookStruct({
    /// SavedBook.bookId
    String? bookId,

    /// SavedBook.title
    String? title,

    /// SavedBook.authors
    String? authors,

    /// SavedBook.thumbnailUrl
    String? thumbnailUrl,

    /// SavedBook.status
    String? status,

    /// SavedBook.notes
    String? notes,

    /// SavedBook.rating
    int? rating,
  })  : _bookId = bookId,
        _title = title,
        _authors = authors,
        _thumbnailUrl = thumbnailUrl,
        _status = status,
        _notes = notes,
        _rating = rating;

  // "bookId" field.
  String? _bookId;
  String get bookId => _bookId ?? '';
  set bookId(String? val) => _bookId = val;

  bool hasBookId() => _bookId != null;

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

  // "thumbnailUrl" field.
  String? _thumbnailUrl;
  String get thumbnailUrl => _thumbnailUrl ?? '';
  set thumbnailUrl(String? val) => _thumbnailUrl = val;

  bool hasThumbnailUrl() => _thumbnailUrl != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  set notes(String? val) => _notes = val;

  bool hasNotes() => _notes != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  set rating(int? val) => _rating = val;

  void incrementRating(int amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  static SavedBookStruct fromMap(Map<String, dynamic> data) => SavedBookStruct(
        bookId: data['bookId'] as String?,
        title: data['title'] as String?,
        authors: data['authors'] as String?,
        thumbnailUrl: data['thumbnailUrl'] as String?,
        status: data['status'] as String?,
        notes: data['notes'] as String?,
        rating: castToType<int>(data['rating']),
      );

  static SavedBookStruct? maybeFromMap(dynamic data) => data is Map
      ? SavedBookStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'bookId': _bookId,
        'title': _title,
        'authors': _authors,
        'thumbnailUrl': _thumbnailUrl,
        'status': _status,
        'notes': _notes,
        'rating': _rating,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'bookId': serializeParam(
          _bookId,
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
        'thumbnailUrl': serializeParam(
          _thumbnailUrl,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'notes': serializeParam(
          _notes,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.int,
        ),
      }.withoutNulls;

  static SavedBookStruct fromSerializableMap(Map<String, dynamic> data) =>
      SavedBookStruct(
        bookId: deserializeParam(
          data['bookId'],
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
        thumbnailUrl: deserializeParam(
          data['thumbnailUrl'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        notes: deserializeParam(
          data['notes'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SavedBookStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SavedBookStruct &&
        bookId == other.bookId &&
        title == other.title &&
        authors == other.authors &&
        thumbnailUrl == other.thumbnailUrl &&
        status == other.status &&
        notes == other.notes &&
        rating == other.rating;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([bookId, title, authors, thumbnailUrl, status, notes, rating]);
}

SavedBookStruct createSavedBookStruct({
  String? bookId,
  String? title,
  String? authors,
  String? thumbnailUrl,
  String? status,
  String? notes,
  int? rating,
}) =>
    SavedBookStruct(
      bookId: bookId,
      title: title,
      authors: authors,
      thumbnailUrl: thumbnailUrl,
      status: status,
      notes: notes,
      rating: rating,
    );
