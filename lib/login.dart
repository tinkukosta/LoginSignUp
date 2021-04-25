import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color:Colors.black,
          ),
        ),
      ),
      body: Container(
       height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),),
                      SizedBox(height: 16,),
                      Text("Login to your account",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                        ),),
                    ],
                  ),
                ],
              ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 32),
               child: Column(
                 children: <Widget>[
                   makeInput(label: "Email"),
                 ],
               ),
             )
            ],
          ),
      ),
    );
  }
  Widget makeInput({label, obscureText = false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87,
        ),),
        SizedBox(height: 6,),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey[700]
              )
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey[700],
              )
            )
          ),
        )
      ],
    );
  }
}
