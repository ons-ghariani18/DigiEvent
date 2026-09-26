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
import 'add_photographer_widget.dart' show AddPhotographerWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddPhotographerModel extends FlutterFlowModel<AddPhotographerWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for header2 component.
  late Header2Model header2Model;
  // State field(s) for picture widget.
  FocusNode? pictureFocusNode;
  TextEditingController? pictureTextController;
  String? Function(BuildContext, String?)? pictureTextControllerValidator;
  String? _pictureTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Add a Profetional Title';
    }

    return null;
  }

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
  // State field(s) for Fcb widget.
  FocusNode? fcbFocusNode;
  TextEditingController? fcbTextController;
  String? Function(BuildContext, String?)? fcbTextControllerValidator;
  // State field(s) for Instagram widget.
  FocusNode? instagramFocusNode;
  TextEditingController? instagramTextController;
  String? Function(BuildContext, String?)? instagramTextControllerValidator;
  // State field(s) for Experience widget.
  FocusNode? experienceFocusNode;
  TextEditingController? experienceTextController;
  String? Function(BuildContext, String?)? experienceTextControllerValidator;
  // State field(s) for Prix widget.
  FocusNode? prixFocusNode;
  TextEditingController? prixTextController;
  String? Function(BuildContext, String?)? prixTextControllerValidator;
  String? _prixTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Bio widget.
  FocusNode? bioFocusNode;
  TextEditingController? bioTextController;
  String? Function(BuildContext, String?)? bioTextControllerValidator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();

  @override
  void initState(BuildContext context) {
    header2Model = createModel(context, () => Header2Model());
    pictureTextControllerValidator = _pictureTextControllerValidator;
    prixTextControllerValidator = _prixTextControllerValidator;
  }

  @override
  void dispose() {
    header2Model.dispose();
    pictureFocusNode?.dispose();
    pictureTextController?.dispose();

    titleFocusNode?.dispose();
    titleTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    fcbFocusNode?.dispose();
    fcbTextController?.dispose();

    instagramFocusNode?.dispose();
    instagramTextController?.dispose();

    experienceFocusNode?.dispose();
    experienceTextController?.dispose();

    prixFocusNode?.dispose();
    prixTextController?.dispose();

    bioFocusNode?.dispose();
    bioTextController?.dispose();
  }
}
