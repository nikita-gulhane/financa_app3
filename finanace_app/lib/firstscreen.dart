import 'package:flutter/material.dart';
import 'package:finanace_app/homepage.dart';
import 'package:flutter_money/flutter_money.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:finanace_app/homescreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:HexColor('#f4f0fd') ,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(
                margin: EdgeInsets.only(left: 10),
                height: 350.0,
                width: 325.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,top: 20),
                          child: Icon(Icons.align_horizontal_left_outlined,color: Colors.black,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 240.0,top: 20),
                          child: Icon(Icons.more_vert,color: Colors.black,),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage("https://picsum.photos/200/300?random=2"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Column(
                          children:[
                            Text("Hira Riaz",style: TextStyle(color: Colors.purple,fontSize: 23,fontWeight: FontWeight.bold),),
                            Text("Ui/Ux Designer",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                          ]
                        ),
                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Container(
                        child: Column(
                          children: [
                            IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children:[
                                      Text("\$8900",style: TextStyle(color: Colors.purple,fontSize: 20),),
                                      Text("Income",style: TextStyle(fontSize: 15),),
                                    ]
                                  ),
                                  VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1, //thickness of divier line
                                  ),
                                  Column(
                                    children: [
                                      Text("\$5500",style: TextStyle(color: Colors.purple,fontSize: 20),),
                                      Text("Expenses",style: TextStyle(fontSize: 15),),
                                    ],
                                  ),
                                  VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1, //thickness of divier line
                                  ),
                                  Column(
                                    children: [
                                      Text("\$5500",style: TextStyle(color: Colors.purple,fontSize: 20),),
                                      Text("Loan",style: TextStyle(fontSize: 15),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 40),
              child: Row(
                children: [
                  Text("Overview",style: TextStyle(color: Colors.purple,fontSize: 25,fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){},
                    icon: Stack(
                      children: [
                        Icon(Icons.notifications_none_outlined,color: Colors.black12,size: 25,),
                        Positioned(
                            left: 14.0,
                            child: Icon(Icons.brightness_1,color: Colors.red,size: 9.0,) ),
                      ],

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:80.0),
                    child: Text("Sept 13,2020",style: TextStyle(color: Colors.purple),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Container(
                height: 80,
                width: 325,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 60,
                            // color: Colors.black26,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(Icons.arrow_upward,color: Colors.black,size: 30,),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 88.0,bottom: 8),
                              child: Text("Sent",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Sending Payments to Clients",style: TextStyle(color: Colors.black12,fontSize: 10),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60,top: 25),
                          child: Text("\$150",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Container(
                height: 80,
                width: 325,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 60,
                            // color: Colors.black26,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(Icons.arrow_downward,color: Colors.black,size: 30,),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 88.0,bottom: 8),
                              child: Text("Receive",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Receiving Salary from Company",style: TextStyle(color: Colors.black12,fontSize: 10),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45,top: 25),
                          child: Text("\$250",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Container(
                height: 80,
                width: 325,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 60,
                            // color: Colors.black26,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black,width: 2),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(child: Text("\$",style: TextStyle(color:Colors.black,fontSize: 20),)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 88.0,bottom: 8,left: 8),
                              child: Text("Loan",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Text("Loan for the Car",style: TextStyle(color: Colors.black12,fontSize: 10),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60,top: 25),
                          child: Text("\$400",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.home_outlined,size: 30,color: Colors.black12,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) =>HomeScreen()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.credit_card,size: 30,color: Colors.black12,
              ),
              onPressed: () {},
            ),
            Padding(
             padding: const EdgeInsets.only(left: 8.0),
             child: Container(
               height: 40,
               width: 40,
               decoration: BoxDecoration(
                   color: Colors.deepPurple,
                   borderRadius: BorderRadius.circular(10),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.add,color: Colors.white,size: 20,)
                 ],
               ),
             ),
           ),
            TextButton(onPressed:(){},
              child: Text("\$",style: TextStyle(color:Colors.black12,fontSize: 20)),),
            IconButton(
              icon: Icon(
                Icons.person_outline_outlined,color: Colors.black12,size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
