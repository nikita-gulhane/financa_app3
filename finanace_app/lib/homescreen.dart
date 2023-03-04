import 'package:flutter/material.dart';
import 'package:finanace_app/firstscreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  var radius = Radius.circular(30);

  final List<Tab> tabs = <Tab>[
    new Tab(text: "All"),
    new Tab(text: "Income"),
    new Tab(text: "Expenses"),
  ];
  TabController? _tabController;
  @override
  void initState() {
    // generateImages();
    _tabController = new TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose(){
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#f4f0fd'),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black26,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black26,
            size: 30,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) =>FirstScreen()));
          },
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 20),
                  child: Text(
                    "Recent Transactions",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 100),
                  child: Text(
                    "See all",
                    style: TextStyle(color: Colors.deepPurple, fontSize: 15),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 130.0,top: 10),
              child: new TabBar(
                  isScrollable: true,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: new BubbleTabIndicator(
                      indicatorHeight: 25.0,
                      indicatorColor:HexColor('#12267a'),
                      tabBarIndicatorSize: TabBarIndicatorSize.label,
                    ),
                    tabs: tabs,
                    controller: _tabController,
                ),
            ),
            Expanded(
              child: new TabBarView(
                  controller: _tabController,
                  children: tabs.map((Tab tab){
                    return new Center(
                    // child : new Text("tab.text!",style: new TextStyle(fontSize: 20.0),),
                    );
                  }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 270),
              child: Text(
                "Today",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
              ),
              child: SizedBox(
                height: 80,
                width: 350,
                child: Container(
                  // margin: EdgeInsets.only(left: 20),
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
                                // color: Colors.black12,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.receipt_long_outlined,
                                    color: Colors.black26,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 88.0, bottom: 8, left: 8),
                                child: Text(
                                  "Payments",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Text(
                                  "Payement from Andrea",
                                  style: TextStyle(
                                      color: Colors.black12, fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 25),
                            child: Text(
                              "\$30.00",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:200.0),
              child: Container(
                padding: EdgeInsets.all(8), // Border width
                decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(40), // Image radius
                    child: Image.network('https://picsum.photos/200/300?random=3', fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120.0,bottom: 23),
              child: SizedBox(
                height: 50,
                width: 325,
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      },
                    child: Text("See Details", style: TextStyle(fontSize: 20)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor('#12267a'),
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

