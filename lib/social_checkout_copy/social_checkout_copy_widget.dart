import '../flutter_flow/flutter_flow_drop_down_template.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialCheckoutCopyWidget extends StatefulWidget {
  SocialCheckoutCopyWidget({Key key}) : super(key: key);

  @override
  _SocialCheckoutCopyWidgetState createState() =>
      _SocialCheckoutCopyWidgetState();
}

class _SocialCheckoutCopyWidgetState extends State<SocialCheckoutCopyWidget> {
  String dropDownValue1;
  String dropDownValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 30,
                    ),
                    iconSize: 30,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0x9C185B70),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tiny Dancers',
                                style: FlutterFlowTheme.title1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                'June 29th',
                                style: FlutterFlowTheme.title2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          height: 0,
                          indent: 20,
                          endIndent: 20,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '8:30PM - 1:30AM',
                                    style: FlutterFlowTheme.title3.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lesson',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    '3:30 PM - 9:30 PM',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 17,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(1, 5, 0, 0),
                                child: FlutterFlowDropDown(
                                  options: ['1'],
                                  onChanged: (value) {
                                    setState(() => dropDownValue1 = value);
                                  },
                                  width: 60,
                                  height: 40,
                                  textStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                                  fillColor: Color(0x00161616),
                                  elevation: 2,
                                  borderColor: Colors.white,
                                  borderRadius: 0,
                                  margin: EdgeInsets.fromLTRB(11, 0, 5, 1),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0x00EEEEEE),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(2, 23, 0, 0),
                                          child: Text(
                                            '\$0',
                                            style: FlutterFlowTheme.title1
                                                .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 22,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          height: 4,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Social Dancing',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    '9:30 PM - 1:30AM',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 17,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(1, 5, 0, 0),
                                child: FlutterFlowDropDown(
                                  options: ['1'],
                                  onChanged: (value) {
                                    setState(() => dropDownValue2 = value);
                                  },
                                  width: 60,
                                  height: 40,
                                  textStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                                  fillColor: Color(0x00161616),
                                  elevation: 2,
                                  borderColor: Colors.white,
                                  borderRadius: 0,
                                  margin: EdgeInsets.fromLTRB(11, 0, 5, 1),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0x00EEEEEE),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(2, 23, 0, 0),
                                          child: Text(
                                            '\$11',
                                            style: FlutterFlowTheme.title1
                                                .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 22,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          height: 4,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 35, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                    child: Text(
                                      'Total',
                                      style: FlutterFlowTheme.title1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(2, 23, 0, 0),
                                        child: Text(
                                          '\$11',
                                          style:
                                              FlutterFlowTheme.title1.override(
                                            fontFamily: 'Roboto',
                                            fontSize: 22,
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
                              height: 30,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 1),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Add to cart',
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
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 1),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Buy now',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60,
                    color: FlutterFlowTheme.primaryColor,
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
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 1),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Make this a monthly gift',
                  options: FFButtonOptions(
                    width: 250,
                    height: 40,
                    color: Colors.black,
                    textStyle: FlutterFlowTheme.title3.override(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                    ),
                    elevation: 4,
                    borderSide: BorderSide(
                      color: Colors.white,
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
