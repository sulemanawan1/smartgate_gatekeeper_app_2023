import 'package:flutter/material.dart';
import 'package:gatekeeper/Routes/set_routes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../Constants/api_routes.dart';
import '../../../Constants/constants.dart';
import '../../../Widgets/My Back Button/my_back_button.dart';
import '../../../Widgets/My Button/my_button.dart';
import '../Controller/pre_approve_entry_residents_controller.dart';

class PreApproveEntryResidents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PreApproveEntryResdientsController>(
        init: PreApproveEntryResdientsController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
                body: Column(
                  children: [
                    MyBackButton(
                      text: 'Residents',
                    ),
                    Expanded(
                      child: FutureBuilder(
                          future: controller.preApproveEntryResidentApi(
                              controller.userdata.userid!,
                              controller.userdata.bearerToken!),
                          builder: (BuildContext context, AsyncSnapshot snapshot) {
                            if (snapshot.hasData) {
                              return ListView.builder(
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: (){
                                         Get.toNamed(preApprovedGuests, arguments: [
                                    snapshot.data.data[index],
                                    controller.userdata.bearerToken!
                                    ]);
                                      },
                                      child:  Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            24,16,24,0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            // image: DecorationImage(
                                            //   image: AssetImage(
                                            //     'assets/cardbackground.jpeg',
                                            //   ),
                                            //   fit: BoxFit.cover,
                                            // ),
                                            borderRadius:
                                            BorderRadius.circular(17),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    189, 224, 224, 223),
                                                spreadRadius: 5,

                                                blurRadius: 9,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                            color: HexColor('#FFFFFF'),
                                          ),
                                          height: 120,
                                          child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(
                                                          top: 14, left: 8),
                                                      child: Container(
                                                        width: 70.4,
                                                        height: 64,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: NetworkImage(
                                                                   Api. imageBaseUrl+    snapshot
                                                                        .data.data![
                                                                    index]
                                                                        .image
                                                                        .toString()),
                                                                fit: BoxFit
                                                                    .cover),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                7)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(
                                                          left: 18),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Text(
                                                            snapshot
                                                                .data.data![
                                                            index]
                                                                .firstname
                                                                .toString() +
                                                                " " +
                                                                snapshot
                                                                    .data.data![
                                                                index]
                                                                    .lastname
                                                                    .toString(),
                                                            style: TextStyle(
                                                                fontStyle:
                                                                FontStyle
                                                                    .normal,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w500,
                                                                fontSize: 16,
                                                                color: HexColor(
                                                                    '#404345')),
                                                          ),
                                                          Text.rich(
                                                              TextSpan(children: [
                                                                TextSpan(
                                                                  text: 'CNIC:',style: TextStyle(
                                                                  color: HexColor('#1A1A1A'),
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,

                                                                  fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                                  fontSize: 12,
                                                                ),
                                                                ),
                                                                TextSpan(
                                                                  text: snapshot
                                                                      .data.data![index]
                                                                      .cnic
                                                                      .toString(),style: TextStyle(
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,

                                                                  fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w200,
                                                                  fontSize: 12,
                                                                ),
                                                                ),

                                                              ])
                                                          ),

                                                          Text.rich(
                                                            TextSpan(children: [
                                                              TextSpan(
                                                                text: 'Mobile No:',style: TextStyle(
                                                                color: HexColor('#1A1A1A'),

                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,

                                                                fontStyle:
                                                                FontStyle
                                                                    .normal,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                                fontSize: 12,
                                                              ),
                                                              ),
                                                              TextSpan(
                                                                text: snapshot
                                                                  .data.data![index]
                                                                  .cnic
                                                                  .toString(),style: TextStyle(
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,

                                                                fontStyle:
                                                                FontStyle
                                                                    .normal,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w200,
                                                                fontSize: 12,
                                                              ),
                                                              ),

                                                            ])
                                                          ),

                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                              ]),
                                        ),
                                      )

                                    );
                                  },
                                  itemCount: snapshot.data.data.length);

                            } else if (snapshot.hasError) {
                              return Icon(Icons.error_outline);
                            } else {
                              return
                                Center(
                                  child: Column(
                                    children: [
                                      CircularProgressIndicator(color: primaryColor,),
                                    ],
                                  ),
                                );
                            }
                          }),
                    ),
                  ],
                )),
          );
        });
  }
}
