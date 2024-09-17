import '/backend/api_requests/api_calls.dart';
import '/components/homeskeleton_widget.dart';
import '/components/nav_bar_with_middle_button_copy_widget.dart';
import '/components/no_location_popup_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'homepage_copy2_model.dart';
export 'homepage_copy2_model.dart';

class HomepageCopy2Widget extends StatefulWidget {
  const HomepageCopy2Widget({super.key});

  @override
  State<HomepageCopy2Widget> createState() => _HomepageCopy2WidgetState();
}

class _HomepageCopy2WidgetState extends State<HomepageCopy2Widget> {
  late HomepageCopy2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageCopy2Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0));
      unawaited(
        () async {
          await requestPermission(locationPermission);
        }(),
      );
      if (currentUserLocationValue != null ? true : false) {
        if (functions.returnnulllatlang(currentUserLocationValue)) {
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            enableDrag: false,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: const SizedBox(
                  height: double.infinity,
                  child: NoLocationPopupWidget(),
                ),
              );
            },
          ).then((value) => safeSetState(() {}));

          return;
        } else {
          _model.locationonpageload = await TaarapiGroup.locationCall.call(
            latitude: functions.fetchlatitute(currentUserLocationValue!),
            longitude: functions.fetchlongitude(currentUserLocationValue!),
          );

          if ((_model.locationonpageload?.succeeded ?? true)) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'successful',
                  style: TextStyle(
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
                duration: const Duration(milliseconds: 4000),
                backgroundColor: FlutterFlowTheme.of(context).secondary,
              ),
            );

            context.pushNamed(
              'HomepageCopy3',
              extra: <String, dynamic>{
                kTransitionInfoKey: const TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.fade,
                  duration: Duration(milliseconds: 0),
                ),
              },
            );

            return;
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'failed',
                  style: TextStyle(
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
                duration: const Duration(milliseconds: 4000),
                backgroundColor: FlutterFlowTheme.of(context).secondary,
              ),
            );
            return;
          }
        }
      } else {
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          enableDrag: false,
          context: context,
          builder: (context) {
            return Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: const SizedBox(
                height: double.infinity,
                child: NoLocationPopupWidget(),
              ),
            );
          },
        ).then((value) => safeSetState(() {}));

        return;
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFF1D2128),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 45.0,
                height: 45.0,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/Group_9.png',
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                    child: Icon(
                      FFIcons.kbell11,
                      color: Color(0xFFF0EDED),
                      size: 24.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: 36.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Avatar_1.png',
                          ).image,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Stack(
              children: [
                wrapWithModel(
                  model: _model.homeskeletonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const HomeskeletonWidget(),
                ),
              ],
            ),
          ),
          wrapWithModel(
            model: _model.navBarWithMiddleButtonCopyModel,
            updateCallback: () => safeSetState(() {}),
            child: const NavBarWithMiddleButtonCopyWidget(),
          ),
        ],
      ),
    );
  }
}
