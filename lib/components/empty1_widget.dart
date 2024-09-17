import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty1_model.dart';
export 'empty1_model.dart';

class Empty1Widget extends StatefulWidget {
  const Empty1Widget({super.key});

  @override
  State<Empty1Widget> createState() => _Empty1WidgetState();
}

class _Empty1WidgetState extends State<Empty1Widget> {
  late Empty1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Empty1Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
