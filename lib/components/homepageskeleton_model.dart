import '/components/homeskeleton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepageskeleton_widget.dart' show HomepageskeletonWidget;
import 'package:flutter/material.dart';

class HomepageskeletonModel extends FlutterFlowModel<HomepageskeletonWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for homeskeleton component.
  late HomeskeletonModel homeskeletonModel;

  @override
  void initState(BuildContext context) {
    homeskeletonModel = createModel(context, () => HomeskeletonModel());
  }

  @override
  void dispose() {
    homeskeletonModel.dispose();
  }
}
