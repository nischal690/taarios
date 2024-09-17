import '/components/skimmereffect_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'homeskeleton_model.dart';
export 'homeskeleton_model.dart';

class HomeskeletonWidget extends StatefulWidget {
  const HomeskeletonWidget({super.key});

  @override
  State<HomeskeletonWidget> createState() => _HomeskeletonWidgetState();
}

class _HomeskeletonWidgetState extends State<HomeskeletonWidget> {
  late HomeskeletonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeskeletonModel());

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
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 200.0,
                child: wrapWithModel(
                  model: _model.skimmereffectModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: const SkimmereffectWidget(),
                ),
              ),
              Container(
                height: 200.0,
                decoration: const BoxDecoration(),
                child: wrapWithModel(
                  model: _model.skimmereffectModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: const SkimmereffectWidget(),
                ),
              ),
              Container(
                height: 200.0,
                decoration: const BoxDecoration(),
                child: wrapWithModel(
                  model: _model.skimmereffectModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: const SkimmereffectWidget(),
                ),
              ),
              Container(
                height: 200.0,
                decoration: const BoxDecoration(),
                child: wrapWithModel(
                  model: _model.skimmereffectModel4,
                  updateCallback: () => safeSetState(() {}),
                  child: const SkimmereffectWidget(),
                ),
              ),
              Container(
                height: 200.0,
                decoration: const BoxDecoration(),
                child: wrapWithModel(
                  model: _model.skimmereffectModel5,
                  updateCallback: () => safeSetState(() {}),
                  child: const SkimmereffectWidget(),
                ),
              ),
              Container(
                height: 200.0,
                decoration: const BoxDecoration(),
                child: wrapWithModel(
                  model: _model.skimmereffectModel6,
                  updateCallback: () => safeSetState(() {}),
                  child: const SkimmereffectWidget(),
                ),
              ),
              SizedBox(
                height: 200.0,
                child: wrapWithModel(
                  model: _model.skimmereffectModel7,
                  updateCallback: () => safeSetState(() {}),
                  child: const SkimmereffectWidget(),
                ),
              ),
            ].divide(const SizedBox(height: 40.0)),
          ),
        ),
      ],
    );
  }
}
