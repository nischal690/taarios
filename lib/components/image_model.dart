import '/components/logoanimation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'image_widget.dart' show ImageWidget;
import 'package:flutter/material.dart';

class ImageModel extends FlutterFlowModel<ImageWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for logoanimation component.
  late LogoanimationModel logoanimationModel;

  @override
  void initState(BuildContext context) {
    logoanimationModel = createModel(context, () => LogoanimationModel());
  }

  @override
  void dispose() {
    logoanimationModel.dispose();
  }
}
