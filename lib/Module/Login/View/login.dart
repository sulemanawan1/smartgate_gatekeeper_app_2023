import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Constants/constants.dart';
import '../../../Widgets/My Button/my_button.dart';
import '../../../Widgets/My Password TextForm Field/my_password_textform_field.dart';
import '../../../Widgets/My TextForm Field/my_textform_field.dart';
import '../Controller/login_controller.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<LoginController>(
          init: LoginController(),
          builder: (controller) {
            return SafeArea(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 79
                          ),
                          Center(
                            child: SvgPicture.asset(
                              "assets/login_vector.svg",
                            ),
                          ),
                         
                          Padding(
                            padding: const EdgeInsets.fromLTRB(44, 29, 0, 0),
                            child: Text(
                              "Welcome To",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.ubuntu(
                                color: HexColor('#4D4D4D'),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 36,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(46, 10, 0, 0),
                            child: Text(
                              "YOUR ACCOUNT",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.ubuntu(
                                color: HexColor('#717171'),
                                letterSpacing: 1.2,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(height: 34,),
                          Center(
                            child: Text(
                              "Log in",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.ubuntu(
                                color: primaryColor,
                                letterSpacing: 1.2,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 12, 17, 0),
                            child:
                            MyTextFormField(
                                width: 343,
                                height: 48,
                              fillColor: HexColor('#F2F2F7'),
                                fill: true,
                                controller: controller.userCnicController,
                                validator:          emptyStringValidator,
                                hintText: 'Enter Cnic',
                                labelText: 'Cnic',
                                onFocusedBorderColor: primaryColor,
                                onEnabledBorderColor: primaryColor),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 12, 17, 0),
                            child:
                            MyPasswordTextFormField(
                               fillcolor: HexColor('#F2F2F7'),
                                filled:  true,
                                width: 343,
                                height: 48,
                                controller: controller.userPasswordController,
                                validator: emptyStringValidator,
                                labelText: 'Password',
                                hintText: 'Enter Password',
                                hintTextColor: primaryColor,
                                togglePasswordView: controller.togglePasswordView,
                                onFocusedBorderColor: primaryColor,
                                onEnabledBorderColor: primaryColor,
                                obscureText: controller.isHidden),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 12, 17, 0),
                            child: MyButton(
                              width: 343,
                              height: 48,
                              color: primaryColor,
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  controller.loginApi(
                                      controller.userCnicController.text,
                                      controller.userPasswordController.text);
                                }
                              },
                              name: 'Login',
                            ),
                          )
                        ]),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
