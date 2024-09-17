import '/backend/api_requests/api_calls.dart';
import '/components/image_widget.dart';
import '/components/nav_bar_with_middle_button_copy_widget.dart';
import '/components/no_location_popup_widget.dart';
import '/components/post_copy2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'homepage_model.dart';
export 'homepage_model.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({super.key});

  @override
  State<HomepageWidget> createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  late HomepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
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
          _model.location = await TaarapiGroup.locationCall.call();

          if ((_model.location?.succeeded ?? true)) {
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
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: SizedBox(
                      width: 36.0,
                      height: 36.0,
                      child: custom_widgets.ProfilePicture(
                        width: 36.0,
                        height: 36.0,
                        userId: 'cfc7b662-3180-434f-991c-f3d080aa3bb4',
                        name: 'Rajat',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontsize: 12,
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
            child: RefreshIndicator(
              onRefresh: () async {},
              child: PagedListView<ApiPagingParams, dynamic>(
                pagingController: _model.setListViewController(
                  (nextPageMarker) => TaarapiGroup.discoverCall.call(
                    page: 1,
                    pageSize: 10,
                    authToken: '6428cf8d-4450-45a4-8e81-ff140ee3b8a9',
                  ),
                ),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                reverse: false,
                scrollDirection: Axis.vertical,
                builderDelegate: PagedChildBuilderDelegate<dynamic>(
                  // Customize what your widget looks like when it's loading the first page.
                  firstPageProgressIndicatorBuilder: (_) => const Center(
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: ImageWidget(),
                    ),
                  ),
                  // Customize what your widget looks like when it's loading another page.
                  newPageProgressIndicatorBuilder: (_) => const Center(
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: ImageWidget(),
                    ),
                  ),

                  itemBuilder: (context, _, eventsIndex) {
                    final eventsItem =
                        _model.listViewPagingController!.itemList![eventsIndex];
                    return PostCopy2Widget(
                      key: Key(
                          'Keyz3h_${eventsIndex}_of_${_model.listViewPagingController!.itemList!.length}'),
                      description: getJsonField(
                        eventsItem.toMap(),
                        r'''$.description''',
                      ).toString(),
                      name: getJsonField(
                        eventsItem.toMap(),
                        r'''$.name''',
                      ).toString(),
                      category: getJsonField(
                        eventsItem.toMap(),
                        r'''$.category.name''',
                      ).toString(),
                      maskid: getJsonField(
                        eventsItem.toMap(),
                        r'''$.maskedid''',
                      ).toString(),
                      likes: getJsonField(
                        eventsItem.toMap(),
                        r'''$.stats.commentCount''',
                      ),
                      comment: getJsonField(
                        eventsItem.toMap(),
                        r'''$.stats.commentCount''',
                      ),
                      follow: getJsonField(
                        eventsItem.toMap(),
                        r'''$.stats.userActions.isFollowing''',
                      ),
                      start: getCurrentTimestamp,
                    );
                  },
                ),
              ),
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
