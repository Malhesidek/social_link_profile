import 'package:flutter/material.dart';
import 'package:social_links_profile/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TextBox extends StatelessWidget {
  final double marginValue;
  final String text;
  final String url;

  const TextBox({super.key, required this.marginValue, required this.text, required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launchUrlString(this.url),
      child: Column(
        children: [
          SizedBox(
            height: this.marginValue,
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xff333333),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            child: Text(
              this.text,
              style: kTextBoxTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
