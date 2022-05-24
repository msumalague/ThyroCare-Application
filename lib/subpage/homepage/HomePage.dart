import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:thyroidclass/screen/components/TabButton.dart';
import 'package:thyroidclass/subpage/Bloodwork/BloodworkForm.dart';
import 'package:thyroidclass/subpage/homepage/HomeMedicine.dart';
import 'package:thyroidclass/subpage/homepage/HomeUpdateWeight.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            //color: Colors.red,
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
              Image.asset("assets/images/welcomethyrocare.jpg"),
              SizedBox(
                height: 1.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
                  child: new Column(children: <Widget>[
                    Text(
                      'How are you feeling today? Take a look and review the items listed below.',
                      style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 16,
                          color: Colors.black87),
                    ),
                  ])),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    TabBar(
                        controller: _tabController,
                        indicatorColor: Colors.teal,
                        labelColor: Colors.teal,
                        unselectedLabelColor: Colors.black54,
                        tabs: <Widget>[
                          Tab(
                            child: Text(
                              "Medicine",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Update Weight",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                    Container(
                        height: 300,
                        child: TabBarView(
                            controller: this._tabController,
                            children: [
                              HomeMedicine(),
                              HomeUpdateWeight(),
                            ]))
                  ])
            ]))));
  }
}
