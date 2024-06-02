// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sft/components/app_textfield.dart';
import 'package:sft/config/app_routes.dart';

import 'package:file_picker/file_picker.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Center(child: Image.asset('assets/images/leaf.png')),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Create Account",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Font1'),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        AppTextfield(hint: 'Username/NGO/Recyc.Comp.'),
                        SizedBox(height: 10),
                        AppTextfield(hint: 'Email ID'),
                        SizedBox(height: 10),
                        AppTextfield(hint: 'Phone Number'),
                        SizedBox(height: 10),
                        AppTextfield(hint: 'Set Password'),
                        SizedBox(height: 10),
                        AppTextfield(hint: '* Registration No.'),
                        SizedBox(height: 10),
                        AppTextfield(hint: '* Address'),
                        SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade100,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                              ),
                              onPressed: () async {
                                final result =
                                    await FilePicker.platform.pickFiles(
                                  type: FileType.custom,
                                  allowedExtensions: ['pdf'],
                                );
                                if (result == null) return;
                              },
                              child: Text(
                                "** Upload Verification Doc",
                                style: TextStyle(color: Colors.grey.shade600),
                              )),
                        ),
                        SizedBox(height: 20),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("* Only for NGO/Recyc.Comp.")),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("** Only for NGO")),
                        SizedBox(height: 160),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 44,
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.teal.shade600),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Text("Sign Up"), Icon(Icons.arrow_forward)],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.login);
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.grey),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
