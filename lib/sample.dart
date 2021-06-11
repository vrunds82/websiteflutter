import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'SampleApi.dart';

class SamplePage extends StatefulWidget {
  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  List<SampleUser> getUser = [];

  getList()async{
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'),
    ).then((response) {
      print(response.body);

      var ParsedJson = jsonDecode(response.body);
      getUser = (ParsedJson as List).map((e) => SampleUser.fromJson(e)).toList();

      print(jsonEncode(getUser).toString());
      setState(() {
      });
    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Responsive(
        mobile: Column(
          children: [
            Expanded(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                Text("Id"),
                Text("Name"),
                Text("UserName"),
                Text("Email"),
                Text("Phone"),
                Text("Website")

              ],),
            ),
            Expanded(
              child: ListView.builder
                (
                  itemCount: getUser.length,
                  itemBuilder: (BuildContext ctxt, int Index) {
                    return Row(
                      children: [

                    Column(
                      children: [
                        Text("User Id"),
                        Text(
                        getUser[Index].id.toString(),
                        style: TextStyle(fontSize: 12,color: Colors.blue),
                        ),
                      ],
                    ),
                      ],
                    );
                  }
              ),
            ),
          ],
        ),
        desktop: Expanded(
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    "UserId",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("1")
                ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("Vrunda")
                ],
              ),            SizedBox(width: 10,),
              Column(
                children: [
                  Text(
                    "UserName",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("Vrunda Patel")
                ],
              ),            SizedBox(width: 10,),
              Column(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("V@gmail.com")
                ],
              ),            SizedBox(width: 10,),
              Column(
                children: [
                  Text(
                    "PhoneNumber",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("9898989898")
                ],
              ),            SizedBox(width: 10,),
              Column(
                children: [
                  Text(
                    "Website",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("WWW.google.com")
                ],
              ),            SizedBox(width: 10,),

            ],
          ),
        ),
        tab:  Expanded(
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    "UserId",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("1")
                ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("Vrunda")
                ],
              ),            SizedBox(width: 10,),
              Column(
                children: [
                  Text(
                    "UserName",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("Vrunda Patel")
                ],
              ),            SizedBox(width: 10,),
              Column(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("V@gmail.com")
                ],
              ),            SizedBox(width: 10,),
              Column(
                children: [
                  Text(
                    "PhoneNumber",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("9898989898")
                ],
              ),            SizedBox(width: 10,),
              Column(
                children: [
                  Text(
                    "Website",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("WWW.google.com")
                ],
              ),            SizedBox(width: 10,),

            ],
          ),
        ),
      )

          /* LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < 768) {
              return Column(
                children: [
                   Container(
                    width: 320,
                    height: 180,
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Hii There... \nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    style: TextStyle(fontSize: 22),
                  )
                ],
              );
            } else {
              return Row(
                children: [
                  Container(
                    width: 320,
                    height: 180,
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      "Hii There... \nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(fontSize: 22),
                    ),
                  )
                ],
              );
            }
          },
        ),*/
          ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getList();
  }
}

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tab;
  final Widget desktop;

  Responsive({required this.tab, required this.desktop, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < 768) {
        return mobile;
      } else {
        return tab;
      }
    });
  }
}
