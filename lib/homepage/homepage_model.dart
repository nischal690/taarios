import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/nav_bar_with_middle_button_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  Local state fields for this page.

  bool follow = false;

  bool like = false;

  bool fulltext = false;

  bool booked = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (location)] action in Homepage widget.
  ApiCallResponse? location;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  // Model for NavBarWithMiddleButtonCopy component.
  late NavBarWithMiddleButtonCopyModel navBarWithMiddleButtonCopyModel;

  @override
  void initState(BuildContext context) {
    navBarWithMiddleButtonCopyModel =
        createModel(context, () => NavBarWithMiddleButtonCopyModel());
  }

  @override
  void dispose() {
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
        final pageItems =
            (DiscoverStruct.maybeFromMap(listViewDiscoverResponse.jsonBody)!
                        .data ??
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
