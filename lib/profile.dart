import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rebin/signup_page.dart';


class Profile extends StatefulWidget{
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            SizedBox(height: 60,),
            Center(child: Image.asset('assets/images/gg_profile.png')),
            SizedBox(height: 25,),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(27),topRight: Radius.circular(27), bottomLeft: Radius.circular(27), bottomRight: Radius.circular(27))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),

                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 27,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 300,
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "Name",
                                    hintStyle: TextStyle(fontFamily: 'Font1')
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 300,
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "Address",
                                    hintStyle: TextStyle(fontFamily: 'Font1')
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 300,
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "Mobile Number",
                                    hintStyle: TextStyle(fontFamily: 'Font1')
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 300,
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "Email Address",
                                    hintStyle: TextStyle(fontFamily: 'Font1')
                                ),
                              ),
                            ),
                          ),
                          DropdownMenu(
                            label: Text("Register As", style: TextStyle(fontFamily: 'Font1'),),
                              width: 300,
                              menuHeight: 50,
                              dropdownMenuEntries: [
                                DropdownMenuEntry(value: Text("User", style: TextStyle(fontFamily: 'Font1'),), label: 'User'),
                                DropdownMenuEntry(value: Text("NGO", style: TextStyle(fontFamily: 'Font1'),), label: 'NGO'),
                                DropdownMenuEntry(value: Text("Recycling Company", style: TextStyle(fontFamily: 'Font1'),), label: 'Recycling Company')
                              ]
                          ),
                          SizedBox(height: 30,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context){
                                    return SignInPage();
                                  }));
                            },
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.teal.shade900
                              ),
                              child: Center(child: Text("SAVE", style: TextStyle(fontFamily: 'Font1', color: Colors.white, fontSize: 16),)),
                            ),
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