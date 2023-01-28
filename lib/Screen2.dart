import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';

import 'main.dart';

class Screen2 extends StatefulWidget {
final int index;
final product products;
  const Screen2({super.key,required this.index,required this.products});

  @override
  State<Screen2> createState() => _Screen2State(index: index,products: products);
}

class _Screen2State extends State<Screen2> {
final int index;
var products;
  _Screen2State({required this.index,required this.products}) {}

  @override
  Widget build(BuildContext context) {



    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Home1()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),

          ),
          title: Text(
            "Details Screen",
            style: TextStyle(
                color: Colors.black,
              fontSize: 30
            ),
          ),
           backgroundColor: Colors.white,
           centerTitle: true ,
        ),
      body:  Padding(
        padding: const EdgeInsets.only(
          left: 10
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(products.image)),
            Text(products.name,style: TextStyle(fontSize: 40)),
            SizedBox(height: 10,),
            Text(products.price+"\$",style: TextStyle(fontSize: 40)),
            SizedBox(height: 20,),
            Text("More Details",style: TextStyle(fontSize: 30)),
            SizedBox(height: 10,),
            Text(products.details,style:TextStyle(fontSize: 20) ,)
          ],
        ),
      ),

    );
  }


  }

