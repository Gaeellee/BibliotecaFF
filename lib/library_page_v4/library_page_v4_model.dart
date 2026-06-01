import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'library_page_v4_widget.dart' show LibraryPageV4Widget;
import 'package:flutter/material.dart';

class LibraryPageV4Model extends FlutterFlowModel<LibraryPageV4Widget> {
  ///  Local state fields for this page.

  String? activeFilter = 'all';

  List<UserBooksRow> userbooks = [];
  void addToUserbooks(UserBooksRow item) => userbooks.add(item);
  void removeFromUserbooks(UserBooksRow item) => userbooks.remove(item);
  void removeAtIndexFromUserbooks(int index) => userbooks.removeAt(index);
  void insertAtIndexInUserbooks(int index, UserBooksRow item) =>
      userbooks.insert(index, item);
  void updateUserbooksAtIndex(int index, Function(UserBooksRow) updateFn) =>
      userbooks[index] = updateFn(userbooks[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in LibraryPageV4 widget.
  List<UserBooksRow>? getuserbooks;
  // Stores action output result for [Backend Call - Delete Row(s)] action in IconButton widget.
  List<UserBooksRow>? rows;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
