import 'package:assignment/login.dart';
import 'package:assignment/sign%20in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: loginpage(),));
}


class loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("Hello There !" ,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),),
          SizedBox(height: 80,),
          Text('Automatic identity verification which enable you to ',style: TextStyle(fontSize: 20, ),),
          Text("verify your identify",style: TextStyle(fontSize: 20)),
          SizedBox(height: 50,),
          Image.asset("assets/icons/login.image 1.jpg",height: 180,width: 180,),
          MaterialButton(
            shape: StadiumBorder(),
              minWidth: 300,
              height: 60,
              onPressed:() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
            },
            color: Colors.blue,
            child: Text("Login",style: TextStyle(fontSize: 10),),
          ),
          SizedBox(height: 25,),
          MaterialButton(
            shape: StadiumBorder(),
            minWidth:300 ,
              height: 60,
              onPressed:() {
              Navigator.push(context, MaterialPageRoute(builder:( context)=>sign()));
              },
            color: Colors.red,
            child: Text("Sign in",style: TextStyle(fontSize: 10),),),

    ],
    ),
    ),
    );
    }
    
  }
  
