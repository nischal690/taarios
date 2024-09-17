import '/flutter_flow/flutter_flow_util.dart';
import 'product8_widget.dart' show Product8Widget;
import 'package:flutter/material.dart';

class Product8Model extends FlutterFlowModel<Product8Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
