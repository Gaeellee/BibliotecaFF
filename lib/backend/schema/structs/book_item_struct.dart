// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct BookItem
class BookItemStruct extends BaseStruct {
  BookItemStruct({
    /// BookItem.id
    String? id,

    /// BookItem.volumeInfo
    VolumeInfoStruct? volumeInfo,
  })  : _id = id,
        _volumeInfo = volumeInfo;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "volumeInfo" field.
  VolumeInfoStruct? _volumeInfo;
  VolumeInfoStruct get volumeInfo => _volumeInfo ?? VolumeInfoStruct();
  set volumeInfo(VolumeInfoStruct? val) => _volumeInfo = val;

  void updateVolumeInfo(Function(VolumeInfoStruct) updateFn) {
    updateFn(_volumeInfo ??= VolumeInfoStruct());
  }

  bool hasVolumeInfo() => _volumeInfo != null;

  static BookItemStruct fromMap(Map<String, dynamic> data) => BookItemStruct(
        id: data['id'] as String?,
        volumeInfo: data['volumeInfo'] is VolumeInfoStruct
            ? data['volumeInfo']
            : VolumeInfoStruct.maybeFromMap(data['volumeInfo']),
      );

  static BookItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? BookItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'volumeInfo': _volumeInfo?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'volumeInfo': serializeParam(
          _volumeInfo,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static BookItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      BookItemStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        volumeInfo: deserializeStructParam(
          data['volumeInfo'],
          ParamType.DataStruct,
          false,
          structBuilder: VolumeInfoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BookItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BookItemStruct &&
        id == other.id &&
        volumeInfo == other.volumeInfo;
  }

  @override
  int get hashCode => const ListEquality().hash([id, volumeInfo]);
}

BookItemStruct createBookItemStruct({
  String? id,
  VolumeInfoStruct? volumeInfo,
}) =>
    BookItemStruct(
      id: id,
      volumeInfo: volumeInfo ?? VolumeInfoStruct(),
    );
