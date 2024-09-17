import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'post_copy_widget.dart' show PostCopyWidget;
import 'package:flutter/material.dart';

class PostCopyModel extends FlutterFlowModel<PostCopyWidget> {
  ///  Local state fields for this component.

  bool follow = false;

  bool like = false;

  bool fulltext = false;

  bool booked = false;

  int likes = 0;

  int? commentcount;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - removedBrokenImageUrl] action in postCopy widget.
  List<String>? listofimages;
  // Stores action output result for [Backend Call - API (follow)] action in Container widget.
  ApiCallResponse? api;
  // Stores action output result for [Backend Call - API (unfollow)] action in Container widget.
  ApiCallResponse? unfollow;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Stores action output result for [Backend Call - API (RSVP)] action in Container widget.
  ApiCallResponse? rsvp;
  // Stores action output result for [Backend Call - API (like)] action in Icon widget.
  ApiCallResponse? likebutton;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (unlike)] action in Icon widget.
  ApiCallResponse? unlikebutton;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
