import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
          text: const TextSpan(children: [
        TextSpan(text: Text("FAFA")),
        TextSpan(text: Text("Wallbee"))
      ])),
    );
  }
}
