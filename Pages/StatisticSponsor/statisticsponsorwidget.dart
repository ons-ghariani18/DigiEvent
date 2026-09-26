import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'statisti_sponsor_model.dart';
export 'statisti_sponsor_model.dart';

class StatistiSponsorWidget extends StatefulWidget {
  const StatistiSponsorWidget({super.key});

  static String routeName = 'statistiSponsor';
  static String routePath = '/statistiSponsor';

  @override
  State<StatistiSponsorWidget> createState() => _StatistiSponsorWidgetState();
}

class _StatistiSponsorWidgetState extends State<StatistiSponsorWidget> {
  late StatistiSponsorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatistiSponsorModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.salesOutput = await queryDemandesSponsorisationsRecordOnce();
      await actions.loadBarChartValue(
        _model.salesOutput!.toList(),
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Sponsor Statistic',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 26,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 370,
                  height: 230,
                  child: FlutterFlowBarChart(
                    barData: [
                      FFBarChartData(
                        yData: FFAppState()
                            .barChartAS
                            .map((e) => e.revenue)
                            .toList(),
                        color: FlutterFlowTheme.of(context).secondary,
                        borderWidth: 3,
                        borderColor: Color(0xFF78AAB8),
                      )
                    ],
                    xLabels: FFAppState()
                        .barChartAS
                        .map((e) => e.statusName)
                        .toList(),
                    barWidth: 10,
                    barBorderRadius: BorderRadius.circular(0),
                    groupSpace: 8,
                    alignment: BarChartAlignment.spaceAround,
                    chartStylingInfo: ChartStylingInfo(
                      enableTooltip: true,
                      tooltipBackgroundColor:
                          FlutterFlowTheme.of(context).tertiary,
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      showGrid: true,
                      borderColor: FlutterFlowTheme.of(context).secondaryText,
                      borderWidth: 5,
                    ),
                    axisBounds: AxisBounds(),
                    xAxisLabelInfo: AxisLabelInfo(
                      title: 'Status',
                      titleTextStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                font: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontStyle,
                                ),
                                fontSize: 20,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                      showLabels: true,
                      labelTextStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                font: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                      labelInterval: 10,
                      reservedSize: 28,
                    ),
                    yAxisLabelInfo: AxisLabelInfo(
                      title: 'Count',
                      titleTextStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                font: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                      showLabels: true,
                      labelTextStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                      labelInterval: 10,
                      labelFormatter: LabelFormatter(
                        numberFormat: (val) => val.toString(),
                      ),
                      reservedSize: 42,
                    ),
                  ),
                ),
                Divider(
                  height: 32,
                  thickness: 1,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                Builder(
                  builder: (context) {
                    final barchartGen = FFAppState().barChartAS.toList();

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: barchartGen.length,
                      itemBuilder: (context, barchartGenIndex) {
                        final barchartGenItem = barchartGen[barchartGenIndex];
                        return Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Slidable(
                            endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              extentRatio: 0.25,
                              children: [
                                SlidableAction(
                                  label: 'Delete',
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).error,
                                  icon: Icons.delete_outline_rounded,
                                  onPressed: (_) {
                                    print('SlidableActionWidget pressed ...');
                                  },
                                ),
                              ],
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: ListTile(
                                title: Text(
                                  barchartGenItem.statusName,
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                ),
                                subtitle: Text(
                                  barchartGenItem.revenue.toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF78AAB8),
                                        fontSize: 18,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                ),
                                trailing: Icon(
                                  Icons.message,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24,
                                ),
                                tileColor: Color(0x2457636C),
                                dense: false,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 12, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
