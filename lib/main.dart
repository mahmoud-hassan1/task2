import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screen2.dart';

class product{
  String details;
  String name;
  String price;
  String image;
  product({
    required this.name,
    required this.price,
    required this.image,
    required this.details}){}
}


void main(List<String> args) {
  runApp(Home1());
}

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  @override


  Widget build(BuildContext context) {
    List<product>  products = [
      product(details: "Apple AirPods Pro MWP22AM/A Speaker with Charging Case - White with Any Mobile Bluetooth High Quality and Pure Sound",
          image: "img/AirPods.jpg",
          name: "AirPods",
          price: "500"),
      product(details: "Value Smash Full Screen Bluetooth Heart Rate Monitor Smartwatch Compatible with Apple iOS Android Phone (Black)",
          image: "img/Smartwatch.jpg",
          name: "Smartwatch",
          price: "300"),
      product(details: "Adidas Game Court Contrast-Stripe Lace-Up Tennis Sneakers for Men",
          image: "img/R.png",
          name: "adidas shoes",
          price: "1000"),
      product(details: "Apple AirPods Pro MWP22AM/A Speaker with Charging Case - White with Any Mobile Bluetooth High Quality and Pure Sound",
          image: "img/AirPods.jpg",
          name: "AirPods",
          price: "500"),
      product(details: "Adidas Game Court Contrast-Stripe Lace-Up Tennis Sneakers for Men",
          image: "img/R.png",
          name: "adidas shoes",
          price: "1000"),
      product(details: "Value Smash Full Screen Bluetooth Heart Rate Monitor Smartwatch Compatible with Apple iOS Android Phone (Black)",
          image: "img/Smartwatch.jpg",
          name: "Smartwatch",
          price: "300"),


    ] ;


    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
                "SHOPPERS",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                ),
              )
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.only(
            top: 40,
            right: 5,
              left: 5,
          ),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio:1 ,
              mainAxisSpacing: 50,
              crossAxisSpacing: 30,
              maxCrossAxisExtent: 200,
            ),
            itemBuilder: (_, int index) {
              return  Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(30),

                child: Container(

                  decoration:
                  BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                   border: Border.all(color: Color.fromRGBO(195, 195, 195, 1),width: 3),

                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Screen2(index: index,products: products[index],)));
                    },
                    child: Column(
                          children:    [

                            SizedBox(height: 5,),

                            Expanded(child: Image.asset(products[index].image)),
                            Text(
                                products[index].name,
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              products[index].price+"\$",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(height: 5),

                          ]


                    ),

                  ),
                ),
              );
            },
          ),
        )
    );
  }
}


