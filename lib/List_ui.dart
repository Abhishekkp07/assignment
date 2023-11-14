import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: list_ui(),
    debugShowCheckedModeBanner: false,
  ));
}

class list_ui extends StatelessWidget {
  var Images = [
    "https://images.thrillophilia.com/image/upload/s--bfQhngUq--/c_fill,f_auto,fl_strip_profile,h_775,q_auto,w_1600/v1/images/photos/000/112/360/original/1568804002_India_Gate.jpg.jpg?1568804002",
    "https://cdn.getyourguide.com/img/location/537cc9f03148f.jpeg/88.jpg",
    "https://th.bing.com/th/id/OIP.z8pKByFWQPCNUmEH4guKlgHaE8?pid=ImgDet&w=5250&h=3500&rs=1",
    "https://a.cdn-hotels.com/gdcs/production188/d730/486615b3-edec-4d09-8fbf-524ab26c3ee4.jpg",
    "https://th.bing.com/th/id/R.c7026513d3ec28b511667c2870fcca5e?rik=J9TfT1rF3XrotQ&riu=http%3a%2f%2fwww.getsready.com%2fwp-content%2fuploads%2f2016%2f03%2fnight-view-of-statue-of-liberty.jpg&ehk=Fuqnna4tkv%2bXkqeSh3NLp2k%2b3nMhY9JEHAz3SWlqwsI%3d&risl=&pid=ImgRaw&r=0"
  ];
  var text = ["Delhi", "Finland", "Londan", "Vancouver", 'New york'];
  var capital = ["India", "Europe", "UK", "Canada", "America"];
  var ppl = ["Population:32.9 mill", "Population:5.54 mill", "Population:8.8 mill", "Population:2.6 mill", "Population:5.6 mill"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE65100),
        title: Padding(
          padding: const EdgeInsets.only(left: 650, right: 150),
          child: Text(
            "Cities Around World",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, Index) {
            return Card(
              child: Padding(
                padding: EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Image.network(Images[Index],
                        height: 125, width: 125, fit: BoxFit.cover),
                    Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text[Index],
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            capital[Index],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            ppl[Index],
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              color: Colors.orange,
            );
          },
          separatorBuilder: (context, Index) {
            return SizedBox(height: 5,);
          },
          itemCount: 5),
    );
  }
}
