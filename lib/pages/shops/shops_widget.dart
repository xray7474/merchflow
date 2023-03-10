import '/components/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:rive/rive.dart' hide LinearGradient;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shops_model.dart';
export 'shops_model.dart';

class ShopsWidget extends StatefulWidget {
  const ShopsWidget({
    Key? key,
    String? userId,
    String? shops,
  })  : this.userId = userId ?? '0',
        this.shops = shops ?? 'shops',
        super(key: key);

  final String userId;
  final String shops;

  @override
  _ShopsWidgetState createState() => _ShopsWidgetState();
}

class _ShopsWidgetState extends State<ShopsWidget> {
  late ShopsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopsModel());

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
