import '/backend/api_requests/api_calls.dart';
import '/components/empty1_widget.dart';
import '/components/homeskeleton_widget.dart';
import '/components/logoanimation_widget.dart';
import '/components/nav_bar_with_middle_button_copy_widget.dart';
import '/components/post_copy_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'homepage_copy3_model.dart';
export 'homepage_copy3_model.dart';

class HomepageCopy3Widget extends StatefulWidget {
  const HomepageCopy3Widget({super.key});

  @override
  State<HomepageCopy3Widget> createState() => _HomepageCopy3WidgetState();
}

class _HomepageCopy3WidgetState extends State<HomepageCopy3Widget> {
  late HomepageCopy3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageCopy3Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0));
      await Future.wait([
        Future(() async {
          while (currentUserLocationValue != null) {
            await Future.delayed(const Duration(milliseconds: 5000));
            _model.locationloop = await TaarapiGroup.locationCall.call(
              latitude: functions.fetchlatitute(currentUserLocationValue!),
              longitude: functions.fetchlongitude(currentUserLocationValue!),
            );

            if ((_model.locationloop?.succeeded ?? true)) {
              return;
            }

            return;
          }
        }),
        Future(() async {
          _model.internet = await actions.internetconnect();
          if (_model.internet!) {
            await Future.delayed(const Duration(milliseconds: 35000));
            _model.loading = false;
            safeSetState(() {});
            return;
          } else {
            _model.loading = true;
            safeSetState(() {});
            return;
          }
        }),
      ]);
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
            child: Stack(
              children: [
                if (_model.loading)
                  wrapWithModel(
                    model: _model.homeskeletonModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const HomeskeletonWidget(),
                  ),
                RefreshIndicator(
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
                      firstPageProgressIndicatorBuilder: (_) => const SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: LogoanimationWidget(),
                      ),
                      // Customize what your widget looks like when it's loading another page.
                      newPageProgressIndicatorBuilder: (_) => const SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: LogoanimationWidget(),
                      ),
                      noItemsFoundIndicatorBuilder: (_) => const Center(
                        child: SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: Empty1Widget(),
                        ),
                      ),
                      itemBuilder: (context, _, eventsIndex) {
                        final eventsItem = _model
                            .listViewPagingController!.itemList![eventsIndex];
                        return PostCopyWidget(
                          key: Key(
                              'Keyvih_${eventsIndex}_of_${_model.listViewPagingController!.itemList!.length}'),
                          name: getJsonField(
                            eventsItem,
                            r'''$.name''',
                          ).toString(),
                          description: getJsonField(
                            eventsItem,
                            r'''$.description''',
                          ).toString(),
                          likes: getJsonField(
                            eventsItem,
                            r'''$.stats.likeCount''',
                          ),
                          comment: getJsonField(
                            eventsItem,
                            r'''$.stats.commentCount''',
                          ),
                          isfollowing: getJsonField(
                            eventsItem,
                            r'''$.stats.userActions.isFollowing''',
                          ),
                          isliking: getJsonField(
                            eventsItem,
                            r'''$.stats.userActions.hasLiked''',
                          ),
                          category: getJsonField(
                            eventsItem,
                            r'''$.category.name''',
                          ).toString(),
                          date: functions.stringtodatetime(getJsonField(
                            eventsItem,
                            r'''$.start''',
                          ).toString()),
                          images:
                              functions.convertstringtoimagepath((getJsonField(
                            eventsItem,
                            r'''$.image''',
                            true,
                          ) as List)
                                  .map<String>((s) => s.toString())
                                  .toList()),
                          maskid: getJsonField(
                            eventsItem,
                            r'''$.maskedId''',
                          ).toString(),
                          commentcount: getJsonField(
                            eventsItem,
                            r'''$.stats.commentCount''',
                          ),
                        );
                      },
                    ),
                  ),
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
