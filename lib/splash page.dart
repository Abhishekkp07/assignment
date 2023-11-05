import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home:splash() ,));

}
class splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:100,),
            Image.asset("assets/icons/instagram.png",height: 120,width: 120,),
            SizedBox(height: 300,),
            Text("from",style:TextStyle(fontSize: 15) ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/meta-logo.png",height: 20,width: 20,),
                Text('Meta',style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold),)
              ],
            ),

          ],



        ),
      ),
    );
  }

}