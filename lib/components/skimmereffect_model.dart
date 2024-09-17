import '/components/skimmer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'skimmereffect_widget.dart' show SkimmereffectWidget;
import 'package:flutter/material.dart';

class SkimmereffectModel extends FlutterFlowModel<SkimmereffectWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for skimmer component.
  late SkimmerModel skimmerModel;

  @override
  void initState(BuildContext context) {
    skimmerModel = createModel(context, () => SkimmerModel());
  }

  @override
  void dispose() {
    skimmerModel.dispose();
  }
}
