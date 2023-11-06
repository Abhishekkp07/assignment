import 'package:flutter/material.dart';

class login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,color: Colors.black,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Welcome back ! Login with your credentals',style: TextStyle(fontSize: 10),),
            Padding(padding: EdgeInsets.all(25),
            child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),
            hintText: "username",
            labelText: "username"),

            ),),
            SizedBox(height: 20,),
            Padding(padding: EdgeInsets.only(left: 25,right: 25,bottom: 25),
            child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),
            hintText: "password",
              labelText: "password"
            ),),),
            SizedBox(height: 15,),
            MaterialButton(
              minWidth: 200,
                height: 50,
                color: Colors.blue,
                shape: StadiumBorder(),
                onPressed:(){} ,
            child: Text("Login"),),
            SizedBox(height: 30,),
            RichText(text: TextSpan(children: [
              TextSpan(text: "Don't have an account?",style: TextStyle(color: Colors.black,fontSize: 15)),
              TextSpan(text: "Sign up", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
            ]))
          ],

        ),
      ),
    );

  }

}