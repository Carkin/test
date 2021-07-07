import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewDanceStyleWidget extends StatefulWidget {
  NewDanceStyleWidget({Key key}) : super(key: key);

  @override
  _NewDanceStyleWidgetState createState() => _NewDanceStyleWidgetState();
}

class _NewDanceStyleWidgetState extends State<NewDanceStyleWidget> {
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
      backgroundColor: Color(0xFF0E0E0E),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 1, 0),
                child: Stack(
                  alignment: Alignment(-0.8, 0),
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: Image.asset(
                        'assets/images/Zouk sydney 400 x 200.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: Alignment(0, 0),
                            child: Text(
                              'Zouk',
                              style: FlutterFlowTheme.title1.override(
                                fontFamily: 'Poppins',
                                fontSize: 55,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                child: Text(
                  'Brazilian Zouk is a partner dance which began in Brazil during the early 1990s. Brazilian Zouk evolved from the partner dance known as the Lambada. As the Lambada music genre went out of fashion, Lambada dancers turned to Caribbean Zouk (from the francophone, Caribbean Islands) as their music of choice. It was this transition that birthed the dance known as Brazilian Zouk. The term \"Brazilian Zouk\" was adopted in order to distinguish the dance style from the musical genre \"Caribbean Zouk\". Nowadays the term \"Zouk\" is commonly used to refer to the \"Brazilian Zouk\" dance style. The most characteristic feature of Brazilian Zouk is the follower\'s upper body movements which are led out of axis by intricate leading and following techniques. Other features include body isolations, tilted turns and more recently counter-balance techniques. Brazilian Zouk is a dance with well defined basic steps and rhythmic patterns. The representation of these steps and rhythmic patterns varies depending on the substyle of Zouk. The overall plasticity of the movements and the range of musical genres it is danced to, make Brazilian Zouk a partner dance that caters to creativity and improvisation. Over time, Zouk dancers have experimented and incorporated other styles of music into Zouk, such as R\'n\'B, pop, hip hop and contemporary (amongst others).',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 18,
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
