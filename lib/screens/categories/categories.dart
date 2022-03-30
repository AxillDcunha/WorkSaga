// import '../flutter_flow/flutter_flow_theme.dart';
// import '../flutter_flow/flutter_flow_util.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomePageWidget extends StatefulWidget {
//   const HomePageWidget({Key key}) : super(key: key);

//   @override
//   _HomePageWidgetState createState() => _HomePageWidgetState();
// }

// class _HomePageWidgetState extends State<HomePageWidget> {
//   TextEditingController textController;
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     textController = TextEditingController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//       body: GestureDetector(
//         onTap: () => FocusScope.of(context).unfocus(),
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height * 1,
//           constraints: BoxConstraints(
//             maxWidth: MediaQuery.of(context).size.width,
//             maxHeight: MediaQuery.of(context).size.height * 1,
//           ),
//           decoration: BoxDecoration(
//             color: Color(0xFFEEEEEE),
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   child: Stack(
//                     children: [
//                       Align(
//                         alignment: AlignmentDirectional(0, 0),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.only(
//                             bottomLeft: Radius.circular(50),
//                             bottomRight: Radius.circular(0),
//                             topLeft: Radius.circular(0),
//                             topRight: Radius.circular(0),
//                           ),
//                           child: Image.asset(
//                             'assets/images/Group_67_(1).png',
//                             width: MediaQuery.of(context).size.width,
//                             height: 300,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       Align(
//                         alignment: AlignmentDirectional(0, -0.45),
//                         child: Padding(
//                           padding:
//                               EdgeInsetsDirectional.fromSTEB(35, 240, 0, 0),
//                           child: Container(
//                             width: 340,
//                             height: 130,
//                             decoration: BoxDecoration(
//                               color: Color(0xFFDBECF4),
//                               borderRadius: BorderRadius.only(
//                                 bottomLeft: Radius.circular(30),
//                                 bottomRight: Radius.circular(10),
//                                 topLeft: Radius.circular(10),
//                                 topRight: Radius.circular(10),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(45, 175, 0, 0),
//                         child: Container(
//                           width: 280,
//                           height: 38,
//                           decoration: BoxDecoration(
//                             color: Color(0xFFEEEEEE),
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                           child: TextFormField(
//                             controller: textController,
//                             obscureText: false,
//                             decoration: InputDecoration(
//                               enabledBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(
//                                   color: Color(0x00000000),
//                                   width: 1,
//                                 ),
//                                 borderRadius: const BorderRadius.only(
//                                   topLeft: Radius.circular(4.0),
//                                   topRight: Radius.circular(4.0),
//                                 ),
//                               ),
//                               focusedBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(
//                                   color: Color(0x00000000),
//                                   width: 1,
//                                 ),
//                                 borderRadius: const BorderRadius.only(
//                                   topLeft: Radius.circular(4.0),
//                                   topRight: Radius.circular(4.0),
//                                 ),
//                               ),
//                               contentPadding:
//                                   EdgeInsetsDirectional.fromSTEB(20, 7, 0, 0),
//                               suffixIcon: Icon(
//                                 Icons.search,
//                                 color: Color(0xFF757575),
//                                 size: 22,
//                               ),
//                             ),
//                             style: FlutterFlowTheme.of(context).bodyText1,
//                           ),
//                         ),
//                       ),
//                       Column(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Align(
//                             alignment: AlignmentDirectional(0, 0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Align(
//                                   alignment: AlignmentDirectional(-0.2, -0.3),
//                                   child: Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         15, 100, 0, 0),
//                                     child: Text(
//                                       'Work Saga',
//                                       style: FlutterFlowTheme.of(context)
//                                           .bodyText1
//                                           .override(
//                                             fontFamily: 'Poppins',
//                                             color: FlutterFlowTheme.of(context)
//                                                 .secondaryBackground,
//                                             fontSize: 24,
//                                             fontWeight: FontWeight.w800,
//                                           ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Padding(
//                                 padding:
//                                     EdgeInsetsDirectional.fromSTEB(15, 0, 5, 1),
//                                 child: Icon(
//                                   Icons.location_pin,
//                                   color: FlutterFlowTheme.of(context)
//                                       .secondaryBackground,
//                                   size: 17,
//                                 ),
//                               ),
//                               Text(
//                                 'Vasai-Virar, Maharashtra',
//                                 style: FlutterFlowTheme.of(context)
//                                     .bodyText1
//                                     .override(
//                                       fontFamily: 'Poppins',
//                                       color: FlutterFlowTheme.of(context)
//                                           .secondaryBackground,
//                                       fontSize: 11,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Column(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(35, 20, 0, 0),
//                       child: Container(
//                         width: 340,
//                         height: 130,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFCBDEED),
//                           borderRadius: BorderRadius.only(
//                             bottomLeft: Radius.circular(30),
//                             bottomRight: Radius.circular(10),
//                             topLeft: Radius.circular(10),
//                             topRight: Radius.circular(10),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(35, 20, 0, 0),
//                       child: Container(
//                         width: 340,
//                         height: 130,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFB8CEE3),
//                           borderRadius: BorderRadius.only(
//                             bottomLeft: Radius.circular(30),
//                             bottomRight: Radius.circular(10),
//                             topLeft: Radius.circular(10),
//                             topRight: Radius.circular(10),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
