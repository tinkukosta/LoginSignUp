import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      SizedBox(height: 12,),
                      Text("Login to your account",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                        ),),
                      SizedBox(height: 40,),
                    ],
                  ),
                ],
              ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 32),
               child: Column(
                 children: <Widget>[
                   makeInput(label: "Email"),
                   makeInput(label: "Password", obscureText: true),
                   makeInput(label: "Comfirm Password", obscureText: true),
                 ],
               ),
             ),
              Padding(
                  padding:EdgeInsets.symmetric(horizontal: 32),
                  child: Container(
                    // padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      // border: Border(
                      //   bottom: BorderSide(color:  Colors.black),
                      //   top: BorderSide(color:  Colors.black),
                      //   left: BorderSide(color:  Colors.black),
                      //   right: BorderSide(color:  Colors.black),
                      // )

                    ),
                    child:  MaterialButton(
                      minWidth: double.infinity,
                      height: 64,
                      onPressed: (){},
                      color: Colors.greenAccent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(60)
                      ),
                      child: Text("Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),),
                    ),
                  )

              ),
            SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                Text("Sign Up",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),),

              ],

            ),
              SizedBox(height: 32,)
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
        ),
        SizedBox(height: 32,)
      ],
    );
  }
}
