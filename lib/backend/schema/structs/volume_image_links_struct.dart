// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct VolumeImageLinks
class VolumeImageLinksStruct extends BaseStruct {
  VolumeImageLinksStruct({
    /// VolumeImageLinks.thumbnail
    String? thumbnail,
  }) : _thumbnail = thumbnail;

  // "thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  set thumbnail(String? val) => _thumbnail = val;

  bool hasThumbnail() => _thumbnail != null;

  static VolumeImageLinksStruct fromMap(Map<String, dynamic> data) =>
      VolumeImageLinksStruct(
        thumbnail: data['thumbnail'] as String?,
      );

  static VolumeImageLinksStruct? maybeFromMap(dynamic data) => data is Map
      ? VolumeImageLinksStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'thumbnail': _thumbnail,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'thumbnail': serializeParam(
          _thumbnail,
          ParamType.String,
        ),
      }.withoutNulls;

  static VolumeImageLinksStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      VolumeImageLinksStruct(
        thumbnail: deserializeParam(
          data['thumbnail'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VolumeImageLinksStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VolumeImageLinksStruct && thumbnail == other.thumbnail;
  }

  @override
  int get hashCode => const ListEquality().hash([thumbnail]);
}

VolumeImageLinksStruct createVolumeImageLinksStruct({
  String? thumbnail,
}) =>
    VolumeImageLinksStruct(
      thumbnail: thumbnail,
    );
