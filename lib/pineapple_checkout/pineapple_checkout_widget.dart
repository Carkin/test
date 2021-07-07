import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PineappleCheckoutWidget extends StatefulWidget {
  PineappleCheckoutWidget({Key key}) : super(key: key);

  @override
  _PineappleCheckoutWidgetState createState() =>
      _PineappleCheckoutWidgetState();
}

class _PineappleCheckoutWidgetState extends State<PineappleCheckoutWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 1, 5, 0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0x56184770),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jeannie Lin',
                                    style: FlutterFlowTheme.title1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Teaches micro and tango',
                                    style: FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Poppins',
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    'assets/images/flower blue.png',
                                    width: 35,
                                    fit: BoxFit.contain,
                                  ),
                                  Text(
                                    'Favorited by 457',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        indent: 10,
                        endIndent: 10,
                        color: Colors.white,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: AutoSizeText(
                                  'Send Jeannie a pineapple to show your \\nappreciation for her. This can be a one-time \\ndonation, or it can monthly.',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: FlutterFlowTheme.primaryColor,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/Pineapple2.png',
                              width: 50,
                              height: 80,
                              fit: BoxFit.fitHeight,
                            ),
                            Image.asset(
                              'assets/images/Pineapple2.png',
                              width: 50,
                              height: 80,
                              fit: BoxFit.fitHeight,
                            ),
                            Image.asset(
                              'assets/images/Pineapple2.png',
                              width: 50,
                              height: 80,
                              fit: BoxFit.fitHeight,
                            )
                          ],
                        ),
                      ),
                      Divider(
                        endIndent: 20,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: AutoSizeText(
                          'Sending three pineapples',
                          style: FlutterFlowTheme.title1.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                      child: Text(
                        'Total',
                        style: FlutterFlowTheme.title1.override(
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(2, 0, 10, 0),
                          child: Text(
                            '\$9',
                            style: FlutterFlowTheme.title1.override(
                              fontFamily: 'Acme',
                              fontSize: 45,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                indent: 20,
                endIndent: 20,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 1),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Make this a monthly gift',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60,
                    color: Colors.black,
                    textStyle: FlutterFlowTheme.title1.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    elevation: 4,
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: 5,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 1),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Checkout',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60,
                    color: Color(0xFFFF7A00),
                    textStyle: FlutterFlowTheme.title1.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    elevation: 4,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 5,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
