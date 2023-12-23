import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialWidget extends StatelessWidget {
  final String placeholderText;
  final IconData iconData;
  final String link;

  const SocialWidget({
    Key? key,
    required this.placeholderText,
    required this.iconData,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Uri uri = Uri.parse(link); // Convert the String link to Uri
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        } else {
          // Fallback: Open the URL in the browser
          await launchUrl(uri);
        }
      },
      child: Icon(iconData),
    );
  }
}
