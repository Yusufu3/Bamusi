import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chemipep_model.dart';
export 'chemipep_model.dart';

class ChemipepWidget extends StatefulWidget {
  const ChemipepWidget({super.key});

  static String routeName = 'chemipep';
  static String routePath = '/chemipep';

  @override
  State<ChemipepWidget> createState() => _ChemipepWidgetState();
}

class _ChemipepWidgetState extends State<ChemipepWidget> {
  late ChemipepModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChemipepModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FlutterFlowPdfViewer(
                  assetPath: 'assets/pdfs/Chemistry_.pdf',
                  height: 1257.0,
                  horizontalScroll: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
