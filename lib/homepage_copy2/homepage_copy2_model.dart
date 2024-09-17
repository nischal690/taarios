import '/backend/api_requests/api_calls.dart';
import '/components/homeskeleton_widget.dart';
import '/components/nav_bar_with_middle_button_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_copy2_widget.dart' show HomepageCopy2Widget;
import 'package:flutter/material.dart';

class HomepageCopy2Model extends FlutterFlowModel<HomepageCopy2Widget> {
  ///  Local state fields for this page.

  bool skeleton = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (location)] action in HomepageCopy2 widget.
  ApiCallResponse? locationonpageload;
  // Model for homeskeleton component.
  late HomeskeletonModel homeskeletonModel;
  // Model for NavBarWithMiddleButtonCopy component.
  late NavBarWithMiddleButtonCopyModel navBarWithMiddleButtonCopyModel;

  @override
  void initState(BuildContext context) {
    homeskeletonModel = createModel(context, () => HomeskeletonModel());
    navBarWithMiddleButtonCopyModel =
        createModel(context, () => NavBarWithMiddleButtonCopyModel());
  }

  @override
  void dispose() {
    homeskeletonModel.dispose();
    navBarWithMiddleButtonCopyModel.dispose();
  }
}
