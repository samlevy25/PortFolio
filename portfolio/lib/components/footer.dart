import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('© 2021'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Developed and designed by Samuel Levy'),
          ],
        )
      ],
    );
  }
}
