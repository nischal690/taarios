import '/components/homepageskeleton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_copy_widget.dart' show HomepageCopyWidget;
import 'package:flutter/material.dart';

class HomepageCopyModel extends FlutterFlowModel<HomepageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for homepageskeleton component.
  late HomepageskeletonModel homepageskeletonModel;

  @override
  void initState(BuildContext context) {
    homepageskeletonModel = createModel(context, () => HomepageskeletonModel());
  }

  @override
  void dispose() {
    homepageskeletonModel.dispose();
  }
}
