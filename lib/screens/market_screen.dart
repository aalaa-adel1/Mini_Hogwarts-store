import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:market/models/card_details.dart';
import 'package:market/models/card_details.dart';
import 'package:market/models/card_details.dart';
import 'package:market/models/card_details.dart';

import '../component/partitions.dart';
import '../icons.dart';
import '../models/card_details.dart';
import '../models/card_details.dart';
import '../models/card_details.dart';

class MarketScreen extends StatefulWidget {

@override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen>with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=new TabController(length: 4, vsync: this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,

                colors:[
                  Color(0xffb1947f),
                  Color(0xff52342d),


                ]

            )
          ),
        ),
        backgroundColor: Colors.white,
       leading: IconButton(
           onPressed: (){},
           icon: Icon(
               MyFlutterApp.noun_wizard_hat_4420259,
             color: Colors.black,
             size: 50,
           ),
       ),
       title:Text(
         "Hogwarts Market",
         style: TextStyle(
           color: Colors.black,
           fontFamily: 'MagicSchoolOne',
           fontSize: 30
         ),
       ),
        actions: [
          IconButton(
          onPressed: (){},
          icon:Icon(
            MyFlutterApp.noun_the_elder_wand_1425540,
            color: Colors.black,
            size: 40,
          ),


    ),
          IconButton(
            onPressed: (){},
            icon:Icon(
              MyFlutterApp.noun_hogwarts_234919,
              color: Colors.black,
              size: 40,
            ),


          )



        ],
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.cyan.shade50,
                        focusColor: Colors.black,
                        hintText: "Find what you want in Hogwarts",
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                            fontSize: 10
                          ),


                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.align_vertical_center_outlined,
                          color: Colors.black,
                          size: 25,
                        )
                    ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DefaultTabController(
                length: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child:   TabBar(
                        controller: controller,
                        unselectedLabelColor: Colors.black,
                        // labelColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.black,
                        tabs: [
                          Container (
                            width: 40,
                            height: 36,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff921922),
                                      Color(0xffefa420),

                                    ]
                                )
                            ),
                            child: Tab(
                              //color: Colors.grey,
                              icon: Icon(
                                MyFlutterApp.noun_gryffindor_crest_1704953,
                                color: Color(0xff921922),
                                size: 40,

                              ),


                            ),
                          ),
                          Container(
                              width: 40,
                              height: 36,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0xff1d7452),
                                        Color(0xffdde5e5),
                                      ]
                                  )
                              ),
                              child: Tab(

                                //color: Colors.grey,
                                child:Icon(
                                  MyFlutterApp.noun_slytherin_crest_1704952,
                                  color: Color(0xff197350),
                                  size: 40,
                                ),

                              )
                          ),
                          Container(
                            width: 40,
                            height: 36,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff4a90ce),
                                      Color(0xff8a898f),

                                    ]
                                )
                            ),
                            child: Tab(


                              //
                              child:Icon(
                                MyFlutterApp.noun_ravenclaw_crest_1704954,
                                color: Color(0xff004a87),
                                size: 40,
                              ),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 36,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xfffed138),
                                      Color(0xff454643),

                                    ]
                                )
                            ),
                            child: Tab(
                              child:Icon(
                                MyFlutterApp.noun_hufflepuff_crest_1704951,
                                color: Color(0xffeda500),
                                size: 40,

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height:507 ,
                      child: TabBarView(
                          controller: controller,
                          children:[
                         /*   Expanded(
                              child: Center(
                                  child: ListView.builder(
                                      itemCount: item.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                            padding: EdgeInsets.fromLTRB(10, 8, 8, 10),
                                            child: Items(item: item[index])) ;
                                      })
                              ),
                            ),
                            Expanded(
                              child: Center(
                                  child: ListView.builder(
                                      itemCount: item.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                            padding: EdgeInsets.fromLTRB(10, 8, 8, 10),
                                            child: Items(item: item[index])) ;
                                      })),
                            ),
                            Expanded(
                              child: Center(
                                  child: ListView.builder(
                                      itemCount: item.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                            padding: EdgeInsets.fromLTRB(10, 8, 8, 10),
                                            child: Items(item: item[index])) ;
                                      })),
                            ),
                            Expanded(
                              child: Center(
                                  child: ListView.builder(
                                      itemCount: item.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                            padding: EdgeInsets.fromLTRB(10, 8, 8, 10),
                                            child: Items(item: item[index])) ;
                                      })),
                            ),*/
                            ListView.builder(
                                itemCount: item.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                      padding: EdgeInsets.fromLTRB(10, 8, 8, 10),
                                      child: Items(item: item[index])) ;
                                }),
                            ListView.builder(
                                itemCount: item.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                      padding: EdgeInsets.fromLTRB(10, 8, 8, 10),
                                      child: Items(item: item[index])) ;
                                }),
                            ListView.builder(
                                itemCount: item.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                      padding: EdgeInsets.fromLTRB(10, 8, 8, 10),
                                      child: Items(item: item[index])) ;
                                }),
                            ListView.builder(
                                itemCount: item.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                      padding: EdgeInsets.fromLTRB(10, 8, 8, 10),
                                      child: Items(item: item[index])) ;
                                }),
                          ]


                      ),
                    ),







                        ],
                      ),
                    )




            ],

          ),





  ]
        )
  ),

    );
  }
}
