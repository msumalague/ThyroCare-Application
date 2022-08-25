import 'package:flutter/material.dart';

class ThyDisease extends StatelessWidget {
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
                                  'Thyroid Disease',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontFamily: "Pacifico",
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.03),
                                Text(
                                  "What is thyroid disease?",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.03),
                                Text(
                                    "    Thyroid disease is a general term for a medical condition that keeps your thyroid from making the right amount of hormones. Your thyroid typically makes hormones that keep your body functioning normally. When the thyroid makes too much thyroid hormone, your body uses energy too quickly. This is called hyperthyroidism. Using energy too quickly will do more than make you tired — it can make your heart beat faster, cause you to lose weight without trying and even make you feel nervous. On the flip-side of this, your thyroid can make too little thyroid hormone. "
                                    "This is called hypothyroidism. When you have too little thyroid hormone in your body, it can make you feel tired, you might gain weight and you may even be unable to tolerate cold temperatures."
                                    "\n\n    These two main disorders can be caused by a variety of conditions. They can also be passed down through families (inherited).",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontFamily: 'Urbanist',
                                    ),
                                    textAlign: TextAlign.justify),
                                SizedBox(height: size.height * 0.03),
                                Text(
                                  "Who is affected by thyroid disease?",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.03),
                                Text(
                                    "   Thyroid disease can affect anyone — men, women, infants, teenagers and the elderly. It can be present at birth (typically hypothyroidism) and it can develop as you age (often after menopause in women)."
                                    "\n\n   Thyroid disease is very common, with an estimated 20 million people in the Unites States having some type of thyroid disorder. A woman is about five to eight times more likely to be diagnosed with a thyroid condition than a man."
                                    "\n\n   You may be at a higher risk of developing a thyroid disease if you:",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontFamily: 'Urbanist',
                                    ),
                                    textAlign: TextAlign.justify),
                                SizedBox(height: size.height * 0.01),
                                Text(
                                  "   ● Have a family history of thyroid disease."
                                  "\n   ● Have a medical condition."
                                  "\n   ● Take a medication that’s high in iodine."
                                  "\n   ● Are older than 60, especially in women."
                                  "\n   ● Have had treatment for a past thyroid condition or cancer.",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontFamily: 'Urbanist',
                                  ),
                                )
                              ])))))
        ]));
  }
}
