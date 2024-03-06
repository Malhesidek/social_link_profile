import 'package:flutter/material.dart';
import 'package:social_links_profile/constants.dart';
import 'package:social_links_profile/widgets/text_box.dart';

void main() {
  runApp(const SocialLink());
}

class SocialLink extends StatelessWidget {
  const SocialLink({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: const Color(0xff141414)),
      home: SafeArea(
        child: Scaffold(
          body: Center(
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10), color: const Color(0xff1F1F1F),),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(
                        'images/avatar.jpeg',
                        width: 120,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Jessica Rendall",
                    style: knameTextStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "London, United Kingdom",
                    style: klocationTextStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('"Developer and avid reader"', style: TextStyle(fontSize: 20),),
                  TextBox(
                      marginValue: kTextBoxMargin,
                      text: "GitHub",
                      url: 'https://github.com/'),
                  TextBox(
                      marginValue: kTextBoxMargin,
                      text: "LinkedIn",
                      url: 'https://ua.linkedin.com/'),
                  TextBox(
                      marginValue: kTextBoxMargin,
                      text: "Facebook",
                      url: 'https://www.facebook.com/'),
                  TextBox(
                      marginValue: kTextBoxMargin,
                      text: "Instagram",
                      url: 'https://www.instagram.com/'),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
