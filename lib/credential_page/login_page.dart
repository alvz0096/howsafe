import 'package:flutter/material.dart';
import 'package:howsafe/utils/dimensions.dart';
import 'package:howsafe/widget/big_text.dart';

import '../widget/small_text.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _form = GlobalKey<FormState>();
  final username = TextEditingController();
  final password = TextEditingController();
  String errrUsername = "";
  String errPassword = "";

  void _saveForm() {
    if (!_form.currentState!.validate()) {
      return;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Welcome ${username.text}"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _form,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: Dimensions.height180,
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Login Label
                    Container(
                      width: Dimensions.width220,
                      child: BigText(
                        text: "Already have an account?",
                        size: Dimensions.fontH26,
                      ),
                    ),
                    Container(
                      child: Image(
                        width: Dimensions.width200 - 50,
                        height: Dimensions.height200 - 45,
                        image: AssetImage(
                          "assets/images/login_image.png",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(
                          left: Dimensions.width20,
                          right: Dimensions.width20,
                          top: Dimensions.height20),
                      child: TextFormField(
                        controller: username,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter username',
                          prefixIcon: Icon(Icons.face),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Username field is required";
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(
                          left: Dimensions.width20,
                          right: Dimensions.width20,
                          top: Dimensions.height20),
                      child: TextFormField(
                        controller: password,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter password',
                          prefixIcon: Icon(Icons.lock_outline),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password field is required";
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: Dimensions.width20,
                        right: Dimensions.width20,
                        top: Dimensions.height20,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextButton(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(15),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.cyan),
                              ),
                            ),
                          ),
                          onPressed: () {
                            _saveForm();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20,
                ),
                padding: EdgeInsets.only(right: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SmallText(
                      text: 'Forgot password?',
                      color: Colors.black,
                      size: Dimensions.font20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
