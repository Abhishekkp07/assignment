import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home:Product_list() ,));
}

class Product_list extends StatelessWidget{
   var images=["https://cdn4.iconfinder.com/data/icons/fruits-79/48/04-apple-512.png",
     "https://cdn0.iconfinder.com/data/icons/fruits/512/Mango.png",
     "https://cdn0.iconfinder.com/data/icons/fruits/512/Banana.png",
     "https://cdn1.iconfinder.com/data/icons/wine-39/496/grapes-bunch-juicy-vine-harvest-512.png",
     "https://cdn2.iconfinder.com/data/icons/fruit-and-vegetable-65/340/watermelon_sweet_fruit_slice_juicy_organic-512.png",
     "https://cdn4.iconfinder.com/data/icons/fruits-79/48/21-kiwi-512.png",
     "https://cdn4.iconfinder.com/data/icons/summer-139/98/19-512.png",
     "https://cdn0.iconfinder.com/data/icons/fruit-84/128/Peach-fruit-food-healthy-diet-512.png"];

   var Name =["Apple","Mango","Banana","Grapes","Water","Kiwi","Orange","Peach",];
   var Unit =["Kg","Doz","Doz","Kg","Kg","Pc","Doz","Kg",];
   var Price =["\$20","\$30","\$10","\$8","\$25","\$40","\$15","\$20",];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(centerTitle: true,
       title: Text('Product List',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
     body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
             childCount: 8,
             (context, index) => Card(color: Colors.blueGrey.shade300,
               child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [Image.network(images[index],height: 80,width: 80,),
                 Column(crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     RichText(text: TextSpan(children: [TextSpan(text: 'Name  :'),
                     TextSpan(text: Name[index],style: TextStyle(fontWeight: FontWeight.bold))])),
                     RichText(text: TextSpan(children: [TextSpan(text: "Unit   :"),TextSpan(text: Unit[index],style: TextStyle(fontWeight: FontWeight.bold))])),
                     RichText(text: TextSpan(children: [TextSpan(text: "Price  :"),TextSpan(text: Price[index],style: TextStyle(fontWeight: FontWeight.bold),)]),
                     )
                    ], ),
                 SizedBox(width: 400,),
                   MaterialButton(onPressed: (){},
                   color:Colors.black ,
                   shape: OutlineInputBorder(),
                   minWidth: 120,
                   height: 40,
                   child: Text("Add to cart",style: TextStyle(color: Colors.white),),)
                 
                 ],
               ),
             ))),
   );
  }

}