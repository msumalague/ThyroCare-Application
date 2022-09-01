import 'package:flutter/material.dart';

class TFT extends StatelessWidget {
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
                                  'Thyroid Functionality Test',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontFamily: "Pacifico",
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.03),
                                Text(
                                    "   Thyroid function tests are a series of measurements of different aspects of thyroid hormone presence in the blood stream. "
                                    "\n\n   A common panel of thyroid function tests consists of:"
                                    "\n   ● TSH"
                                    "\n   ● T3"
                                    "\n   ● TT4"
                                    "\n   ● T4U"
                                    "\n   ● FTI",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontFamily: 'Urbanist',
                                    ),
                                    textAlign: TextAlign.justify),
                                SizedBox(height: size.height * 0.03),
                                Text(
                                  "TSH (Thyroid Stimulating Hormone)",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.02),
                                Text(
                                    "    Because of the normal feed-back loop, TSH rises whenever the thyroid gland fails to produce sufficient thyroid hormone. "
                                    "\n\n   For the same reason, whenever there is too much thyroid hormone present in the serum, the brain responds by lowering the TSH."
                                    "\n\n   It is elevated in hyperthyroidism and depressed in hypothyroidism.",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontFamily: 'Urbanist',
                                    ),
                                    textAlign: TextAlign.justify),
                                SizedBox(height: size.height * 0.03),
                                Text(
                                  "T3 (Triiodothyronine, T3-RIA)",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.02),
                                Text(
                                    "    T3 is metabolically a more active form of thyroid hormone than T4, but its' effects are of shorter duration."
                                    "\n\n   It is elevated in hyperthyroidism and depressed in hypothyroidism. ",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontFamily: 'Urbanist',
                                    ),
                                    textAlign: TextAlign.justify),
                                SizedBox(height: size.height * 0.03),
                                Text(
                                  " TT4 (Total Thyroxine)",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.02),
                                Text(
                                    "   This is a measure of all of the active form of thyroid hormone in the blood. 95% of the total is bound to plasma proteins, particularly thyroid binding globulin (TBG). "
                                    "\n\n   It is elevated in hyperthyroidism and depressed in hypothyroidism. It is usually slightly elevated during pregnancy because of increased levels of TBG.",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontFamily: 'Urbanist',
                                    ),
                                    textAlign: TextAlign.justify),
                                SizedBox(height: size.height * 0.03),
                                Text(
                                  "T4U (Thyroxine Uptake)",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.02),
                                Text(
                                    "    A T4 test measures the amount of the T4 hormone in the blood. T4 is produced by the thyroid gland. "
                                    "\n\n   T4 levels are important, because T4 increases numerous enzymes that produce energy for the body.",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontFamily: 'Urbanist',
                                    ),
                                    textAlign: TextAlign.justify),
                                SizedBox(height: size.height * 0.03),
                                Text(
                                  "FTI (Free Thyroxine Index, FTI, T7)",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.02),
                                Text(
                                    "    The FTI is obtained by multiplying the (Total T4) times (T3 Uptake) to obtain an index."
                                    "\n\n   The FTI is considered a more reliable indicator of thyroid status in the presence of abnormalities in plasma protein binding."
                                    "\n\n   It is elevated in hyperthyroidism and depressed in hypothyroidism.",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontFamily: 'Urbanist',
                                    ),
                                    textAlign: TextAlign.justify),
                                SizedBox(height: size.height * 0.03),
                              ])))))
        ]));
  }
}
