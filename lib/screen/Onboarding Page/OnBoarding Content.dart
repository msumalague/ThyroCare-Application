import 'package:flutter/material.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents(
      {required this.title, required this.image, required this.desc});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Blood Test Feature",
    image: "assets/images/1.png",
    desc:
        "Determine whether you are hypothyroid, hyperthyroid or eurothyroid by using our blood test feature",
  ),
  OnboardingContents(
    title: "Track medication",
    image: "assets/images/2.png",
    desc:
        "Never forget to take your medication with our medicine scheduling system",
  ),
  OnboardingContents(
    title: "Simple UI",
    image: "assets/images/3.png",
    desc: "For enhanced reading experience",
  ),
];
