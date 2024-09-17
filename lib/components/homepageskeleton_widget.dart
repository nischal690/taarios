import '/components/homeskeleton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'homepageskeleton_model.dart';
export 'homepageskeleton_model.dart';

class HomepageskeletonWidget extends StatefulWidget {
  const HomepageskeletonWidget({super.key});

  @override
  State<HomepageskeletonWidget> createState() => _HomepageskeletonWidgetState();
}

class _HomepageskeletonWidgetState extends State<HomepageskeletonWidget> {
  late HomepageskeletonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageskeletonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: wrapWithModel(
        model: _model.homeskeletonModel,
        updateCallback: () => safeSetState(() {}),
        child: const HomeskeletonWidget(),
      ),
    );
  }
}
