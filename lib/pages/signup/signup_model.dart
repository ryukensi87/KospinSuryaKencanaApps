import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Emailcreate widget.
  FocusNode? emailcreateFocusNode;
  TextEditingController? emailcreateController;
  String? Function(BuildContext, String?)? emailcreateControllerValidator;
  // State field(s) for Usernamecreate widget.
  FocusNode? usernamecreateFocusNode;
  TextEditingController? usernamecreateController;
  String? Function(BuildContext, String?)? usernamecreateControllerValidator;
  // State field(s) for notlpcreate widget.
  FocusNode? notlpcreateFocusNode;
  TextEditingController? notlpcreateController;
  String? Function(BuildContext, String?)? notlpcreateControllerValidator;
  // State field(s) for Passwordcreate widget.
  FocusNode? passwordcreateFocusNode;
  TextEditingController? passwordcreateController;
  late bool passwordcreateVisibility;
  String? Function(BuildContext, String?)? passwordcreateControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UserdataRecord? checkRegister;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UserdataRecord? createDokument;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordcreateVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailcreateFocusNode?.dispose();
    emailcreateController?.dispose();

    usernamecreateFocusNode?.dispose();
    usernamecreateController?.dispose();

    notlpcreateFocusNode?.dispose();
    notlpcreateController?.dispose();

    passwordcreateFocusNode?.dispose();
    passwordcreateController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
