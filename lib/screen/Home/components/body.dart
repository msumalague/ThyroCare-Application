import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:thyroidclass/screen/Home/components/background.dart';
import 'package:thyroidclass/screen/NavigationBar.dart';
import 'package:thyroidclass/subpage/Bloodwork/Bloodwork.dart';
import 'package:thyroidclass/subpage/homepage/HomePage.dart';
import 'package:thyroidclass/subpage/Medicine/MedicinePage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tuple/tuple.dart';
import 'package:thyroidclass/subpage/Symptoms/SymptomsPage.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/banner.png',
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                )
              ],
            ),
            toolbarHeight: 80,
            centerTitle: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.white70, Colors.teal]),
              ),
            ),
            bottom: TabBar(
              //isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.local_hospital), text: 'Medicine'),
                Tab(icon: Icon(Icons.bloodtype), text: 'Bloodwork'),
                Tab(icon: Icon(Icons.find_in_page), text: 'Symptoms'),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          body: TabBarView(children: <Widget>[
            HomePage(),
            MedicinePage(),
            Bloodwork(),
            SymptomsPage(),
          ])));
}
