// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct VolumeInfo
class VolumeInfoStruct extends BaseStruct {
  VolumeInfoStruct({
    /// VolumeInfo.title
    String? title,

    /// VolumeInfo.authors
    List<String>? authors,

    /// VolumeInfo.description
    String? description,

    /// VolumeInfo.imageLinks
    VolumeImageLinksStruct? imageLinks,
  })  : _title = title,
        _authors = authors,
        _description = description,
        _imageLinks = imageLinks;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "authors" field.
  List<String>? _authors;
  List<String> get authors => _authors ?? const [];
  set authors(List<String>? val) => _authors = val;

  void updateAuthors(Function(List<String>) updateFn) {
    updateFn(_authors ??= []);
  }

  bool hasAuthors() => _authors != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "imageLinks" field.
  VolumeImageLinksStruct? _imageLinks;
  VolumeImageLinksStruct get imageLinks =>
      _imageLinks ?? VolumeImageLinksStruct();
  set imageLinks(VolumeImageLinksStruct? val) => _imageLinks = val;

  void updateImageLinks(Function(VolumeImageLinksStruct) updateFn) {
    updateFn(_imageLinks ??= VolumeImageLinksStruct());
  }

  bool hasImageLinks() => _imageLinks != null;

  static VolumeInfoStruct fromMap(Map<String, dynamic> data) =>
      VolumeInfoStruct(
        title: data['title'] as String?,
        authors: getDataList(data['authors']),
        description: data['description'] as String?,
        imageLinks: data['imageLinks'] is VolumeImageLinksStruct
            ? data['imageLinks']
            : VolumeImageLinksStruct.maybeFromMap(data['imageLinks']),
      );

  static VolumeInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? VolumeInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'authors': _authors,
        'description': _description,
        'imageLinks': _imageLinks?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'authors': serializeParam(
          _authors,
          ParamType.String,
          isList: true,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'imageLinks': serializeParam(
          _imageLinks,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static VolumeInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      VolumeInfoStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        authors: deserializeParam<String>(
          data['authors'],
          ParamType.String,
          true,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        imageLinks: deserializeStructParam(
          data['imageLinks'],
          ParamType.DataStruct,
          false,
          structBuilder: VolumeImageLinksStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'VolumeInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is VolumeInfoStruct &&
        title == other.title &&
        listEquality.equals(authors, other.authors) &&
        description == other.description &&
        imageLinks == other.imageLinks;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, authors, description, imageLinks]);
}

VolumeInfoStruct createVolumeInfoStruct({
  String? title,
  String? description,
  VolumeImageLinksStruct? imageLinks,
}) =>
    VolumeInfoStruct(
      title: title,
      description: description,
      imageLinks: imageLinks ?? VolumeImageLinksStruct(),
    );
