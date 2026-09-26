import '/backend/backend.dart';
import '/components/empty_list_widget.dart';
import '/components/header2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'event_list_search_widget.dart' show EventListSearchWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class EventListSearchModel extends FlutterFlowModel<EventListSearchWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header2 component.
  late Header2Model header2Model;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<EventRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {
    header2Model = createModel(context, () => Header2Model());
  }

  @override
  void dispose() {
    header2Model.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
