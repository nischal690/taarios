import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_bar_with_middle_button_copy2_model.dart';
export 'nav_bar_with_middle_button_copy2_model.dart';

class NavBarWithMiddleButtonCopy2Widget extends StatefulWidget {
  const NavBarWithMiddleButtonCopy2Widget({super.key});

  @override
  State<NavBarWithMiddleButtonCopy2Widget> createState() =>
      _NavBarWithMiddleButtonCopy2WidgetState();
}

class _NavBarWithMiddleButtonCopy2WidgetState
    extends State<NavBarWithMiddleButtonCopy2Widget> {
  late NavBarWithMiddleButtonCopy2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarWithMiddleButtonCopy2Model());

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
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    FFIcons.khome21,
                    color: Color(0xFAFAFAFA),
                    size: 24.0,
                  ),
                  Text(
                    'Home',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xbacdffffff),
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                          lineHeight: 1.6,
                        ),
                  ),
                ],
              ),
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
                          color: const Color(0xbacdffffff),
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                          lineHeight: 1.6,
                        ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 24.0,
                    height: 24.0,
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
                        decoration: BoxDecoration(
                          color: const Color(0xFF1D2128),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFFF2EFEF),
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 16.0,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Post',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFFF6F4F4),
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                          lineHeight: 1.6,
                        ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    FFIcons.kgroupWork11,
                    color: Color(0xFFFAFAFA),
                    size: 24.0,
                  ),
                  Text(
                    'Circle',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xbacdffffff),
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                          lineHeight: 1.6,
                        ),
                  ),
                ],
              ),
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
                          color: const Color(0xbacdffffff),
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
