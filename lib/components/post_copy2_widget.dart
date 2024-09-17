import '/backend/api_requests/api_calls.dart';
import '/components/comment_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'post_copy2_model.dart';
export 'post_copy2_model.dart';

class PostCopy2Widget extends StatefulWidget {
  const PostCopy2Widget({
    super.key,
    this.description,
    required this.name,
    this.start,
    this.category,
    this.maskid,
    this.likes,
    this.comment,
    this.follow,
  });

  final String? description;
  final String? name;
  final DateTime? start;
  final String? category;
  final String? maskid;
  final int? likes;
  final int? comment;
  final bool? follow;

  @override
  State<PostCopy2Widget> createState() => _PostCopy2WidgetState();
}

class _PostCopy2WidgetState extends State<PostCopy2Widget>
    with TickerProviderStateMixin {
  late PostCopy2Model _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostCopy2Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.listofimages = await actions.removedBrokenImageUrl(
        List.generate(
            random_data.randomInteger(5, 5),
            (index) => random_data.randomImageUrl(
                  0,
                  0,
                )).toList(),
      );
    });

    animationsMap.addAll({
      'iconOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(0.7, 0.7),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.7, 0.7),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 38.0,
                          height: 38.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFFED7D2D),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            FFIcons.kframe1,
                            color: Color(0xFFF8F5F5),
                            size: 18.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  widget.name,
                                  'N/A',
                                ).maybeHandleOverflow(
                                  maxChars: 30,
                                  replacement: '…',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: const Color(0xFFF8F9F9),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      widget.category,
                                      'N/A',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: const Color(0xbacd9095a0),
                                          fontSize: 11.0,
                                          letterSpacing: 0.0,
                                          lineHeight: 1.6,
                                        ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          7.0, 0.0, 7.0, 0.0),
                                      child: Container(
                                        width: 4.0,
                                        height: 4.0,
                                        decoration: const BoxDecoration(
                                          color: Color(0xbacddee1e6),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      dateTimeFormat("MMMEd", widget.start),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: const Color(0xbacd9095a0),
                                            fontSize: 11.0,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.6,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (!_model.follow)
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                var shouldSetState = false;
                                _model.follow = false;
                                safeSetState(() {});
                                _model.apiResultr9Copy =
                                    await TaarapiGroup.followCall.call(
                                  authToken:
                                      '65e5de46-f3f5-41d3-9649-cf0448ad201f',
                                  maskId: widget.maskid,
                                );

                                shouldSetState = true;
                                if ((_model.apiResultr9Copy?.statusCode ??
                                        200) ==
                                    200) {
                                  _model.follow = !_model.follow;
                                  safeSetState(() {});
                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  if ((_model.apiResultr9Copy?.statusCode ??
                                          200) ==
                                      409) {
                                    _model.follow = !_model.follow;
                                    safeSetState(() {});
                                    if (shouldSetState) safeSetState(() {});
                                    return;
                                  } else {
                                    if ((_model.apiResultr9Copy?.statusCode ??
                                            200) >=
                                        500) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'API is down, undergoing maintenance, please try again after some time.',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                      if (shouldSetState) safeSetState(() {});
                                      return;
                                    } else {
                                      if ((_model.apiResultr9Copy?.statusCode ??
                                              200) >=
                                          400) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'bad request , try again',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                        if (shouldSetState) {
                                          safeSetState(() {});
                                        }
                                        return;
                                      } else {
                                        if ((_model.apiResultr9Copy
                                                    ?.statusCode ??
                                                200) >=
                                            401) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'you are unauthorize to do it , please login again',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  const Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );
                                          if (shouldSetState) {
                                            safeSetState(() {});
                                          }
                                          return;
                                        } else {
                                          if (shouldSetState) {
                                            safeSetState(() {});
                                          }
                                          return;
                                        }
                                      }
                                    }
                                  }
                                }

                                if (shouldSetState) safeSetState(() {});
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFE7309B),
                                      Color(0xFF832DE3),
                                      Color(0xFF1D3EE8)
                                    ],
                                    stops: [0.0, 0.5, 1.0],
                                    begin: AlignmentDirectional(-1.0, 0.0),
                                    end: AlignmentDirectional(1.0, 0),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(18.0),
                                    bottomRight: Radius.circular(18.0),
                                    topLeft: Radius.circular(18.0),
                                    topRight: Radius.circular(18.0),
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 8.0, 8.0),
                                    child: Text(
                                      'Follow',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: const Color(0xFFF4F5F6),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        if (_model.follow)
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              var shouldSetState = false;
                              _model.follow = false;
                              safeSetState(() {});
                              _model.apiResultr9 =
                                  await TaarapiGroup.unfollowCall.call(
                                authToken:
                                    '65e5de46-f3f5-41d3-9649-cf0448ad201f',
                                maskId: widget.maskid,
                              );

                              shouldSetState = true;
                              if ((_model.apiResultr9?.statusCode ?? 200) ==
                                  200) {
                                _model.follow = true;
                                safeSetState(() {});
                                if (shouldSetState) safeSetState(() {});
                                return;
                              } else {
                                if ((_model.apiResultr9?.statusCode ?? 200) ==
                                    409) {
                                  _model.follow = false;
                                  safeSetState(() {});
                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  if ((_model.apiResultr9?.statusCode ?? 200) >=
                                      500) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'API is down, undergoing maintenance, please try again after some time.',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    if (shouldSetState) safeSetState(() {});
                                    return;
                                  } else {
                                    if ((_model.apiResultr9?.statusCode ??
                                            200) >=
                                        400) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'bad request , try again',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                      if (shouldSetState) safeSetState(() {});
                                      return;
                                    } else {
                                      if ((_model.apiResultr9?.statusCode ??
                                              200) >=
                                          401) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'you are unauthorize to do it , please login again',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                        if (shouldSetState) {
                                          safeSetState(() {});
                                        }
                                        return;
                                      } else {
                                        if (shouldSetState) {
                                          safeSetState(() {});
                                        }
                                        return;
                                      }
                                    }
                                  }
                                }
                              }

                              if (shouldSetState) safeSetState(() {});
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xC4E7309B),
                                    Color(0xC0832DE3),
                                    Color(0x7EA31DE8)
                                  ],
                                  stops: [0.0, 0.5, 1.0],
                                  begin: AlignmentDirectional(-1.0, 0.0),
                                  end: AlignmentDirectional(1.0, 0),
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(18.0),
                                  bottomRight: Radius.circular(18.0),
                                  topLeft: Radius.circular(18.0),
                                  topRight: Radius.circular(18.0),
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 8.0, 8.0),
                                  child: Text(
                                    'Unfollow',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: const Color(0xFFF4F5F6),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 377.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        var shouldSetState = false;
                        _model.apiResult4ms = await TaarapiGroup.rsvpCall.call(
                          maskid: widget.maskid,
                          quantity: 2,
                          authToken: ' 6428cf8d-4450-45a4-8e81-ff140ee3b8a9',
                        );

                        shouldSetState = true;
                        if ((_model.apiResult4ms?.statusCode ?? 200) == 200) {
                          _model.booked = true;
                          safeSetState(() {});
                          if (shouldSetState) safeSetState(() {});
                          return;
                        } else {
                          if ((_model.apiResult4ms?.statusCode ?? 200) == 409) {
                            _model.booked = true;
                            safeSetState(() {});
                            if (shouldSetState) safeSetState(() {});
                            return;
                          } else {
                            if ((_model.apiResult4ms?.statusCode ?? 200) >=
                                500) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'API is down, undergoing maintenance, please try again after some time.',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                              if (shouldSetState) safeSetState(() {});
                              return;
                            } else {
                              if ((_model.apiResult4ms?.statusCode ?? 200) >=
                                  400) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'bad request , try again',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                                if (shouldSetState) safeSetState(() {});
                                return;
                              } else {
                                if ((_model.apiResult4ms?.statusCode ?? 200) >=
                                    401) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'you are unauthorize to do it , please login again',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                }
                              }
                            }
                          }
                        }

                        if (shouldSetState) safeSetState(() {});
                      },
                      child: Container(
                        width: double.infinity,
                        height: 32.0,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFE7309B),
                              Color(0xFF832DE3),
                              Color(0xFF1D3EE8)
                            ],
                            stops: [0.0, 0.5, 1.0],
                            begin: AlignmentDirectional(-1.0, 0.0),
                            end: AlignmentDirectional(1.0, 0),
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (!_model.booked)
                                Text(
                                  'RSVP',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              if (_model.booked)
                                Text(
                                  'Booked',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              if (!_model.booked)
                                Icon(
                                  Icons.chevron_right,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  _model.fulltext = !_model.fulltext;
                  safeSetState(() {});
                },
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        if (!_model.fulltext) {
                          return Wrap(
                            spacing: 0.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.end,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.end,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  widget.description,
                                  'n/a',
                                ).maybeHandleOverflow(maxChars: 80),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              if (functions
                                      .countCharacter(widget.description!) >=
                                  90)
                                Text(
                                  '...see more',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: const Color(0x8DFFFFFF),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                            ],
                          );
                        } else {
                          return Wrap(
                            spacing: 0.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.end,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.end,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  widget.description,
                                  'n/a',
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              if (functions
                                      .countCharacter(widget.description!) >=
                                  90)
                                Text(
                                  '...see less',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: const Color(0x9FFFFFFF),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                            ],
                          );
                        }
                      },
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).alternate,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (!_model.like)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                var shouldSetState = false;
                                _model.like = true;
                                safeSetState(() {});
                                if (animationsMap[
                                        'iconOnActionTriggerAnimation1'] !=
                                    null) {
                                  await animationsMap[
                                          'iconOnActionTriggerAnimation1']!
                                      .controller
                                      .forward(from: 0.0);
                                }
                                if (animationsMap[
                                        'iconOnActionTriggerAnimation2'] !=
                                    null) {
                                  await animationsMap[
                                          'iconOnActionTriggerAnimation2']!
                                      .controller
                                      .forward(from: 0.0);
                                }
                                _model.apiResult01t =
                                    await TaarapiGroup.likeCall.call(
                                  maskId: widget.maskid,
                                  authToken:
                                      '6428cf8d-4450-45a4-8e81-ff140ee3b8a9',
                                );

                                shouldSetState = true;
                                if ((_model.apiResult01t?.statusCode ?? 200) ==
                                    200) {
                                  _model.follow = true;
                                  safeSetState(() {});
                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  if ((_model.apiResult01t?.statusCode ??
                                          200) ==
                                      409) {
                                    _model.follow = false;
                                    safeSetState(() {});
                                    if (shouldSetState) safeSetState(() {});
                                    return;
                                  } else {
                                    if ((_model.apiResultr9Copy?.statusCode ??
                                            200) >=
                                        500) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'API is down, undergoing maintenance, please try again after some time.',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                      if (shouldSetState) safeSetState(() {});
                                      return;
                                    } else {
                                      if ((_model.apiResultr9Copy?.statusCode ??
                                              200) >=
                                          400) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'bad request , try again',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                        if (shouldSetState) {
                                          safeSetState(() {});
                                        }
                                        return;
                                      } else {
                                        if ((_model.apiResultr9Copy
                                                    ?.statusCode ??
                                                200) >=
                                            401) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'you are unauthorize to do it , please login again',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  const Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );
                                          if (shouldSetState) {
                                            safeSetState(() {});
                                          }
                                          return;
                                        } else {
                                          if (shouldSetState) {
                                            safeSetState(() {});
                                          }
                                          return;
                                        }
                                      }
                                    }
                                  }
                                }

                                if (shouldSetState) safeSetState(() {});
                              },
                              child: Icon(
                                Icons.favorite_border,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                            ).animateOnActionTrigger(
                              animationsMap['iconOnActionTriggerAnimation1']!,
                            ),
                          if (_model.like)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                var shouldSetState = false;
                                _model.like = false;
                                safeSetState(() {});
                                if (animationsMap[
                                        'iconOnActionTriggerAnimation2'] !=
                                    null) {
                                  await animationsMap[
                                          'iconOnActionTriggerAnimation2']!
                                      .controller
                                      .reverse();
                                }
                                if (animationsMap[
                                        'iconOnActionTriggerAnimation1'] !=
                                    null) {
                                  await animationsMap[
                                          'iconOnActionTriggerAnimation1']!
                                      .controller
                                      .reverse();
                                }
                                _model.apiResult01t2 =
                                    await TaarapiGroup.unlikeCall.call(
                                  maskId: widget.maskid,
                                  authToken:
                                      '6428cf8d-4450-45a4-8e81-ff140ee3b8a9',
                                );

                                shouldSetState = true;
                                if ((_model.apiResult01t2?.statusCode ?? 200) ==
                                    200) {
                                  _model.follow = true;
                                  safeSetState(() {});
                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  if ((_model.apiResult01t?.statusCode ??
                                          200) ==
                                      409) {
                                    _model.follow = false;
                                    safeSetState(() {});
                                    if (shouldSetState) safeSetState(() {});
                                    return;
                                  } else {
                                    if ((_model.apiResult01t2?.statusCode ??
                                            200) >=
                                        500) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'API is down, undergoing maintenance, please try again after some time.',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                      if (shouldSetState) safeSetState(() {});
                                      return;
                                    } else {
                                      if ((_model.apiResult01t2?.statusCode ??
                                              200) >=
                                          400) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'bad request , try again',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                        if (shouldSetState) {
                                          safeSetState(() {});
                                        }
                                        return;
                                      } else {
                                        if ((_model.apiResult01t2?.statusCode ??
                                                200) >=
                                            401) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'you are unauthorize to do it , please login again',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  const Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );
                                          if (shouldSetState) {
                                            safeSetState(() {});
                                          }
                                          return;
                                        } else {
                                          if (shouldSetState) {
                                            safeSetState(() {});
                                          }
                                          return;
                                        }
                                      }
                                    }
                                  }
                                }

                                if (shouldSetState) safeSetState(() {});
                              },
                              child: Icon(
                                Icons.favorite,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                            ).animateOnActionTrigger(
                              animationsMap['iconOnActionTriggerAnimation2']!,
                            ),
                          if (widget.likes != 0)
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.likes?.toString(),
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                      lineHeight: 1.6,
                                    ),
                              ),
                            ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: SizedBox(
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    child: CommentWidget(
                                      maskid: widget.maskid,
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                FFIcons.kcomments51,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.comment?.toString(),
                                    '0',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.6,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Builder(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await Share.share(
                          'taar.in/event/${widget.maskid}',
                          sharePositionOrigin: getWidgetBoundingBox(context),
                        );
                      },
                      child: Icon(
                        FFIcons.kshareNetwork51,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
