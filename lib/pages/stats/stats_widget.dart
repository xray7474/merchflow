import '/components/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:rive/rive.dart' hide LinearGradient;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'stats_model.dart';
export 'stats_model.dart';

class StatsWidget extends StatefulWidget {
  const StatsWidget({
    Key? key,
    String? userId,
    String? currentPage,
  })  : this.userId = userId ?? '0',
        this.currentPage = currentPage ?? 'stats',
        super(key: key);

  final String userId;
  final String currentPage;

  @override
  _StatsWidgetState createState() => _StatsWidgetState();
}

class _StatsWidgetState extends State<StatsWidget> {
  late StatsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                ),
                ClipRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 99.0,
                      sigmaY: 99.0,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: RiveAnimation.asset(
                        'assets/rive_animations/fundo_giratorio.riv',
                        artboard: 'New Artboard',
                        fit: BoxFit.cover,
                        controllers: _model.riveAnimationControllers,
                      ),
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.sidebarModel,
                  updateCallback: () => setState(() {}),
                  child: SidebarWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
