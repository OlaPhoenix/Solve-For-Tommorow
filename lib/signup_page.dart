import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebin/profile.dart';

class SignInPage extends StatefulWidget{
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.teal.shade900
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 75,),
            Center(child: Image.asset('assets/images/bxs_leaf.png')),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 27, fontFamily: 'Font1'),)),
            ),
            SizedBox(height: 13,),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),

                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 35,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  hintText: "Email ID or Phone number",
                                  hintStyle: TextStyle(fontFamily: 'Font1')
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  hintText: "Password",
                                  hintStyle: TextStyle(fontFamily: 'Font1')
                              ),
                            ),
                          ),
                          SizedBox(height: 6,),
                          Padding(
                            padding: const EdgeInsets.only(left: 95.0),
                            child: Text("Forgot Password?", style: TextStyle(color: Colors.red, fontFamily: 'Font1'),),
                          ),
                          SizedBox(height: 22,),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context){
                                    return Profile();
                                  }));
                            },
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.teal.shade900
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 48.0),
                                      child: Text("LOGIN", style: TextStyle(fontFamily: 'Font1', color: Colors.white, fontSize: 16),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Image.asset('assets/images/solar_login-outline.png'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Center(child: Text("Or Sign In With", style: TextStyle(fontFamily: 'Font1', color: Colors.grey),)),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.teal.shade900
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 26.0),
                                            child: Center(child: Icon(Icons.facebook, size: 30, color: Colors.white,)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 30,),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.teal.shade900
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 26.0),
                                            child: Center(child: Icon(Icons.email, size: 28, color: Colors.white,)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}