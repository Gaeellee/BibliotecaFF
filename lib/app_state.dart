import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _savedBooksV4 = prefs
              .getStringList('ff_savedBooksV4')
              ?.map((x) {
                try {
                  return SavedBookV4Struct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _savedBooksV4;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  /// DSL app state savedBooksV4
  List<SavedBookV4Struct> _savedBooksV4 = [];
  List<SavedBookV4Struct> get savedBooksV4 => _savedBooksV4;
  set savedBooksV4(List<SavedBookV4Struct> value) {
    _savedBooksV4 = value;
    prefs.setStringList(
        'ff_savedBooksV4', value.map((x) => x.serialize()).toList());
  }

  void addToSavedBooksV4(SavedBookV4Struct value) {
    savedBooksV4.add(value);
    prefs.setStringList(
        'ff_savedBooksV4', _savedBooksV4.map((x) => x.serialize()).toList());
  }

  void removeFromSavedBooksV4(SavedBookV4Struct value) {
    savedBooksV4.remove(value);
    prefs.setStringList(
        'ff_savedBooksV4', _savedBooksV4.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSavedBooksV4(int index) {
    savedBooksV4.removeAt(index);
    prefs.setStringList(
        'ff_savedBooksV4', _savedBooksV4.map((x) => x.serialize()).toList());
  }

  void updateSavedBooksV4AtIndex(
    int index,
    SavedBookV4Struct Function(SavedBookV4Struct) updateFn,
  ) {
    savedBooksV4[index] = updateFn(_savedBooksV4[index]);
    prefs.setStringList(
        'ff_savedBooksV4', _savedBooksV4.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSavedBooksV4(int index, SavedBookV4Struct value) {
    savedBooksV4.insert(index, value);
    prefs.setStringList(
        'ff_savedBooksV4', _savedBooksV4.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
