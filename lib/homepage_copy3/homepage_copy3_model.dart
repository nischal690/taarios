import '/backend/api_requests/api_calls.dart';
import '/components/homeskeleton_widget.dart';
import '/components/nav_bar_with_middle_button_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_copy3_widget.dart' show HomepageCopy3Widget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomepageCopy3Model extends FlutterFlowModel<HomepageCopy3Widget> {
  ///  Local state fields for this page.

  bool follow = false;

  bool like = false;

  bool fulltext = false;

  bool booked = false;

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (location)] action in HomepageCopy3 widget.
  ApiCallResponse? locationloop;
  // Stores action output result for [Custom Action - internetconnect] action in HomepageCopy3 widget.
  bool? internet;
  // Model for homeskeleton component.
  late HomeskeletonModel homeskeletonModel;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  // Model for NavBarWithMiddleButtonCopy component.
  late NavBarWithMiddleButtonCopyModel navBarWithMiddleButtonCopyModel;

  @override
  void initState(BuildContext context) {
    homeskeletonModel = createModel(context, () => HomeskeletonModel());
    navBarWithMiddleButtonCopyModel =
        createModel(context, () => NavBarWithMiddleButtonCopyModel());
  }

  @override
  void dispose() {
    homeskeletonModel.dispose();
    listViewPagingController?.dispose();
    navBarWithMiddleButtonCopyModel.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setListViewController(
    Function(ApiPagingParams) apiCall,
  ) {
    listViewApiCall = apiCall;
    return listViewPagingController ??= _createListViewController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createListViewController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(listViewDiscoverPage);
  }

  void listViewDiscoverPage(ApiPagingParams nextPageMarker) =>
      listViewApiCall!(nextPageMarker).then((listViewDiscoverResponse) {
        final pageItems = (getJsonField(
                  listViewDiscoverResponse.jsonBody,
                  r'''$.data''',
                ) ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listViewPagingController?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listViewDiscoverResponse,
                )
              : null,
        );
      });
}
