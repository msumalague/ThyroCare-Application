import 'package:flutter/material.dart';

class Thyroid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final radius = MediaQuery.of(context).size.shortestSide * .4;
    final borderWidth = radius / 12;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF1CC8A5),
          centerTitle: true,
          title: Image.asset(
            'assets/images/banner.png',
            height: 50,
          ),
          toolbarHeight: 70,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
              child: Container(
                  child: SingleChildScrollView(
                      child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Overview',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontFamily: "Pacifico",
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.03),
                                Text(
                                  "What exactly is thyroid?",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.03),
                                Text(
                                    "   The thyroid gland is a small organ that’s located in the front of the neck, wrapped around the windpipe (trachea). "
                                    "It’s shaped like a butterfly, smaller in the middle with two wide wings that extend around the side of your throat. The thyroid is a gland. "
                                    "You have glands throughout your body, where they create and release substances that help your body do a specific thing. Your thyroid makes hormones that help control many vital functions of your body. "
                                    "\n\n   When your thyroid doesn’t work properly, it can impact your entire body. If your body makes too much thyroid hormone, you can develop a condition called hyperthyroidism. "
                                    "If your body makes too little thyroid hormone, it’s called hypothyroidism. Both conditions are serious and need to be treated by your healthcare provider.",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontFamily: 'Urbanist',
                                    ),
                                    textAlign: TextAlign.justify),
                                SizedBox(height: size.height * 0.03),
                                Text("What does the thyroid do?",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 20,
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(height: size.height * 0.03),
                                Text(
                                    "   Your thyroid has an important job to do within your body — releasing and controlling thyroid hormones that control metabolism. Metabolism is a process where the food you take into your body is transformed into energy. This energy is used throughout your entire body to keep many of your body’s systems working correctly. Think of your metabolism as a generator. It takes in raw energy and uses it to power something bigger."
                                    "\n\n   The thyroid controls your metabolism with a few specific hormones — T4 (thyroxine, contains four iodide atoms) and T3 (triiodothyronine, contains three iodide atoms). These two hormones are created by the thyroid and they tell the body’s cells how much energy to use. When your thyroid works properly, it will maintain the right amount of hormones to keep your metabolism working at the right rate. As the hormones are used, the thyroid creates replacements.",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontFamily: 'Urbanist',
                                    ),
                                    textAlign: TextAlign.justify),
                              ])))))
        ]));
  }
}
