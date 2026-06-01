import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'book_detail_page_v5_widget.dart' show BookDetailPageV5Widget;
import 'package:flutter/material.dart';

class BookDetailPageV5Model extends FlutterFlowModel<BookDetailPageV5Widget> {
  ///  Local state fields for this page.

  GoogleBookV4Struct? bookDetails;
  void updateBookDetailsStruct(Function(GoogleBookV4Struct) updateFn) {
    updateFn(bookDetails ??= GoogleBookV4Struct());
  }

  bool? isLoading = true;

  bool? isSaved = false;

  String? editStatus = 'to_read';

  int? editRating = 5;

  String? editNotes = '';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getGoogleBookDetail] action in BookDetailPageV5 widget.
  GoogleBookV4Struct? bookDetailResult;
  // State field(s) for Dropdown widget.
  String? dropdownValue1;
  FormFieldController<String>? dropdownValueController1;
  // State field(s) for Dropdown widget.
  String? dropdownValue2;
  FormFieldController<String>? dropdownValueController2;
  // State field(s) for BookNotesField widget.
  FocusNode? bookNotesFieldFocusNode;
  TextEditingController? bookNotesFieldTextController;
  String? Function(BuildContext, String?)?
      bookNotesFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  UserBooksRow? rows;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    bookNotesFieldFocusNode?.dispose();
    bookNotesFieldTextController?.dispose();
  }
}
