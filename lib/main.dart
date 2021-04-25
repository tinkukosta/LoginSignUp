import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(

      debugShowCheckedModeBanner: false,
      home: HomePage(


      ),
    )

  );

}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Welcome" ,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),),
                  SizedBox(
                    height: 16,
                  ),
                  Text("Automatic identify verification which enables you to verify your identity",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                      height: 1.4,
                    ),),
                ],
              ),
              Container(

                height: MediaQuery.of(context).size.height/3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/illustration1.jpg'),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 64,
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(60)
                    ),
                    child: Text("LogIn",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    //padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      border: Border(
                        bottom: BorderSide(color:  Colors.black),
                        top: BorderSide(color:  Colors.black),
                        left: BorderSide(color:  Colors.black),
                        right: BorderSide(color:  Colors.black),
                      )

                    ),
                    child:  MaterialButton(
                      minWidth: double.infinity,
                      height: 64,
                      onPressed: (){},
                      color: Colors.yellow,
                      elevation: 0,
                      shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(60)
                      ),
                      child: Text("SignUp",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
