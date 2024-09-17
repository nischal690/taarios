import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'post_copy2_widget.dart' show PostCopy2Widget;
import 'package:flutter/material.dart';

class PostCopy2Model extends FlutterFlowModel<PostCopy2Widget> {
  ///  Local state fields for this component.

  bool follow = false;

  bool like = false;

  bool fulltext = false;

  bool booked = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - removedBrokenImageUrl] action in postCopy2 widget.
  List<String>? listofimages;
  // Stores action output result for [Backend Call - API (follow)] action in Container widget.
  ApiCallResponse? apiResultr9Copy;
  // Stores action output result for [Backend Call - API (unfollow)] action in Container widget.
  ApiCallResponse? apiResultr9;
  // Stores action output result for [Backend Call - API (RSVP)] action in Container widget.
  ApiCallResponse? apiResult4ms;
  // Stores action output result for [Backend Call - API (like)] action in Icon widget.
  ApiCallResponse? apiResult01t;
  // Stores action output result for [Backend Call - API (unlike)] action in Icon widget.
  ApiCallResponse? apiResult01t2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
