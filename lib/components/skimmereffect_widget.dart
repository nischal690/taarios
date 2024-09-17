import '/components/skimmer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'skimmereffect_model.dart';
export 'skimmereffect_model.dart';

class SkimmereffectWidget extends StatefulWidget {
  const SkimmereffectWidget({super.key});

  @override
  State<SkimmereffectWidget> createState() => _SkimmereffectWidgetState();
}

class _SkimmereffectWidgetState extends State<SkimmereffectWidget> {
  late SkimmereffectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SkimmereffectModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: wrapWithModel(
            model: _model.skimmerModel,
            updateCallback: () => safeSetState(() {}),
            child: const SkimmerWidget(),
          ),
        ),
      ],
    );
  }
}
