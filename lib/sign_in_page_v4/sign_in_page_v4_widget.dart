import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sign_in_page_v4_model.dart';
export 'sign_in_page_v4_model.dart';

/// Login and registration page.
class SignInPageV4Widget extends StatefulWidget {
  const SignInPageV4Widget({super.key});

  static String routeName = 'SignInPageV4';
  static String routePath = '/auth-v4';

  @override
  State<SignInPageV4Widget> createState() => _SignInPageV4WidgetState();
}

class _SignInPageV4WidgetState extends State<SignInPageV4Widget> {
  late SignInPageV4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignInPageV4Model());

    _model.emailFieldTextController ??= TextEditingController();
    _model.emailFieldFocusNode ??= FocusNode();

    _model.passwordFieldTextController ??= TextEditingController();
    _model.passwordFieldFocusNode ??= FocusNode();

    _model.confirmPasswordFieldTextController ??= TextEditingController();
    _model.confirmPasswordFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 380.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 56.0,
                    ),
                    Text(
                      'Biblioteca',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                    ),
                    Text(
                      'Tu tracker de lectura personal',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                    TextFormField(
                      controller: _model.emailFieldTextController,
                      focusNode: _model.emailFieldFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.emailFieldTextController',
                        Duration(milliseconds: 2000),
                        () async {
                          _model.email = _model.emailFieldTextController.text;
                          safeSetState(() {});
                        },
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Correo Electrónico',
                        hintText: 'ejemplo@correo.com',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.mail_outline,
                        ),
                      ),
                      style: TextStyle(),
                      maxLines: null,
                      validator: _model.emailFieldTextControllerValidator
                          .asValidator(context),
                    ),
                    TextFormField(
                      controller: _model.passwordFieldTextController,
                      focusNode: _model.passwordFieldFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.passwordFieldTextController',
                        Duration(milliseconds: 2000),
                        () async {
                          _model.password =
                              _model.passwordFieldTextController.text;
                          safeSetState(() {});
                        },
                      ),
                      obscureText: !_model.passwordFieldVisibility,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        hintText: '••••••••',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.lock_outline,
                        ),
                        suffixIcon: InkWell(
                          onTap: () async {
                            safeSetState(() => _model.passwordFieldVisibility =
                                !_model.passwordFieldVisibility);
                          },
                          focusNode: FocusNode(skipTraversal: true),
                          child: Icon(
                            _model.passwordFieldVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            size: 22,
                          ),
                        ),
                      ),
                      style: TextStyle(),
                      validator: _model.passwordFieldTextControllerValidator
                          .asValidator(context),
                    ),
                    if (_model.isRegister ?? true)
                      TextFormField(
                        controller: _model.confirmPasswordFieldTextController,
                        focusNode: _model.confirmPasswordFieldFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.confirmPasswordFieldTextController',
                          Duration(milliseconds: 2000),
                          () async {
                            _model.password =
                                _model.confirmPasswordFieldTextController.text;
                            safeSetState(() {});
                          },
                        ),
                        obscureText: !_model.confirmPasswordFieldVisibility,
                        decoration: InputDecoration(
                          labelText: 'Confirmar Contraseña',
                          hintText: '••••••••',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.lock_outline,
                          ),
                          suffixIcon: InkWell(
                            onTap: () async {
                              safeSetState(() =>
                                  _model.confirmPasswordFieldVisibility =
                                      !_model.confirmPasswordFieldVisibility);
                            },
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              _model.confirmPasswordFieldVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              size: 22,
                            ),
                          ),
                        ),
                        style: TextStyle(),
                        validator: _model
                            .confirmPasswordFieldTextControllerValidator
                            .asValidator(context),
                      ),
                    if (!_model.isRegister!)
                      FFButtonWidget(
                        onPressed: () async {
                          GoRouter.of(context).prepareAuthEvent();

                          final user = await authManager.signInWithEmail(
                            context,
                            _model.email!,
                            _model.password!,
                          );
                          if (user == null) {
                            return;
                          }

                          context.pushNamedAuth(
                              LibraryPageV4Widget.routeName, context.mounted);
                        },
                        text: 'Iniciar Sesión',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 48.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: TextStyle(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    if (_model.isRegister ?? true)
                      FFButtonWidget(
                        onPressed: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          if (_model.passwordFieldTextController.text !=
                              _model.confirmPasswordFieldTextController.text) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Passwords don\'t match!',
                                ),
                              ),
                            );
                            return;
                          }

                          final user = await authManager.createAccountWithEmail(
                            context,
                            _model.emailFieldTextController.text,
                            _model.passwordFieldTextController.text,
                          );
                          if (user == null) {
                            return;
                          }

                          context.pushNamedAuth(
                              LibraryPageV4Widget.routeName, context.mounted);
                        },
                        text: 'Crear Cuenta',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 48.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).secondary,
                          textStyle: TextStyle(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    if (!_model.isRegister!)
                      FFButtonWidget(
                        onPressed: () async {
                          _model.isRegister = !(_model.isRegister ?? true);
                          safeSetState(() {});
                        },
                        text: '¿No tienes cuenta? Regístrate',
                        options: FFButtonOptions(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Colors.transparent,
                          textStyle: TextStyle(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    if (_model.isRegister ?? true)
                      FFButtonWidget(
                        onPressed: () async {
                          _model.isRegister = !(_model.isRegister ?? true);
                          safeSetState(() {});
                        },
                        text: '¿Ya tienes cuenta? Inicia sesión',
                        options: FFButtonOptions(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Colors.transparent,
                          textStyle: TextStyle(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                  ].divide(SizedBox(height: 20.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
