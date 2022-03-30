
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class ProfilePage extends StatefulWidget {
  

//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   late PageController pageViewController;
//   late double ratingBarValue1;
//   late double ratingBarValue2;
//   late double ratingBarValue3;
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: Color.fromARGB(250, 224, 223, 194),
//       body: SafeArea(
//         child: GestureDetector(
//           onTap: () => FocusScope.of(context).unfocus(),
//           child: Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height * 1,
//             decoration: BoxDecoration(
//               color: Color(0xFFFBF6EF),
//             ),
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Container(
//                     width: MediaQuery.of(context).size.width,
//                     height: 300,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Stack(
//                           children: [
//                             Align(
//                               alignment: AlignmentDirectional(0, 2.39),
//                               child: Image.network(
//                                 'https://picsum.photos/seed/33/600',
//                                 width: MediaQuery.of(context).size.width,
//                                 height: 100,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Align(
//                               alignment: AlignmentDirectional(-0.83, 0),
//                               child: Padding(
//                                 padding:
//                                     EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
//                                 child: Container(
//                                   width: 120,
//                                   height: 120,
//                                   clipBehavior: Clip.antiAlias,
//                                   decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                   ),
//                                   child: Image.network(
//                                     'https://picsum.photos/seed/818/600',
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Align(
//                               alignment: AlignmentDirectional(0.33, 0.76),
//                               child: Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     0, 115, 0, 0),
//                                 child: ElevatedButton(
//                                   onPressed: () {
//                                     print('Button pressed ...');
//                                   },
//                                   text: 'Book a Service',
//                                   options: FFButtonOptions(
//                                     width: 120,
//                                     height: 30,
//                                     color: Colors.white,
//                                     textStyle: FlutterFlowTheme.of(context)
//                                         .subtitle2
//                                         .override(
//                                           fontFamily: 'Poppins',
//                                           color: Color(0xFF084E35),
//                                           fontSize: 12,
//                                         ),
//                                     borderSide: BorderSide(
//                                       color: Color(0xFF084E35),
//                                       width: 1,
//                                     ),
//                                     borderRadius: 15,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Align(
//                               alignment: AlignmentDirectional(0.88, 0.79),
//                               child: Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     0, 100, 0, 0),
//                                 child: FlutterFlowIconButton(
//                                   borderColor: Colors.transparent,
//                                   borderRadius: 30,
//                                   borderWidth: 1,
//                                   buttonSize: 60,
//                                   icon: Icon(
//                                     Icons.bookmark_border,
//                                     color: Color(0xFF084E35),
//                                     size: 30,
//                                   ),
//                                   onPressed: () {
//                                     print('IconButton pressed ...');
//                                   },
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Padding(
//                               padding:
//                                   EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
//                               child: Text(
//                                 'Hello World',
//                                 style: FlutterFlowTheme.of(context)
//                                     .bodyText1
//                                     .override(
//                                       fontFamily: 'Poppins',
//                                       fontSize: 18,
//                                     ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
//                           child: SingleChildScrollView(
//                             scrollDirection: Axis.horizontal,
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Align(
//                                   alignment: AlignmentDirectional(-0.6, 0),
//                                   child: AutoSizeText(
//                                     'Keep your team connected with enterprise Keep your team connected with enterprise-grade video conferencing.',
//                                     textAlign: TextAlign.start,
//                                     style: FlutterFlowTheme.of(context)
//                                         .bodyText2
//                                         .override(
//                                           fontFamily: 'Poppins',
//                                           fontWeight: FontWeight.normal,
//                                         ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Align(
//                               alignment: AlignmentDirectional(-0.6, 0),
//                               child: Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     20, 10, 0, 0),
//                                 child: AutoSizeText(
//                                   'Keep your team connected with enterprise',
//                                   textAlign: TextAlign.start,
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyText2
//                                       .override(
//                                         fontFamily: 'Poppins',
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.normal,
//                                         fontStyle: FontStyle.italic,
//                                       ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                     child: Container(
//                       width: MediaQuery.of(context).size.width,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                       ),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     10, 10, 0, 0),
//                                 child: Text(
//                                   'Charges : ',
//                                   style: FlutterFlowTheme.of(context).bodyText1,
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                     EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                                 child: Text(
//                                   '\$2000 to \$3000',
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyText1
//                                       .override(
//                                         fontFamily: 'Poppins',
//                                         fontWeight: FontWeight.normal,
//                                         fontStyle: FontStyle.italic,
//                                       ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     10, 10, 0, 0),
//                                 child: Text(
//                                   'The charges note to be consider if*',
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyText1
//                                       .override(
//                                         fontFamily: 'Poppins',
//                                         fontWeight: FontWeight.normal,
//                                       ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                     child: Container(
//                       width: MediaQuery.of(context).size.width,
//                       height: 150,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                       ),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Text(
//                                   'About',
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyText1
//                                       .override(
//                                         fontFamily: 'Poppins',
//                                         fontSize: 18,
//                                       ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Text(
//                                   'Keep your team connected with enterprise Keep your team connected with enterprise-grade video conferencing.',
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyText2
//                                       .override(
//                                         fontFamily: 'Poppins',
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.normal,
//                                       ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                     child: Container(
//                       width: MediaQuery.of(context).size.width,
//                       height: 300,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                       ),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Text(
//                                   'Experiences',
//                                   style: FlutterFlowTheme.of(context).subtitle1,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       0, 10, 0, 0),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     children: [
//                                       Container(
//                                         width: 60,
//                                         height: 60,
//                                         clipBehavior: Clip.antiAlias,
//                                         decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                         ),
//                                         child: Image.network(
//                                           'https://picsum.photos/seed/931/600',
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             10, 0, 0, 0),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Row(
//                                               mainAxisSize: MainAxisSize.max,
//                                               children: [
//                                                 Text(
//                                                   'Marketing Executive',
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyText1,
//                                                 ),
//                                               ],
//                                             ),
//                                             Row(
//                                               mainAxisSize: MainAxisSize.max,
//                                               children: [
//                                                 Text(
//                                                   'Keep your team connected with enterprise Keep your team connected with enterprise-grade video conferencing.',
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyText1
//                                                       .override(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight:
//                                                             FontWeight.normal,
//                                                       ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       0, 10, 0, 0),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     children: [
//                                       Container(
//                                         width: 60,
//                                         height: 60,
//                                         clipBehavior: Clip.antiAlias,
//                                         decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                         ),
//                                         child: Image.network(
//                                           'https://picsum.photos/seed/931/600',
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             10, 0, 0, 0),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Row(
//                                               mainAxisSize: MainAxisSize.max,
//                                               children: [
//                                                 Text(
//                                                   'Marketing Executive',
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyText1,
//                                                 ),
//                                               ],
//                                             ),
//                                             Row(
//                                               mainAxisSize: MainAxisSize.max,
//                                               children: [
//                                                 Text(
//                                                   'Keep your team connected with enterprise Keep your team connected with enterprise-grade video conferencing.',
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyText1
//                                                       .override(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight:
//                                                             FontWeight.normal,
//                                                       ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       0, 10, 0, 0),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     children: [
//                                       Container(
//                                         width: 60,
//                                         height: 60,
//                                         clipBehavior: Clip.antiAlias,
//                                         decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                         ),
//                                         child: Image.network(
//                                           'https://picsum.photos/seed/931/600',
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             10, 0, 0, 0),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Row(
//                                               mainAxisSize: MainAxisSize.max,
//                                               children: [
//                                                 Text(
//                                                   'Marketing Executive',
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyText1,
//                                                 ),
//                                               ],
//                                             ),
//                                             Row(
//                                               mainAxisSize: MainAxisSize.max,
//                                               children: [
//                                                 Text(
//                                                   'Keep your team connected with enterprise Keep your team connected with enterprise-grade video conferencing.',
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyText1
//                                                       .override(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight:
//                                                             FontWeight.normal,
//                                                       ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                     child: Container(
//                       width: MediaQuery.of(context).size.width,
//                       height: 300,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                       ),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Text(
//                                   'CV & Certifications',
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyText1
//                                       .override(
//                                         fontFamily: 'Poppins',
//                                         fontSize: 18,
//                                       ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             child: Container(
//                               width: double.infinity,
//                               height: 500,
//                               child: Stack(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         10, 10, 10, 50),
//                                     child: PageView(
//                                       controller: pageViewController ??=
//                                           PageController(initialPage: 0),
//                                       scrollDirection: Axis.horizontal,
//                                       children: [
//                                         Image.network(
//                                           'https://picsum.photos/seed/682/600',
//                                           width: 100,
//                                           height: 100,
//                                           fit: BoxFit.cover,
//                                         ),
//                                         Image.network(
//                                           'https://picsum.photos/seed/659/600',
//                                           width: 100,
//                                           height: 100,
//                                           fit: BoxFit.cover,
//                                         ),
//                                         Image.network(
//                                           'https://picsum.photos/seed/223/600',
//                                           width: 100,
//                                           height: 100,
//                                           fit: BoxFit.cover,
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Align(
//                                     alignment: AlignmentDirectional(0, 1),
//                                     child: Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           0, 0, 0, 20),
//                                       child: SmoothPageIndicator(
//                                         controller: pageViewController ??=
//                                             PageController(initialPage: 0),
//                                         count: 3,
//                                         axisDirection: Axis.horizontal,
//                                         onDotClicked: (i) {
//                                           pageViewController.animateToPage(
//                                             i,
//                                             duration:
//                                                 Duration(milliseconds: 500),
//                                             curve: Curves.ease,
//                                           );
//                                         },
//                                         effect: ExpandingDotsEffect(
//                                           expansionFactor: 2,
//                                           spacing: 8,
//                                           radius: 16,
//                                           dotWidth: 5,
//                                           dotHeight: 5,
//                                           dotColor: Color(0xFF9E9E9E),
//                                           activeDotColor: Color(0xFF3F51B5),
//                                           paintStyle: PaintingStyle.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                     child: Container(
//                       width: MediaQuery.of(context).size.width,
//                       height: 300,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                       ),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Text(
//                                   'Experiences',
//                                   style: FlutterFlowTheme.of(context).subtitle1,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       0, 10, 0, 0),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     children: [
//                                       Container(
//                                         width: 60,
//                                         height: 60,
//                                         clipBehavior: Clip.antiAlias,
//                                         decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                         ),
//                                         child: Image.network(
//                                           'https://picsum.photos/seed/931/600',
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             10, 0, 0, 0),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Row(
//                                               mainAxisSize: MainAxisSize.max,
//                                               children: [
//                                                 Text(
//                                                   'Marketing Executive',
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyText1,
//                                                 ),
//                                                 Padding(
//                                                   padding: EdgeInsetsDirectional
//                                                       .fromSTEB(5, 0, 0, 0),
//                                                   child: RatingBar.builder(
//                                                     onRatingUpdate: (newValue) =>
//                                                         setState(() =>
//                                                             ratingBarValue1 =
//                                                                 newValue),
//                                                     itemBuilder:
//                                                         (context, index) =>
//                                                             Icon(
//                                                       Icons.star_rounded,
//                                                       color: Colors.black,
//                                                     ),
//                                                     direction: Axis.horizontal,
//                                                     initialRating:
//                                                         ratingBarValue1 ??= 3,
//                                                     unratedColor:
//                                                         Color(0xFF9E9E9E),
//                                                     itemCount: 5,
//                                                     itemSize: 15,
//                                                     glowColor: Colors.black,
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                             Row(
//                                               mainAxisSize: MainAxisSize.max,
//                                               children: [
//                                                 Text(
//                                                   'Keep your team connected with enterprise Keep your team connected with enterprise-grade video conferencing.',
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyText1
//                                                       .override(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight:
//                                                             FontWeight.normal,
//                                                       ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       0, 10, 0, 0),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     children: [
//                                       Container(
//                                         width: 60,
//                                         height: 60,
//                                         clipBehavior: Clip.antiAlias,
//                                         decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                         ),
//                                         child: Image.network(
//                                           'https://picsum.photos/seed/931/600',
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             10, 0, 0, 0),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Row(
//                                               mainAxisSize: MainAxisSize.max,
//                                               children: [
//                                                 Text(
//                                                   'Marketing Executive',
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyText1,
//                                                 ),
//                                                 Padding(
//                                                   padding: EdgeInsetsDirectional
//                                                       .fromSTEB(5, 0, 0, 0),
//                                                   child: RatingBar.builder(
//                                                     onRatingUpdate: (newValue) =>
//                                                         setState(() =>
//                                                             ratingBarValue2 =
//                                                                 newValue),
//                                                     itemBuilder:
//                                                         (context, index) =>
//                                                             Icon(
//                                                       Icons.star_rounded,
//                                                       color: Colors.black,
//                                                     ),
//                                                     direction: Axis.horizontal,
//                                                     initialRating:
//                                                         ratingBarValue2 ??= 3,
//                                                     unratedColor:
//                                                         Color(0xFF9E9E9E),
//                                                     itemCount: 5,
//                                                     itemSize: 15,
//                                                     glowColor: Colors.black,
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                             Row(
//                                               mainAxisSize: MainAxisSize.max,
//                                               children: [
//                                                 Text(
//                                                   'Keep your team connected with enterprise Keep your team connected with enterprise-grade video conferencing.',
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyText1
//                                                       .override(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight:
//                                                             FontWeight.normal,
//                                                       ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       0, 10, 0, 0),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     children: [
//                                       Container(
//                                         width: 60,
//                                         height: 60,
//                                         clipBehavior: Clip.antiAlias,
//                                         decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                         ),
//                                         child: Image.network(
//                                           'https://picsum.photos/seed/931/600',
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             10, 0, 0, 0),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Row(
//                                               mainAxisSize: MainAxisSize.max,
//                                               children: [
//                                                 Text(
//                                                   'Marketing Executive',
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyText1,
//                                                 ),
//                                                 Padding(
//                                                   padding: EdgeInsetsDirectional
//                                                       .fromSTEB(5, 0, 0, 0),
//                                                   child: RatingBar.builder(
//                                                     onRatingUpdate: (newValue) =>
//                                                         setState(() =>
//                                                             ratingBarValue3 =
//                                                                 newValue),
//                                                     itemBuilder:
//                                                         (context, index) =>
//                                                             Icon(
//                                                       Icons.star_rounded,
//                                                       color: Colors.black,
//                                                     ),
//                                                     direction: Axis.horizontal,
//                                                     initialRating:
//                                                         ratingBarValue3 ??= 3,
//                                                     unratedColor:
//                                                         Color(0xFF9E9E9E),
//                                                     itemCount: 5,
//                                                     itemSize: 15,
//                                                     glowColor: Colors.black,
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                             Row(
//                                               mainAxisSize: MainAxisSize.max,
//                                               children: [
//                                                 Text(
//                                                   'Keep your team connected with enterprise Keep your team connected with enterprise-grade video conferencing.',
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyText1
//                                                       .override(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight:
//                                                             FontWeight.normal,
//                                                       ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
