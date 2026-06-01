import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'search_page_v5_widget.dart' show SearchPageV5Widget;
import 'package:flutter/material.dart';

class SearchPageV5Model extends FlutterFlowModel<SearchPageV5Widget> {
  ///  Local state fields for this page.

  String? query = '';

  List<GoogleBookV4Struct> searchResults = [];
  void addToSearchResults(GoogleBookV4Struct item) => searchResults.add(item);
  void removeFromSearchResults(GoogleBookV4Struct item) =>
      searchResults.remove(item);
  void removeAtIndexFromSearchResults(int index) =>
      searchResults.removeAt(index);
  void insertAtIndexInSearchResults(int index, GoogleBookV4Struct item) =>
      searchResults.insert(index, item);
  void updateSearchResultsAtIndex(
          int index, Function(GoogleBookV4Struct) updateFn) =>
      searchResults[index] = updateFn(searchResults[index]);

  bool? hasSearched = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchQueryField widget.
  FocusNode? searchQueryFieldFocusNode;
  TextEditingController? searchQueryFieldTextController;
  String? Function(BuildContext, String?)?
      searchQueryFieldTextControllerValidator;
  // Stores action output result for [Custom Action - searchGoogleBooks] action in SearchQueryField widget.
  List<GoogleBookV4Struct>? searchSubmitOutput;
  // Stores action output result for [Custom Action - searchGoogleBooks] action in SearchBtn widget.
  List<GoogleBookV4Struct>? searchBtnOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchQueryFieldFocusNode?.dispose();
    searchQueryFieldTextController?.dispose();
  }
}
