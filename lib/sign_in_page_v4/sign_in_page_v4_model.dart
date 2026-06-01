import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_in_page_v4_widget.dart' show SignInPageV4Widget;
import 'package:flutter/material.dart';

class SignInPageV4Model extends FlutterFlowModel<SignInPageV4Widget> {
  ///  Local state fields for this page.

  String? email;

  String? password;

  bool? isRegister = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldTextController;
  String? Function(BuildContext, String?)? emailFieldTextControllerValidator;
  // State field(s) for PasswordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldTextController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldTextControllerValidator;
  // State field(s) for ConfirmPasswordField widget.
  FocusNode? confirmPasswordFieldFocusNode;
  TextEditingController? confirmPasswordFieldTextController;
  late bool confirmPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordFieldVisibility = false;
    confirmPasswordFieldVisibility = false;
  }

  @override
  void dispose() {
    emailFieldFocusNode?.dispose();
    emailFieldTextController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldTextController?.dispose();

    confirmPasswordFieldFocusNode?.dispose();
    confirmPasswordFieldTextController?.dispose();
  }
}
