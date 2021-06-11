

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:CenterView(
      child: Column(
        children: [
          Container(
            height: 100,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  width: 150,
                  child: Icon(Icons.dashboard,size: 50,color: Colors.orange,),
                ),

                Row( mainAxisSize: MainAxisSize.min,
                  children: [

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text("Episode",style: TextStyle(fontSize: 20),),
                    ),
                    SizedBox(width: 60,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text("About",style: TextStyle(fontSize: 20),),
                    ),

                  ],
                )
              ],
            ),
          ),
          Expanded(flex: 2,
              child: Column(
                children: [
                  Row(mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CourseDetail(),
                      SizedBox(height: 100,),
                      Expanded(child: Center(child: CallToAction(title: 'Join Course',)))
                    ],
                  ),
                ],
              )),

        ],
      ),
    ),
    );
  }
}



class CenterView extends StatelessWidget {

  final Widget child;
  const CenterView({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 70, horizontal: 60),
      alignment: Alignment.topCenter,
       child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 1200),
        child: child,
       ),
    );
  }
}

class CourseDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,

      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
    Text("FLUTTER WEB.\nTHE BASICS.",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,height: 0.9,
    fontSize: 60),)
      ,SizedBox(height: 30,),
          Text("Flutter widgets are built using a modern framework that takes inspiration from React. The central idea is that you build your UI out of widgets. Widgets describe what their view should look like given their current configuration and state. When a widget’s state changes, the widget rebuilds its description.",
          style: TextStyle(fontSize: 14,height: 1.7),)

        ],
      ),
    );
  }
}
class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(
  {required this.title}
      );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 60),
      child: Text(title, style: TextStyle(
        fontSize: 18,fontWeight: FontWeight.w800,color: Colors.white
      ),),
      decoration: BoxDecoration(
        color: Colors.tealAccent,
         borderRadius: BorderRadius.circular(5)
      ),
    );
  }
}class ScreenType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
