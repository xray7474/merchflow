import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalEditTemplateModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for titleSwitch widget.
  bool? titleSwitchValue;
  // State field(s) for tagsSwitch widget.
  bool? tagsSwitchValue;
  // State field(s) for descriptionSwitch widget.
  bool? descriptionSwitchValue;
  // State field(s) for upscaleSwitch widget.
  bool? upscaleSwitchValue;
  // State field(s) for bgremoveSwitch widget.
  bool? bgremoveSwitchValue;
  // State field(s) for trademarkSwitch widget.
  bool? trademarkSwitchValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
  }

  /// Additional helper methods are added here.

}
