import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeBurger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover
          )
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(),
            Spacer(),
            BodyPart(),
            Spacer( flex: 2,)
          ],
        ),
      ),
    );
  }
}


class AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(30),
         boxShadow:[
         BoxShadow(
           offset: Offset(0,-2),
           blurRadius: 20,
           color: Colors.black.withOpacity(0.16)
         )
         ]
       ),
      child: Row(
        children: [

          Image.asset('assets/images/logo.png', width: 30,height: 25,alignment: Alignment.topCenter,)
        ,SizedBox(width: 5,),
          Text("FOODI",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
Spacer(),
          Menu(title: "Home",),
          Menu(title: "About",),
          Menu(title: "Service",),
          Menu(title: "Login",),

          ElevatedButton(style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.yellow),
      ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Get Started',style: TextStyle( color: Colors.black),),
            ),
          ),

        ],
      ),
    );
  }
}
class Menu extends StatelessWidget {
  final String title;

  Menu({required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(title,style: TextStyle(fontSize: 18),),
    );
  }
}
class BodyPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Burger",style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black,fontWeight: FontWeight.bold),

          ),
          Text("Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.\nLorem Ipsum has been",
           style: TextStyle(fontSize: 21,),),
          FittedBox(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(34)
              ),
child: Row(children: [
  Container(height: 38,width: 38,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.yellow,
      shape: BoxShape.circle
    ),
child: Container(
  decoration: BoxDecoration(
    color: Colors.brown,
    shape: BoxShape.circle
  ),
),
  ),
  SizedBox(width: 15,),
  Text("Get Started",style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 19,
    color: Colors.white
  ),),
  SizedBox(width: 15,)
],),
            ),
          )
        ],
      ),
    );
  }
}
