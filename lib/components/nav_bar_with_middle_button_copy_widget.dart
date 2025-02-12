import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_bar_with_middle_button_copy_model.dart';
export 'nav_bar_with_middle_button_copy_model.dart';

class NavBarWithMiddleButtonCopyWidget extends StatefulWidget {
  const NavBarWithMiddleButtonCopyWidget({super.key});

  @override
  State<NavBarWithMiddleButtonCopyWidget> createState() =>
      _NavBarWithMiddleButtonCopyWidgetState();
}

class _NavBarWithMiddleButtonCopyWidgetState
    extends State<NavBarWithMiddleButtonCopyWidget> {
  late NavBarWithMiddleButtonCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarWithMiddleButtonCopyModel());

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
      width: double.infinity,
      height: 90.0,
      decoration: const BoxDecoration(
        color: Color(0x00EEEEEE),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 0.0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 80.0,
                  decoration: const BoxDecoration(
                    color: Color(0xbacd1d2128),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10.0,
                        color: Color(0x1A57636C),
                        offset: Offset(
                          0.0,
                          -10.0,
                        ),
                        spreadRadius: 0.1,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (_model.selectednav != 'Home')
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.selectednav = 'Home';
                    safeSetState(() {});
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FFIcons.khome21,
                        color: Color(0x87FAFAFA),
                        size: 24.0,
                      ),
                      Text(
                        'Home',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: const Color(0x87FFFFFF),
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              lineHeight: 1.6,
                            ),
                      ),
                    ],
                  ),
                ),
              if (_model.selectednav == 'Home')
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.selectednav = 'Home';
                    safeSetState(() {});
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FFIcons.khome21,
                        color: Color(0xFCFAFAFA),
                        size: 24.0,
                      ),
                      Text(
                        'Home',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: const Color(0xF9FFFFFF),
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              lineHeight: 1.6,
                            ),
                      ),
                    ],
                  ),
                ),
              if (_model.selectednav == 'Chatter')
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      FFIcons.kcommentAdd1,
                      color: Color(0xFFFAFAFA),
                      size: 24.0,
                    ),
                    Text(
                      'Chatter',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: const Color(0xFEFFFFFF),
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            lineHeight: 1.6,
                          ),
                    ),
                  ],
                ),
              if (_model.selectednav != 'Chatter')
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.selectednav = 'Chatter';
                    safeSetState(() {});
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FFIcons.kcommentAdd1,
                        color: Color(0x8DFAFAFA),
                        size: 24.0,
                      ),
                      Text(
                        'Chatter',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: const Color(0x8BFFFFFF),
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              lineHeight: 1.6,
                            ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 37.0,
                            height: 37.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF4F3F3),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33262626),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              shape: BoxShape.circle,
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: 33.0,
                                height: 33.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF1D2128),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.add,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Post',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: const Color(0xFFF6F4F4),
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                  lineHeight: 1.6,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (_model.selectednav != 'Circle')
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.selectednav = 'Circle';
                    safeSetState(() {});
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FFIcons.kgroupWork11,
                        color: Color(0x87FAFAFA),
                        size: 24.0,
                      ),
                      Text(
                        'Circle',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: const Color(0x84FFFFFF),
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              lineHeight: 1.6,
                            ),
                      ),
                    ],
                  ),
                ),
              if (_model.selectednav == 'Circle')
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      FFIcons.kgroupWork11,
                      color: Color(0xFCFAFAFA),
                      size: 24.0,
                    ),
                    Text(
                      'Circle',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Colors.white,
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            lineHeight: 1.6,
                          ),
                    ),
                  ],
                ),
              if (_model.selectednav != 'Passport')
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.selectednav = 'Passport';
                    safeSetState(() {});
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FFIcons.ksavedItems1,
                        color: Color(0x88FAFAFA),
                        size: 24.0,
                      ),
                      Text(
                        'Passport',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: const Color(0x85FFFFFF),
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              lineHeight: 1.6,
                            ),
                      ),
                    ],
                  ),
                ),
              if (_model.selectednav == 'Passport')
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      FFIcons.ksavedItems1,
                      color: Color(0xFFFAFAFA),
                      size: 24.0,
                    ),
                    Text(
                      'Passport',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: const Color(0xFDFFFFFF),
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            lineHeight: 1.6,
                          ),
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
