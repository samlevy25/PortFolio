import 'package:flutter/material.dart';
import 'package:portfolio/components/social_icon.dart';
import 'package:portfolio/utils.dart';

class SocialIconsBar extends StatelessWidget {
  const SocialIconsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 5,
      top: Utils.mdqh(context) * 0.2,
      child: SizedBox(
        height: 300,
        width: 35,
        child: Column(
          children: const [
            SocialIcon(
                imgURL:
                    'https://eager-williams-af0d00.netlify.app/assets/icons/icons8-linkedin-circled.gif'),
            SocialIcon(
                imgURL:
                    'https://eager-williams-af0d00.netlify.app/assets/icons/icons8-github.gif'),
          ],
        ),
      ),
    );
  }
}
