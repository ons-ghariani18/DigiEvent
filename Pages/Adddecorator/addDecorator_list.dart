import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/header2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'dart:ui';
import '/index.dart';
import 'add_decorator_widget.dart' show AddDecoratorWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddDecoratorModel extends FlutterFlowModel<AddDecoratorWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header2 component.
  late Header2Model header2Model;
  // State field(s) for profile widget.
  FocusNode? profileFocusNode;
  TextEditingController? profileTextController;
  String? Function(BuildContext, String?)? profileTextControllerValidator;
  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for Facebook widget.
  FocusNode? facebookFocusNode;
  TextEditingController? facebookTextController;
  String? Function(BuildContext, String?)? facebookTextControllerValidator;
  // State field(s) for instagram widget.
  FocusNode? instagramFocusNode;
  TextEditingController? instagramTextController;
  String? Function(BuildContext, String?)? instagramTextControllerValidator;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for specialty widget.
  FocusNode? specialtyFocusNode;
  TextEditingController? specialtyTextController;
  String? Function(BuildContext, String?)? specialtyTextControllerValidator;
  // State field(s) for Bio widget.
  FocusNode? bioFocusNode;
  TextEditingController? bioTextController;
  String? Function(BuildContext, String?)? bioTextControllerValidator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();

  @override
  void initState(BuildContext context) {
    header2Model = createModel(context, () => Header2Model());
  }

  @override
  void dispose() {
    header2Model.dispose();
    profileFocusNode?.dispose();
    profileTextController?.dispose();

    titleFocusNode?.dispose();
    titleTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    facebookFocusNode?.dispose();
    facebookTextController?.dispose();

    instagramFocusNode?.dispose();
    instagramTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    specialtyFocusNode?.dispose();
    specialtyTextController?.dispose();

    bioFocusNode?.dispose();
    bioTextController?.dispose();
  }
}
